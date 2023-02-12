#if os(iOS)
import QuartzCore
/**
 * Const
 */
extension ActionCell {
   /**
    * - Fixme: ⚠️️ add doc
    */
   public typealias OnAction = (_ actionCell: ActionCell, _ value: Any?) -> Void
   /**
    * - Fixme: ⚠️️ add doc
    */
   public static let defaultOnAction: OnAction = { /*actionCell*/_, value in Swift.print("defaultOnAction: \(String(describing: value))") }
   /**
    * Standard size
    */
   @objc open class var height: CGFloat { 32 }
}
#endif
