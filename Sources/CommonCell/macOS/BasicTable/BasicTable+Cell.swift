#if os(macOS)
import Cocoa

extension BasicTable {
   /**
    * Returns the view that is associated with the specified table column and row.
    * - Note: This method dequeues cells based on cell class types stored in the sections array and must be overridden by subclasses.
    * - Parameters:
    *   - tableView: The table view that sent the message.
    *   - tableColumn: The table column to associate with the new cell.
    *   - row: The row in tableView to associate with the new cell.
    * - Returns: The view object the table view uses for the specified row and column. 
    */
   @objc open func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
      Swift.print("⚠️️ This method must be implemented by subclass")
      return nil
   }
   /**
    * Returns the number of rows in tableView.
    * - Note: This method must be overridden by subclasses.
    * - Parameter tableView: The table view that sent the message.
    * - Returns: The number of rows in tableView.
    */
   @objc open func numberOfRows(in tableView: NSTableView) -> Int {
      Swift.print("⚠️️ This method must be implemented by subclass")
      return .zero
   }
   /**
    * Returns the height of the row at the specified index in tableView.
    * - Note: This method must be overridden by subclasses.
    * - Parameters:
    *   - tableView: The table view that sent the message.
    *   - row: The index of the row to get the height for.
    * - Returns: The height of the row (in points).
    */
   @objc open func tableView(_ tableView: NSTableView, heightOfRow row: Int) -> CGFloat {
      Swift.print("⚠️️ This method must be implemented by subclass")
      return .zero
   }
}
#endif
