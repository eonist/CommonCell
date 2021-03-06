#if os(iOS)
import UIKit
/**
 * - Fixme: ⚠️️ Make this a BaseTableKind protocol instead
 */
extension BaseTable {
   /**
    * Returns row count in a section
    */
   open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      fatalError("⚠️️ must be implemented by subclass")
   }
   /**
    * - Note: We dequeue based on cell class types stored in the sections array
    */
   open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      fatalError("⚠️️ must be implemented by subclass")
   }
   /**
    * Returns the height of each cell
    */
   open func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      fatalError("⚠️️ must be implemented by subclass")
   }
}
#endif
