#if os(iOS)
import UIKit

/**
 * StickyTable is a subclass of BaseTable that supports vertical scrolling.
 * - Note: This table is cell-based and does not use sections to maintain the same structure for macOS, which does not have sections.
 */
open class StickyTable: BaseTable {
   
   /**
    * A closure that is called when the table is scrolled vertically.
    * - Note: Set this property to get the callback.
    */
   public var onVerticalScroll: OnVerticalScroll = defaultOnVerticalScroll
   
   /**
    * Initializes a new instance of the table with the specified frame and style.
    * - Parameters:
    *   - frame: The frame rectangle for the table, specified in points. The default value is .zero.
    *   - style: The style of the table view. The default value is .plain.
    */
   override public init(frame: CGRect = .zero, style: UITableView.Style = .plain) {
      super.init(frame: frame, style: style)
   }
}
#endif