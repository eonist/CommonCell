#if os(iOS)
import UIKit

extension ReusableCellKind where Self: UIView {
   /**
    * The default reuse-identifier for a cell
    */
   public static var defaultReuseIdentifier: String {
      String(describing: self)
   }
}
/**
 * Bulk functionality (convenience)
 */
extension Array where Element == ReusableCellKind.Type {
   /**
    * # Examples:
    * [A.self, B.self].register(self)
    * - Parameter table: - Fixme: ⚠️️ doc
    */
   public func register(_ table: UITableView) {
      table.register(self)
   }
}
#endif
