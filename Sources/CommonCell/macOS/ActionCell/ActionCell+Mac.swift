#if os(macOS)
import Foundation
/**
 * ActionCell is a cell that has a universal callback action that the table can listen for.
 * - Note: This class inherits from the BaseCell class and conforms to the ActionCellKind protocol.
 */
open class ActionCell: BaseCell, ActionCellKind {
   /**
    * The value associated with the cell.
    * - Note: Override this property to pull out the value.
    */
   open var value: Any?
   /**
    * The closure that is called when an action is performed on the cell.
    * - Note: Set this property to get the callback.
    */
   public var onAction: OnAction = defaultOnAction
}
#endif
