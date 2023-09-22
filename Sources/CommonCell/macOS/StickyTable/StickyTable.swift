#if os(macOS)
import Cocoa

/**
 * StickyTable is a subclass of BasicTable that supports vertical scrolling.
 * - Note: This table is cell-based and does not use sections to maintain the same structure for macOS, which does not have sections.
 */
open class StickyTable: BasicTable {
   /**
    * A closure that is called when the table is scrolled vertically.
    * - Note: Set this property to get the callback.
    */
   public var onVerticalScroll: OnVerticalScroll = defaultOnVerticalScroll
   /**
    * Initializes a new instance of the table with the specified frame.
    * - Parameters:
    *   - frame: The frame rectangle for the table, specified in points. The default value is .zero.
    * - Remark: The table uses frame layout instead of auto-layout. This is necessary in some cases.
    */
   override public init(frame: CGRect = .zero) {
      super.init(frame: frame)
      NotificationCenter.default.addObserver(self, selector: #selector(boundsChange), name: NSView.boundsDidChangeNotification, object: self.contentView) // The boundsChange notification is the most consistent way to detect table motion, including elastic scrolling.
   }
}
#endif