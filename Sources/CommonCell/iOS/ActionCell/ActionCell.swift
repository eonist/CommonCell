#if os(iOS)
import ReusableCell
/**
 * ActionCell is a cell that has a universal callback action that the table can listen for
 * - Fixme: ⚠️️ Add ActionCell to CommonCell kit
 */
open class ActionCell: BaseCell, ActionCellKind {
   open var value: Any? // override this to pull out the value?
   public var onAction: OnAction = defaultOnAction // set this to get callback
}
#endif
