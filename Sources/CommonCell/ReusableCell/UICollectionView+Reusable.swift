#if os(iOS)
import UIKit
/**
 * Cell registration helper
 */
extension UICollectionView {
	/**
	 * ## Examples:
	 * tableView.register(CustomCell.self)
	 */
	public func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableCellKind {
		register(T.self, forCellWithReuseIdentifier: T.defaultReuseIdentifier)
	}
   /**
    * Adds support for registering multiple cells
    * ## Examples:
    * tableView.register([HCell.self, VCell.self])
    * - Parameter types: - Fixme: ⚠️️ add doc
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
    * - Fixme: ⚠️️ Should this maybe return optional? yepp!
    * - Fixme: ⚠️️ Rename to `dequeue` make alias?
    * ## Examples:
    * let cell: CustomCell = collectionView.dequeueReusableCell(.init(row: 0, section: 0))
    * - Parameter indexPath: - Fixme: ⚠️️ add doc
    * - Returns: - Fixme: ⚠️️ add doc
    */
	public func dequeueReusableCell<T: UICollectionViewCell>(indexPath: IndexPath) -> T where T: ReusableCellKind {
		dequeueReusableCell(withReuseIdentifier: T.defaultReuseIdentifier, for: indexPath) as! T
	}
   /**
    * - Fixme: ⚠️️ Should this maybe return optional? yepp!
    * - Fixme: ⚠️️ Rename to `dequeue`
    * - Parameter indexPath: - Fixme: ⚠️️ add doc
    * - Returns: - Fixme: ⚠️️ add doc
    */
	public func dequeueReusableCell<T: UICollectionViewCell>(indexPath: IndexPath) -> T where T: ReusableCellKind, T: NibLoadableView {
		dequeueReusableCell(withReuseIdentifier: T.defaultReuseIdentifier, for: indexPath) as! T
	}
}
#endif
