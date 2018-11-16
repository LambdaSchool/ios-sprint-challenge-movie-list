import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }
    
    // restore the previous version when launching the application
    func application(_ application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool {
        
        // always save state information
        return true
    }
    
    func application(_ application: UIApplication, shouldRestoreApplicationState coder: NSCoder) -> Bool {
        
        // Do not restore from old data
        return false
    }
}
