#if os(iOS)
import UIKit
/**
 * Helper
 */
extension ActionCell {
   /**
    * Trick to deque based on Class.Type
    * - Fixme: ⚠️️ Move to basecell? 👈
    * - Parameters:
    *   - table: - Fixme: ⚠️️ add doc
    *   - indexPath: - Fixme: ⚠️️ add doc
    * - Returns: - Fixme: ⚠️️ add doc
    */
   public static func dequeue(table: UITableView, indexPath: IndexPath) -> Self {
      table.dequeue(indexPath: indexPath) as Self
   }
}
#endif
