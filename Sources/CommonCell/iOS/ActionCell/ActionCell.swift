#if os(iOS)
/**
 * ActionCell is a cell that has a universal callback action that the table can listen for
 */
open class ActionCell: BaseCell, ActionCellKind {
   open var value: Any? // Override this to pull out the value?
   public var onAction: OnAction = defaultOnAction // set this to get callback
}
#endif
