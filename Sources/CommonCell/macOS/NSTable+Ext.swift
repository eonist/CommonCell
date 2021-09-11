#if os(macOS)
import Cocoa

extension NSTableView {
   /**
    * Returns all cells in a table
    * ## Examples:
    * tableView.cells // array of cells in a tableview
    */
   public var cells: [NSTableCellView] {
      (0..<self.numberOfRows).indices.compactMap {
         self.view(atColumn: 0, row: $0, makeIfNecessary: false) as? NSTableCellView
      }
   }
}
#endif
