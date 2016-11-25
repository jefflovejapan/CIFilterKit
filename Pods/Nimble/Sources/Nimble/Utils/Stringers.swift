import Foundation


internal func identityAsString(_ value: AnyObject?) -> String {
    if let value = value {
        return NSString(format: "<%p>", unsafeBitCast(value, to: Int.self)).description
    } else {
        return "nil"
    }
}

internal func classAsString(_ cls: AnyClass) -> String {
#if _runtime(_ObjC)
    return NSStringFromClass(cls)
#else
    return String(cls)
#endif
}

internal func arrayAsString<T>(_ items: [T], joiner: String = ", ") -> String {
    return items.reduce("") { accum, item in
        let prefix = (accum.isEmpty ? "" : joiner)
        return accum + prefix + "\(stringify(item))"
    }
}

/// A type with a customized test output text representation.
///
/// This textual representation is produced when values will be
/// printed in test runs, and may be useful when producing
/// error messages in custom matchers.
///
/// - SeeAlso: `CustomDebugStringConvertible`
public protocol TestOutputStringConvertible {
    var testDescription: String { get }
}

extension Double: TestOutputStringConvertible {
    public var testDescription: String {
        return NSNumber(value: self as Double).testDescription
    }
}

extension Float: TestOutputStringConvertible {
    public var testDescription: String {
        return NSNumber(value: self as Float).testDescription
    }
}

extension NSNumber: TestOutputStringConvertible {
    // This is using `NSString(format:)` instead of
    // `String(format:)` because the latter somehow breaks
    // the travis CI build on linux.
    public var testDescription: String {
        let description = self.description
        
        if description.contains(".") {
            // Travis linux swiftpm build doesn't like casting String to NSString,
            // which is why this annoying nested initializer thing is here.
            // Maybe this will change in a future snapshot.
            let decimalPlaces = NSString(string: NSString(string: description)
                .components(separatedBy: ".")[1])
            
            if decimalPlaces.length > 4 {
                return NSString(format: "%0.4f", self.doubleValue).description
            }
        }
        return self.description
    }
}

extension Array: TestOutputStringConvertible {
    public var testDescription: String {
        let list = self.map(Nimble.stringify).joined(separator: ", ")
        return "[\(list)]"
    }
}

extension AnySequence: TestOutputStringConvertible {
    public var testDescription: String {
        let generator = self.makeIterator()
        var strings = [String]()
        var value: AnySequence.Iterator.Element?
        
        repeat {
            value = generator.next()
            if let value = value {
                strings.append(stringify(value))
            }
        } while value != nil
        
        let list = strings.joined(separator: ", ")
        return "[\(list)]"
    }
}

extension NSArray: TestOutputStringConvertible {
    public var testDescription: String {
        let list = Array(self).map(Nimble.stringify).joined(separator: ", ")
        return "(\(list))"
    }
}

extension IndexSet: TestOutputStringConvertible {
    public var testDescription: String {
        let list = Array(self).map(Nimble.stringify).joined(separator: ", ")
        return "(\(list))"
    }
}

extension String: TestOutputStringConvertible {
    public var testDescription: String {
        return self
    }
}

extension Data: TestOutputStringConvertible {
    public var testDescription: String {
        #if os(Linux)
            // FIXME: Swift on Linux triggers a segfault when calling NSData's hash() (last checked on 03-11-16)
            return "NSData<length=\(self.length)>"
        #else
            return "NSData<hash=\((self as NSData).hash),length=\(self.count)>"
        #endif
    }
}

///
/// Returns a string appropriate for displaying in test output
/// from the provided value.
///
/// - parameter value: A value that will show up in a test's output.
///
/// - returns: The string that is returned can be
///     customized per type by conforming a type to the `TestOutputStringConvertible`
///     protocol. When stringifying a non-`TestOutputStringConvertible` type, this
///     function will return the value's debug description and then its
///     normal description if available and in that order. Otherwise it
///     will return the result of constructing a string from the value.
///
/// - SeeAlso: `TestOutputStringConvertible`

public func stringify<T>(_ value: T) -> String {
    if let value = value as? TestOutputStringConvertible {
        return value.testDescription
    }
    
    if let value = value as? CustomDebugStringConvertible {
        return value.debugDescription
    }
    
    return String(describing: value)
}

/// -SeeAlso: `stringify<T>(value: T)`

public func stringify<T>(_ value: T?) -> String {
    if let unboxed = value {
        return stringify(unboxed)
    }
    return "nil"
}

#if _runtime(_ObjC)
@objc open class NMBStringer: NSObject {
    
    @objc open class func stringify(_ obj: AnyObject?) -> String {
        return Nimble.stringify(obj)
    }
}
#endif
