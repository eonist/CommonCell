#if os(iOS)
import UIKit
/**
 * StickyTable
 */
open class StickyTable: BaseTable {
   /**
    * Callback
    */
   public var onVerticalScroll: OnVerticalScroll = defaultOnVerticalScroll
   /**
    * This table is only cell based, it doesn't use sections. Because we want to use the same structure for macOS, and macOS doesn't have sections
    * - Parameters:
    *   - frame: size of table
    *   - style: plain or grouped
    */
   override public init(frame: CGRect = .zero, style: UITableView.Style = .plain) {
      super.init(frame: frame, style: style)
   }
}
#endif
