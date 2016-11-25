import Foundation
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}

fileprivate func >= <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l >= r
  default:
    return !(lhs < rhs)
  }
}


/// A Nimble matcher that succeeds when the actual value is greater than
/// or equal to the expected value.
public func beGreaterThanOrEqualTo<T: Comparable>(_ expectedValue: T?) -> NonNilMatcherFunc<T> {
    return NonNilMatcherFunc { actualExpression, failureMessage in
        failureMessage.postfixMessage = "be greater than or equal to <\(stringify(expectedValue))>"
        let actualValue = try actualExpression.evaluate()
        return actualValue >= expectedValue
    }
}

/// A Nimble matcher that succeeds when the actual value is greater than
/// or equal to the expected value.
public func beGreaterThanOrEqualTo<T: NMBComparable>(_ expectedValue: T?) -> NonNilMatcherFunc<T> {
    return NonNilMatcherFunc { actualExpression, failureMessage in
        failureMessage.postfixMessage = "be greater than or equal to <\(stringify(expectedValue))>"
        let actualValue = try actualExpression.evaluate()
        let matches = actualValue != nil && actualValue!.NMB_compare(expectedValue) != ComparisonResult.orderedAscending
        return matches
    }
}

public func >=<T: Comparable>(lhs: Expectation<T>, rhs: T) {
    lhs.to(beGreaterThanOrEqualTo(rhs))
}

public func >=<T: NMBComparable>(lhs: Expectation<T>, rhs: T) {
    lhs.to(beGreaterThanOrEqualTo(rhs))
}

#if _runtime(_ObjC)
extension NMBObjCMatcher {
    public class func beGreaterThanOrEqualToMatcher(_ expected: NMBComparable?) -> NMBObjCMatcher {
        return NMBObjCMatcher(canMatchNil: false) { actualExpression, failureMessage in
            let expr = actualExpression.cast { $0 as? NMBComparable }
            return try! beGreaterThanOrEqualTo(expected).matches(expr, failureMessage: failureMessage)
        }
    }
}
#endif
