#if os(iOS)
import UIKit
/**
 * BaseCell is a UITableViewCell subclass that conforms to the ReusableCellKind protocol.
 * - Note: This class provides a default implementation of the `defaultReuseIdentifier` property.
 */
open class BaseCell: UITableViewCell, ReusableCellKind {
   /**
    * The data that the cell will display.
    */
   open var data: CellDataKind?
   /**
    * Initializes a new instance of the cell with the specified style and reuse identifier.
    * - Note: This implementation disables the selection highlighting.
    */
   override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
      // Call the superclass's initializer with the specified style and reuse identifier
      super.init(style: style, reuseIdentifier: reuseIdentifier)
      // Disable the selection highlighting for the cell
      self.selectionStyle = .none
   }
   /**
    * Required initializer that is not implemented.
    * - Note: This implementation is marked as unavailable to avoid subsequent warnings to implement this.
    */
   @available(*, unavailable)
   public required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
/**
 * Extension that defines a constant for the BaseCell class.
 */
extension BaseCell {
   /**
    * Returns the default reuse identifier for the cell class, which is the name of the class as a string.
    */
   @objc open class var defaultReuseIdentifier: String { 
      String(describing: self) 
   }
}
#endif
