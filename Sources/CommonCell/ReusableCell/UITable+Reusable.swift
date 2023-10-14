#if os(iOS)
import UIKit
/**
 * - Fixme: ⚠️️ Maybe use a protocol and merge similar collectionview + table code
 */
extension UITableView {
   /**
    * Registers a reusable cell type with the table view.
    * - Parameter T: The cell type to register. Must conform to the `ReusableCellKind` protocol.
    *                The default reuse identifier for the cell type will be used.
    * - Note: To register multiple cell types at once, use the `register(_:)` method instead.
    *         See the `TestRunner` class for an example of how to do this.
    * - SeeAlso: `register(_:)`
    * - Example: `tableView.register(CustomCell.self)`
    */
   public func register<T: UITableViewCell>(_: T.Type) where T: ReusableCellKind {
      register(T.self, forCellReuseIdentifier: T.defaultReuseIdentifier)
   }
   /**
    * Adds support for registering multiple reusable cells at once.
    * - Parameter types: An array of `ReusableCellKind.Type` objects representing the cell types to register.
    *                    Each type must conform to the `ReusableCellKind` protocol.
    *                    The default reuse identifier for each cell type will be used.
    */
   public func register(_ types: [ReusableCellKind.Type]) {
      types.forEach { register($0.self, forCellReuseIdentifier: $0.defaultReuseIdentifier) }
   }
   /**
    * Dequeues a reusable cell of the specified type from the table view.
    * - Parameter T: The cell type to dequeue. Must conform to the `ReusableCellKind` and `NibLoadableView` protocols.
    * - Fixme: ⚠️️ Add `_ type: T? = nil` to the parameter list to improve clarity.
    * - Returns: A dequeued cell of the specified type.
    * - Note: The cell type must be registered with the table view before calling this method.
    * - Example: `let cell: CustomCell = tableView.dequeue()`
    */
   public func dequeue<T: UITableViewCell>() -> T where T: ReusableCellKind, T: NibLoadableView {
      dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier) as! T
   }
   /**
    * Dequeues a reusable cell of the specified type from the table view.
    * - Parameter T: The cell type to dequeue. Must conform to the `ReusableCellKind` protocol.
    * - Fixme: ⚠️️ Add `_ type: T? = nil` to the parameter list to improve clarity.
    * - Returns: A dequeued cell of the specified type, or `nil` if no cell could be dequeued.
    * - Note: The cell type must be registered with the table view before calling this method.
    * - Example: `let cell: CustomCell? = tableView.dequeue()`
    */
   public func dequeue<T: UITableViewCell>() -> T where T: ReusableCellKind {
      dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier) as! T
   }
}
/**
 * Adds indexPath support
 */
extension UITableView {
   /**
    * Dequeues a reusable cell of the specified type from the table view.
    * - Parameter indexPath: The index path specifying the location of the cell in the table view.
    * - Returns: A dequeued cell of the specified type, or `nil` if no cell could be dequeued.
    * - Note: The cell type must be registered with the table view before calling this method.
    * - Example: `let cell: CustomCell? = tableView.dequeue(indexPath: indexPath)`
    */
   public func dequeue<T: UITableViewCell>(indexPath: IndexPath) -> T where T: ReusableCellKind {
      dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier, for: indexPath) as! T
   }
   /**
    * Dequeues a reusable cell of the specified type from the table view.
    * - Parameter indexPath: The index path specifying the location of the cell in the table view.
    * - Returns: A dequeued cell of the specified type.
    * - Note: The cell type must be registered with the table view before calling this method.
    * - Example: `let cell: CustomCell = tableView.dequeue(indexPath: indexPath)`
    */
   public func dequeue<T: UITableViewCell>(indexPath: IndexPath) -> T where T: ReusableCellKind, T: NibLoadableView {
      dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier, for: indexPath) as! T
   }
}
/**
 * Support for Nib
 */
extension UITableView {
   /**
    * Dequeues a reusable cell of the specified type from the table view.
    * - Parameter type: The cell type to dequeue. Must conform to the `ReusableCellKind` and `NibLoadableView` protocols.
    * - Returns: A dequeued cell of the specified type.
    * - Note: The cell type must be registered with the table view before calling this method.
    * ## Examples:
    * let cell: CustomCell = collectionView.dequeueReusableCell()
    */
   public func dequeue<T: UITableViewCell>(_ type: T.Type) -> T where T: ReusableCellKind, T: NibLoadableView {
      dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier) as! T
   }
   /**
    * Registers a reusable cell type with the table view.
    * - Parameter T: The cell type to register. Must conform to the `ReusableCellKind` and `NibLoadableView` protocols.
    * - Note: The cell type's nib file must be located in the same bundle as the cell type's class.
    * - Example: `tableView.register(CustomCell.self)`
    */
   public func register<T: UITableViewCell>(_: T.Type) where T: ReusableCellKind, T: NibLoadableView {
      let bundle = Bundle(for: T.self)
      let nib = UINib(nibName: T.nibName, bundle: bundle)
      register(nib, forCellReuseIdentifier: T.defaultReuseIdentifier)
   }
}
// Deprecated ⚠️️
extension UITableView {
   @available(*, deprecated, renamed: "dequeue")
   public func dequeueReusableCell<T: UITableViewCell>() -> T where T: ReusableCellKind, T: NibLoadableView {
      dequeue()
   }
   @available(*, deprecated, renamed: "dequeue")
   public func dequeueReusableCell<T: UITableViewCell>() -> T where T: ReusableCellKind {
      dequeue()
   }
   @available(*, deprecated, renamed: "dequeue")
   public func dequeueReusableCell<T: UITableViewCell>(indexPath: IndexPath) -> T where T: ReusableCellKind {
      dequeue(indexPath: indexPath)
   }
   @available(*, deprecated, renamed: "dequeue")
   public func dequeueReusableCell<T: UITableViewCell>(indexPath: IndexPath) -> T where T: ReusableCellKind, T: NibLoadableView {
      dequeue(indexPath: indexPath)
   }
   @available(*, deprecated, renamed: "dequeue")
   public func dequeueReusableCell<T: UITableViewCell>(_ type: T.Type) -> T where T: ReusableCellKind, T: NibLoadableView {
      dequeue(type)
   }
}
#endif
