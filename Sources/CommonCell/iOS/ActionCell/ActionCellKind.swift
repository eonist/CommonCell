#if os(iOS)
import UIKit

/**
 * Protocol that defines the requirements for an action cell kind.
 * - Note: This protocol inherits from the BaseCellKind protocol.
 * - Fixme: ⚠️️ Consider moving this to `ReusableCellKind`.
 */
public protocol ActionCellKind: BaseCellKind {
   /**
    * The standard height of the ActionCell.
    */
   static var height: CGFloat { get }

   /**
    * Dequeues an ActionCell from the specified table view using its class type.
    * - Parameters:
    *   - table: The table view to dequeue the cell from.
    *   - indexPath: The index path of the cell to dequeue.
    * - Returns: The dequeued ActionCell instance.
    */
   static func dequeue(table: UITableView, indexPath: IndexPath) -> Self
}
#endif
