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
    * - Note: This table is only cell based, it doesn't use sections. because we want to use the same structure for macOS, and macOS doesnt have sections
    */
   override public init(frame: CGRect = .zero, style: UITableView.Style = .plain) {
      super.init(frame: frame, style: style)
   }
}
#endif
