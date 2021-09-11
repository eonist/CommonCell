#if os(iOS)
import UIKit

extension StickieTable {
   /**
    * Used to make the NavBar stick to the tableView
    * - Note: Calls a callback that notifies external UI elements to reposition etc
    * - Note: You can get the statusBarHeight from UIApplication.shared.statusBarFrame.height if you also want to hide the statusbar
    */
   @objc open func scrollViewDidScroll(_ scrollView: UIScrollView) {
      onVerticalScroll(scrollView.contentOffset.y)
   }
}
#endif
