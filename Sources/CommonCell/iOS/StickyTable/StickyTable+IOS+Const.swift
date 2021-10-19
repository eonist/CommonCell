#if os(iOS)
import UIKit
/**
 * Const - callbacks
 */
extension StickyTable {
   public typealias OnVerticalScroll = (CGFloat) -> Void // Callback signature
   public static let defaultOnVerticalScroll: OnVerticalScroll = { _ in }
}
#endif
