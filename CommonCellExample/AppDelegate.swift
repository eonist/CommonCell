import UIKit

@UIApplicationMain
/**
 * The AppDelegate class that is responsible for managing the app's lifecycle.
 * - Fixme: Consider adding more detailed comments about the app's lifecycle and responsibilities.
 */
class AppDelegate: UIResponder, UIApplicationDelegate {
   /**
    * The app's main window.
    * - Note: This window contains the app's root view controller and is responsible for displaying the app's user interface.
    */
   lazy var window: UIWindow? = {
      let win = UIWindow(frame: UIScreen.main.bounds)
      let vc = MainVC()
      win.rootViewController = vc
      win.makeKeyAndVisible() // Important since we have no Main storyboard anymore
      return win
   }()
   /**
    * Called when the app finishes launching.
    * - Parameters:
    *   - application: The singleton app object.
    *   - launchOptions: A dictionary indicating the reason the app was launched (if any).
    * - Returns: true if the app launched successfully, false otherwise.
    */
   func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      _ = window
      return true
   }
}
/**
 * The main view controller of the app.
 * - Note: This controller manages the app's main view and is responsible for handling user interactions and updating the view.
 */
class MainVC: UIViewController {
   override func viewDidLoad() {
      super.viewDidLoad()
      view = MainView()
      view.backgroundColor = .orange
   }
   /**
    * Returns a Boolean value indicating whether the view controller prefers the status bar to be hidden or shown.
    * - Returns: true if the status bar should be hidden, false otherwise.
    */
   override var prefersStatusBarHidden: Bool { false }
}
/**
 * The main view of the app.
 * - Note: This view displays the app's user interface and is responsible for rendering the app's content.
 */
class MainView: UIView {
   override init(frame: CGRect) {
      super.init(frame: frame)
      let data: TextCellData = .init(description: "", content: "")
      _ = data
      // - Fixme: ⚠️️ add table and the textcell?
   }
   /**
    * Required initializer that is not implemented.
    * - Note: This implementation is marked as unavailable to avoid subsequent warnings to implement this.
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
