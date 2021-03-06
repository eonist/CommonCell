#if os(iOS)
import UIKit
/**
 * - Fixme: ⚠️️ maybe make ScrollTable? see DesktopUI
 */
open class BaseTable: UITableView, UITableViewDelegate, UITableViewDataSource {
   /**
    * - Note: This table is only cell based, it doesn't use sections. because we want to use the same structure for macOS, and macOS doesnt have sections
    */
   override public init(frame: CGRect = .zero, style: UITableView.Style = .plain) {
      super.init(frame: frame, style: style)
      registerCells() // Registers Cell types
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
