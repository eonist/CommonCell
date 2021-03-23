#if os(iOS)
import UIKit
/**
 * Helper
 */
extension ActionCell {
   /**
    * Trick to deque based on Class.Type
    * - Fixme: ⚠️️ move to basecell?
    */
   public static func dequeue(table: UITableView, indexPath: IndexPath) -> Self {
      table.dequeueReusableCell(indexPath: indexPath) as Self
   }
}
#endif
