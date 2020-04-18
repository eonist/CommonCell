#if os(iOS)
import UIKit
import ReusableCell
/**
 * - Note I guess the@objc @objc  purpouse of this class is to avoid adding the required init in subClasses?
 */
open class BaseCell: UITableViewCell, ReusableCellKind {
   open var data: CellDataKind? // Stores cellData
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
   @available(*, unavailable)
   public required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
/**
 * Const
 */
extension BaseCell {
   @objc open class var defaultReuseIdentifier: String { "\(BaseCell.self)" }
}
#endif
