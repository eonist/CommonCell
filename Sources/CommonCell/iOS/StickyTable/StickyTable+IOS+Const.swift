#if os(iOS)
import UIKit
/**
 * Const - callbacks
 */
extension StickyTable {
   /**
    * Callback signature
    */
   public typealias OnVerticalScroll = (CGFloat) -> Void
   /**
    * - Fixme: ⚠️️ add doc
    */
   public static let defaultOnVerticalScroll: OnVerticalScroll = { _ in }
}
#endif
