#if os(macOS)
import Cocoa
/**
 * Static util methods
 * - Fixme: ⚠️️ move to commonCell? and add OS speccific closure?
 */
public enum InputCellHelper {
   /**
    * Cell for title
    */
   public static func getCell<T: NSTableView>(table: T, title: String) -> NSTableCellView? {
      func closure(element: NSTableCellView) -> Bool {
         guard let inputCellKind: InputCellKind = element as? InputCellKind else { return false }
         return inputCellKind.titleText?.lowercased() == title.lowercased()
      }
      return table.cells.first(where: closure)
   }
   /**
    * Value for title
    */
   public static func getCellValue<T: NSTableView>(table: T, title: String) -> String? {
      (getCell(table: table, title: title) as? InputCellKind)?.inputText
   }
}
#endif
