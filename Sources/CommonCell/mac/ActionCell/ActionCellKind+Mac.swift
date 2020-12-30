#if os(macOS)
import Cocoa
/**
 * - Fixme: ⚠️️ Should be moved to ReuasableCellKind etc?
 * - Note: No dequeue in macOS
 */
public protocol ActionCellKind: BaseCellKind {
   /**
    * height of cell
    */
   public static var height: CGFloat { get }
}
#endif
