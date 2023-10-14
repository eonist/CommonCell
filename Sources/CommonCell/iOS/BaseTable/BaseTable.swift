#if os(iOS)
import UIKit

/**
 * BaseTable is a UITableView subclass that implements the UITableViewDelegate and UITableViewDataSource protocols.
 * - Note: This class is cell-based and does not use sections to maintain the same structure for macOS, which does not have sections.
 * - Fixme: Consider creating a `ScrollTable` as seen in `DesktopUI`.
 */
open class BaseTable: UITableView, UITableViewDelegate, UITableViewDataSource {
   /**
    * Initializes a new instance of the table with the specified frame and style.
    * - Parameters:
    *   - frame: The frame rectangle for the table, specified in points. The default value is .zero.
    *   - style: The style of the table view. The default value is .plain.
    */
   override public init(frame: CGRect = .zero, style: UITableView.Style = .plain) {
      super.init(frame: frame, style: style)
      registerCells() // Registers the cell types for the table
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
