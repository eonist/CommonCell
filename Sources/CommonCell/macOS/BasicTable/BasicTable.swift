#if os(macOS)
import Cocoa

/**
 * BasicTable is a subclass of NSScrollView that implements the NSTableViewDataSource and NSTableViewDelegate protocols.
 * - Note: This table is cell-based and does not use sections to maintain the same structure for macOS, which does not have sections.
 * - Fixme: Consider renaming 'table' to 'TableView' for clarity.
 */
open class BasicTable: NSScrollView, NSTableViewDataSource, NSTableViewDelegate {
   // The NSTableView instance that this scroll view contains.
   public lazy var table: NSTableView = createTable()

   /**
    * Initializes a new instance of the table with the specified frame.
    * - Parameters:
    *   - frame: The frame rectangle for the table, specified in points. The default value is .zero.
    */
   override public init(frame: CGRect = .zero) {
      super.init(frame: frame)
      config() // Sets up the configuration of the table
   }

   /**
    * Required initializer that is not implemented.
    * - Note: This implementation is marked as unavailable to avoid subsequent warnings to implement this.
    */
   @available(*, unavailable)
   public required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
#endif
