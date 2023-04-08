#if os(macOS)
import Cocoa

extension BasicTable {
   /**
    * - Remark: We dequeue based on cell class types stored in the sections array
    * - Parameters:
    *   - tableView: - Fixme: ⚠️️ add doc
    *   - tableColumn: - Fixme: ⚠️️ add doc
    *   - row: - Fixme: ⚠️️ add doc
    * - Returns: - Fixme: ⚠️️ add doc
    */
   @objc open func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
      Swift.print("⚠️️ Must be implemented by subclass")
      return nil
   }
   /**
    * Returns row count in a section
    * - Parameter tableView: - Fixme: ⚠️️ add doc
    */
   @objc open func numberOfRows(in tableView: NSTableView) -> Int {
      Swift.print("⚠️️ Must be implemented by subclass")
      return .zero
   }
   /**
    * Returns row-height (the height of each cell)
    * - Parameters:
    *   - tableView: - Fixme: ⚠️️ add doc
    *   - row: - Fixme: ⚠️️ add doc
    */
   @objc open func tableView(_ tableView: NSTableView, heightOfRow row: Int) -> CGFloat {
      Swift.print("⚠️️ Must be implemented by subclass")
      return .zero
   }
}
#endif
