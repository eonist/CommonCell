import UIKit
/**
 * Helper
 */
extension ActionCell {
   /**
    * Trick to deque based on Class.Type
    */
   public static func dequeue(table: UITableView, indexPath: IndexPath) -> Self {
      table.dequeueReusableCell(indexPath: indexPath) as Self
   }
}
