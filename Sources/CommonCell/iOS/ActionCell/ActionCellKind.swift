#if os(iOS)
import UIKit
/**
 * - Fixme: ⚠️️ Should be moved to `ReuasableCellKind etc?
 */
public protocol ActionCellKind: BaseCellKind {
   static var height: CGFloat { get } // Height of cell
   static func dequeue(table: UITableView, indexPath: IndexPath) -> Self // dequeue self
}
#endif
