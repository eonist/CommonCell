#if os(macOS)
import Cocoa
/**
 * No dequeue in macOS, - Fixme: ⚠️️ or is there?
 */
public protocol ActionCellKind: BaseCellKind {
   /**
    * Height of cell
    */
   static var height: CGFloat { get }
}
#endif
