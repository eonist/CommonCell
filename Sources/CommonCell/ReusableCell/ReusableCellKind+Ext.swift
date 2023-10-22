#if os(iOS)
import UIKit

extension ReusableCellKind where Self: UIView {
   /**
    * The default reuse identifier for the reusable cell.
    * - Remark: This implementation assumes that the reuse identifier is the same as the name of the cell class.
    */
   public static var defaultReuseIdentifier: String {
      String(describing: self)
   }
}
/**
 * An extension that provides bulk functionality for registering reusable table view cells.
 * - Remark: This extension allows multiple cell types to be registered with a table view at once.
 * - Example: `[CustomCell.self, AnotherCustomCell.self].register(tableView)` to register multiple custom cells with a table view.
 */
extension Array where Element == ReusableCellKind.Type {
   /**
    * Registers all cell types in the array with the specified table view.
    * - Parameter table: The table view to register the cell types with.
    */
   public func register(_ table: UITableView) {
      table.register(self)
   }
}
#endif
