#if os(macOS)
import Cocoa

/**
 * Protocol that defines the requirements for an action cell kind.
 * - Note: This protocol inherits from the BaseCellKind protocol.
 */
public protocol ActionCellKind: BaseCellKind {
   /**
    * The standard height of the ActionCell.
    */
   static var height: CGFloat { get }
}
#endif
