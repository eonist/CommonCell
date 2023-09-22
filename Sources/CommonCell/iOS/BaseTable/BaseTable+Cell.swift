#if os(iOS)
import UIKit

/**
 * Extension that provides default implementations of the UITableViewDataSource and UITableViewDelegate methods for the BaseTable class.
 * - Fixme: Consider making this a `BaseTableKind` protocol instead.
 */
extension BaseTable {
   /**
    * Returns the number of rows in the specified section.
    * - Note: This method must be overridden by subclasses.
    */
   open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      fatalError("This method must be implemented by subclass")
   }
   /**
    * Returns the cell at the specified index path.
    * - Note: This method dequeues cells based on cell class types stored in the sections array and must be overridden by subclasses.
    */
   open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      fatalError("This method must be implemented by subclass")
   }
   /**
    * Returns the height of the cell at the specified index path.
    * - Note: This method must be overridden by subclasses.
    */
   open func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      fatalError("This method must be implemented by subclass")
   }
}
#endif