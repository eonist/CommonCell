#if os(macOS)
import Cocoa

extension BasicTable {
   /**
    * - Note: We dequeue based on cell class types stored in the sections array
    */
   @objc open func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
      fatalError("⚠️️ Must be implemented by subclass")
   }
   /**
    * Returns row count in a section
    */
   @objc open func numberOfRows(in tableView: NSTableView) -> Int {
      fatalError("⚠️️ Must be implemented by subclass")
   }
   /**
    * Row-height (the height of each cell)
    */
   @objc open func tableView(_ tableView: NSTableView, heightOfRow row: Int) -> CGFloat {
      fatalError("⚠️️ Must be implemented by subclass")
   }
}
#endif
