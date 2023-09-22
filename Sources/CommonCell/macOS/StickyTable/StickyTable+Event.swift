#if os(macOS)
import Foundation

extension StickyTable {
   /**
    * Method that is called when the bounds of the table view's content view change.
    * - Note: This method is used to make the `NavBar` stick to the tableView.
    * - Remark: Calls a callback that notifies external UI elements to reposition etc.
    * - Remark: The boundsChange was the most consistent way to detect table motion, including elastic scrolling.
    */
   @objc func boundsChange() {
      onVerticalScroll(self.contentView.bounds.origin.y) // Call the callback with the new vertical scroll offset
   }
}
#endif