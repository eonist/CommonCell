#if os(macOS)
import Cocoa
/**
 * StickyTable
 */
open class StickyTable: BasicTable {
   public var onVerticalScroll: OnVerticalScroll = defaultOnVerticalScroll
   /**
    * - Note: This table is only cell based, it doesn't use sections. because we want to use the same structure for macOS, and macOS doesnt have sections
    * - Parameter frame: needed, sometimes we use frame and not autolayout
    */
   override public init(frame: CGRect = .zero) {
      super.init(frame: frame)
      NotificationCenter.default.addObserver(self, selector: #selector(boundsChange), name: NSView.boundsDidChangeNotification, object: self.contentView) // the boundsChange was the most consisten way to detect table motion, the scroll-wheel method didn't detect the elastic motion etc
   }
}
#endif
