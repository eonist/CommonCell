#if os(macOS)
import Foundation

extension StickyTable {
   /**
    * Callback signature
    */
   public typealias OnVerticalScroll = (CGFloat) -> Void
   public static let defaultOnVerticalScroll: OnVerticalScroll = { _ in }
}
#endif
