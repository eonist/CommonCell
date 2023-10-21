#if os(iOS)
import UIKit
/**
 * An extension that provides bulk functionality for registering reusable collection view cells.
 *
 * - Remark: This extension allows multiple cell types to be registered with a collection view at once.
 * - Example: `collectionView.register([CustomCell.self, AnotherCustomCell.self])` to register multiple custom cells with a collection view.
 */
extension UICollectionView {
   /**
    * Registers a reusable collection view cell with the specified type.
    *
    * - Parameter _: The type of the reusable collection view cell to register.
    * - Remark: This method simplifies the process of registering a reusable collection view cell with a collection view.
    * - Example: `collectionView.register(CustomCell.self)` to register a custom reusable collection view cell.
    */
   public func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableCellKind {
      register(T.self, forCellWithReuseIdentifier: T.defaultReuseIdentifier)
   }
   /**
    * Registers all cell types in the array with the specified collection view.
    *
    * - Parameter types: The class types to register with the collection view.
    * - Remark: This method simplifies the process of registering multiple reusable collection view cells with a collection view.
    */
   public func register(_ types: [ReusableCellKind.Type]) {
      types.forEach { register($0.self, forCellWithReuseIdentifier: $0.defaultReuseIdentifier) }
   }
}
/**
 * Adds indexPath support
 */
extension UICollectionView {
   /**
    * Dequeues a reusable collection view cell with the specified type and index path.
    *
    * - Remark: This method simplifies the process of dequeuing a reusable collection view cell with a collection view.
    *
    * ## Examples
    * let cell: CustomCell = collectionView.dequeueReusableCell(.init(row: 0, section: 0))
    *
    * - Parameter indexPath: The index path of the cell to dequeue.
    * - Remark: This parameter specifies the location of the cell in the collection view.
    *
    * - Returns: The dequeued reusable collection view cell with the specified type and index path.
    * - Remark: This method returns the dequeued cell with the specified type and index path.
    * - Fixme: ⚠️️ This method should return an optional to handle cases where the cell cannot be dequeued.
    */
   public func dequeue<T: UICollectionViewCell>(indexPath: IndexPath) -> T where T: ReusableCellKind {
      dequeueReusableCell(withReuseIdentifier: T.defaultReuseIdentifier, for: indexPath) as! T
   }
   /**
    * Dequeues a reusable collection view cell with the specified type and index path.
    *
    * - Remark: This method simplifies the process of dequeuing a reusable collection view cell with a collection view.
    *
    * ## Examples
    * ```
    * let cell: CustomCell? = collectionView.dequeueReusableCell(.init(row: 0, section: 0))
    * ```
    *
    * - Parameter indexPath: The index path of the cell to dequeue.
    * - Remark: This parameter specifies the location of the cell in the collection view.
    *
    * - Returns: The dequeued reusable collection view cell with the specified type and index path, or nil if the cell cannot be dequeued.
    * - Remark: This method returns the dequeued cell with the specified type and index path, or nil if the cell cannot be dequeued.
    * - Fixme: ⚠️️ This method should return an optional to handle cases where the cell cannot be dequeued.
    * - Remark: This method requires the cell type to conform to both the `ReusableCellKind` and `NibLoadableView` protocols.
    * - Remark: The `NibLoadableView` protocol is required to load the cell from a nib file.
    */
   public func dequeue<T: UICollectionViewCell>(indexPath: IndexPath) -> T? where T: ReusableCellKind, T: NibLoadableView {
      dequeueReusableCell(withReuseIdentifier: T.defaultReuseIdentifier, for: indexPath) as? T
   }
}
// DEPRECATED ⚠️️
extension UICollectionView {
   // DEPRECATED ⚠️️
   @available(*, deprecated, renamed: "dequeue")
   public func dequeueReusableCell<T: UICollectionViewCell>(indexPath: IndexPath) -> T where T: ReusableCellKind {
      self.dequeue(indexPath: indexPath)
   }
   // DEPRECATED ⚠️️
   @available(*, deprecated, renamed: "dequeue")
   public func dequeueReusableCell<T: UICollectionViewCell>(indexPath: IndexPath) -> T where T: ReusableCellKind, T: NibLoadableView {
      self.dequeue(indexPath: indexPath)
   }
}
#endif
