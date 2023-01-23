#if os(macOS)
import Foundation

extension StickyTable {
   /**
    * Used to make the `NavBar stick to the tableView
    * - Note: Calls a callback that notifies external UI elements to reposition etc
    * - Note: The boundsChange was the most consisten way to detect table motion, the scrollwheel method didn't detect the elastic motion etc
    */
   @objc func boundsChange() {
      onVerticalScroll(self.contentView.bounds.origin.y) // Call the call-back
   }
}
#endif
