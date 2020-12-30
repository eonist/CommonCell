#if os(macOS)
import Foundation
/**
 * ActionCell is a cell that has a universal callback action that the table can listen for
 * - Fixme: ⚠️️ Add ActionCell to CommonCell kit
 */
open class ActionCell: BaseCell, ActionCellKind {
   /**
    * - Note: override this to pull out the value?
    */
   open var value: Any?
   /**
    * - Note: set this to get callback
    */
   public var onAction: OnAction = defaultOnAction
}
#endif
