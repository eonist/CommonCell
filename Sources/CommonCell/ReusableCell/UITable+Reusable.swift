#if os(iOS)
import UIKit
/**
 * - Fixme: ⚠️️ Maybe use a protocol and merge similar collectionview + table code
 */
extension UITableView {
   /**
    * Register Cell
    * - Fixme: ⚠️️ Add support for registering multiple cells: register([HCell.self,VCell.self]) etc, see TestRunner for similar code for how to do this
    * ## Examples:
    * tableView.register(CustomCell.self)
    */
   public func register<T: UITableViewCell>(_: T.Type) where T: ReusableCellKind {
      register(T.self, forCellReuseIdentifier: T.defaultReuseIdentifier)
   }
   /**
    * Adds support for registering multiple cells: register([HCell.self, VCell.self]) etc
    * - Parameter types: - Fixme: ⚠️️ add doc
    */
   public func register(_ types: [ReusableCellKind.Type]) {
      types.forEach { register($0.self, forCellReuseIdentifier: $0.defaultReuseIdentifier) }
   }
   /**
    * ## Examples:
    * let cell: CustomCell = collectionView.dequeueReusableCell()
    * - Returns: - Fixme: ⚠️️ doc
    */
   public func dequeue<T: UITableViewCell>() -> T where T: ReusableCellKind, T: NibLoadableView {
      dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier) as! T
   }
   /**
    * - Fixme: ⚠️️ return optional
    * - Returns: - Fixme: ⚠️️ add doc
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
    * - Fixme: ⚠️️ Should this maybe return optional? yepp
    * ## Examples:
    * let cell: CustomCell = collectionView.dequeueReusableCell(indexPath: indexPath)
    * - Parameter indexPath: - Fixme: ⚠️️ add doc
    * - Returns: - Fixme: ⚠️️ add doc
    */
   public func dequeue<T: UITableViewCell>(indexPath: IndexPath) -> T where T: ReusableCellKind {
      dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier, for: indexPath) as! T
   }
   /**
    * - Fixme: ⚠️️ rename to `dequeue`
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
    * ## Examples:
    * let cell: CustomCell = collectionView.dequeueReusableCell()
    * - Fixme: ⚠️️ Should this maybe return optional?
    * - Returns: - Fixme: ⚠️️ add doc
    */
   public func dequeue<T: UITableViewCell>(_ type: T.Type) -> T where T: ReusableCellKind, T: NibLoadableView {
      dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier) as! T
   }
   /**
    * - Fixme: ⚠️️ Add doc
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
