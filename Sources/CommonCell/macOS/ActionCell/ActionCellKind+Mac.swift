#if os(macOS)
import Cocoa
/**
 * - Note: No dequeue in macOS
 */
public protocol ActionCellKind: BaseCellKind {
   /**
    * Height of cell
    */
   static var height: CGFloat { get }
}
#endif
