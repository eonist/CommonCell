#if os(iOS)
import UIKit
/**
 * - Note I guess the @objc purpouse of this class is to avoid adding the required init in subClasses?
 */
open class BaseCell: UITableViewCell, ReusableCellKind {
   /**
    * Stores CellData
    */
   open var data: CellDataKind?
   /**
    * Init
    */
   override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
      super.init(style: style, reuseIdentifier: reuseIdentifier)
      self.selectionStyle = .none // Disables the selection highlighting
   }
   /**
    * Boilerplate
    */
   @available(*, unavailable) // Avoids subsequent warnings to implement this
   public required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
/**
 * Const
 */
extension BaseCell {
   /**
    * - Fixme: ⚠️️ add doc
    */
   @objc open class var defaultReuseIdentifier: String { String(describing: self) }
}
#endif
