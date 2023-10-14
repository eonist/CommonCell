#if os(iOS)
import QuartzCore

/**
 * Extension that defines constants for the ActionCell class.
 */
extension ActionCell {
   /**
    * A closure that is called when an action is performed on the cell.
    * - Parameters:
    *   - actionCell: The ActionCell instance that the action was performed on.
    *   - value: The value associated with the action.
    */
   public typealias OnAction = (_ actionCell: ActionCell, _ value: Any?) -> Void

   /**
    * The default closure that is called when an action is performed on the cell.
    * - Note: This closure simply prints a message to the console.
    */
   public static let defaultOnAction: OnAction = { /*actionCell*/_, value in Swift.print("defaultOnAction: \(String(describing: value))") }

   /**
    * The standard height of the ActionCell.
    */
   @objc open class var height: CGFloat { 32 }
}
#endif
