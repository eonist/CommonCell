#if os(macOS)
import Foundation

extension StickyTable {
   /**
    * A closure that is called when the table is scrolled vertically.
    * - Parameters:
    *   - offset: The vertical scroll offset of the table.
    */
   public typealias OnVerticalScroll = (CGFloat) -> Void
   
   /**
    * The default closure that is called when the table is scrolled vertically.
    * - Note: This closure does nothing by default.
    */
   public static let defaultOnVerticalScroll: OnVerticalScroll = { _ in }
}
#endif