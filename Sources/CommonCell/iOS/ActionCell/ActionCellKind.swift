#if os(iOS)
import UIKit
/**
 * - Fixme: ⚠️️ Should be moved to `ReuasableCellKind etc?
 */
public protocol ActionCellKind: BaseCellKind {
   /**
    * Height of cell
    */
   static var height: CGFloat { get }
   /**
    * dequeue self
    */
   static func dequeue(table: UITableView, indexPath: IndexPath) -> Self
}
#endif
