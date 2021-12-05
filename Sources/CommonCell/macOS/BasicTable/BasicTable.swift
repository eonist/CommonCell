#if os(macOS)
import Cocoa

open class BasicTable: NSScrollView, NSTableViewDataSource, NSTableViewDelegate {
   public lazy var table: NSTableView = createTable() // - Fixme: ⚠️️ Rename to TableView
   /**
    * - Note: This table is only cell based, it doesn't use sections. Because we want to use the same structure for macOS, and macOS doesnt have sections
    */
   override public init(frame: CGRect = .zero) {
      super.init(frame: frame)
      config() // Setup config of table
   }
   /**
    * Boilerplate
    */
   @available(*, unavailable)
   public required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
#endif
