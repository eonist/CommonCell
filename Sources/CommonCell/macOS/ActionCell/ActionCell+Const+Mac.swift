#if os(macOS)
import QuartzCore
/**
 * Const
 */
extension ActionCell {
   public typealias OnAction = (_ actionCell: ActionCell, _ value: Any?) -> Void
   public static let defaultOnAction: OnAction = { actionCell, value in Swift.print("defaultOnAction: \(String(describing: value)) actionCell: \(actionCell)") }
   @objc open class var height: CGFloat { 32 } // Standard size
}
#endif
