#if os(iOS)
import UIKit

extension StickyTable {
   /**
    * Used to make the `NavBar` stick to the tableView
    * - Remark: Calls a callback that notifies external UI elements to reposition etc
    * - Remark: You can get the statusBarHeight from `UIApplication.shared.statusBarFrame.height if you also want to hide the statusbar
    * - Parameter scrollView: - Fixme: ⚠️️ add doc
    */
   @objc open func scrollViewDidScroll(_ scrollView: UIScrollView) {
      onVerticalScroll(scrollView.contentOffset.y)
   }
}
#endif
