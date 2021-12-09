#if os(iOS)
import QuartzCore
/**
 * Const
 */
extension ActionCell {
   public typealias OnAction = (_ actionCell: ActionCell, _ value: Any?) -> Void
   public static let defaultOnAction: OnAction = { /*actionCell*/_, value in Swift.print("defaultOnAction: \(String(describing: value))") }
   @objc open class var height: CGFloat { 32 } // Standard size
}
#endif
