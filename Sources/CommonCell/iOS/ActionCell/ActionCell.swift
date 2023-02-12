#if os(iOS)
/**
 * ActionCell is a cell that has a universal callback action that the table can listen for
 */
open class ActionCell: BaseCell, ActionCellKind {
   /**
    * Override this to pull out the value?
    */
   open var value: Any?
   /**
    * Set this to get callback
    */
   public var onAction: OnAction = defaultOnAction
}
#endif
