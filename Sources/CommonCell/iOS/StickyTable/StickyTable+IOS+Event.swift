#if os(iOS)
import UIKit

extension StickyTable {
   /**
    * Method that is called when the table view is scrolled.
    * - Note: This method is used to make the `NavBar` stick to the tableView.
    * - Remark: Calls a callback that notifies external UI elements to reposition etc.
    * - Remark: You can get the statusBarHeight from `UIApplication.shared.statusBarFrame.height` if you also want to hide the statusbar.
    * - Parameter scrollView: The UIScrollView instance that the user scrolled. In this case, it's the StickyTable instance.
    */
   @objc open func scrollViewDidScroll(_ scrollView: UIScrollView) {
      onVerticalScroll(scrollView.contentOffset.y)
   }
}
#endif