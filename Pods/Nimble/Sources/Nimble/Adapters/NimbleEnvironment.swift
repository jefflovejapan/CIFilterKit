import Foundation

/// "Global" state of Nimble is stored here. Only DSL functions should access / be aware of this
/// class' existance
internal class NimbleEnvironment {
    static var activeInstance: NimbleEnvironment {
        get {
            let env = Thread.current.threadDictionary["NimbleEnvironment"]
            if let env = env as? NimbleEnvironment {
                return env
            } else {
                let newEnv = NimbleEnvironment()
                self.activeInstance = newEnv
                return newEnv
            }
        }
        set {
            Thread.current.threadDictionary["NimbleEnvironment"] = newValue
        }
    }

    // TODO: eventually migrate the global to this environment value
    var assertionHandler: AssertionHandler {
        get { return NimbleAssertionHandler }
        set { NimbleAssertionHandler = newValue }
    }

#if _runtime(_ObjC)
    var awaiter: Awaiter

    init() {
        awaiter = Awaiter(
            waitLock: AssertionWaitLock(),
            asyncQueue: DispatchQueue.main,
            timeoutQueue: DispatchQueue.global(priority: DispatchQueue.GlobalQueuePriority.high))
    }
#endif
}
