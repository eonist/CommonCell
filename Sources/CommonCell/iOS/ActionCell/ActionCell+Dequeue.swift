#if os(iOS)
import UIKit

/**
 * Extension that provides a helper method for dequeuing an ActionCell based on its class type.
 */
extension ActionCell {
   
   /**
    * Dequeues an ActionCell from the specified table view using its class type.
    * - Parameters:
    *   - table: The table view to dequeue the cell from.
    *   - indexPath: The index path of the cell to dequeue.
    * - Returns: The dequeued ActionCell instance.
    */
   public static func dequeue(table: UITableView, indexPath: IndexPath) -> Self {
      table.dequeue(indexPath: indexPath) as Self
   }
}
#endif