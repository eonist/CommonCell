#if os(macOS)
import Cocoa

extension BasicTable {
   /**
    * Creates and configures a new NSTableView instance.
    * - Note: This method sets up the table view's layer, data source, delegate, background color, intercell spacing, selection highlight style, and header view. It also adds a column to the table view and sets the table view as the document view of the scroll view.
    * - Returns: The newly created NSTableView instance.
    */
   @objc open func createTable() -> NSTableView {
      let tv: NSTableView = .init(frame: .zero)
      tv.wantsLayer = true
      tv.layer?.masksToBounds = false
      tv.dataSource = self // Set the NSTableViewDataSource
      tv.delegate = self // Set the NSTableViewDelegate
      tv.backgroundColor = .clear // .systemYellow // Remove background color
      tv.intercellSpacing = .zero // Remove space between cells
      tv.selectionHighlightStyle = .none // Avoid highlights on click etc
      tv.headerView = nil
      let column: NSTableColumn = .init(identifier: .init(Self.col1ID))
      // column.headerCell = .init(textCell: "") // .init(Self.col1ID)
      column.width = .zero // default is 100px, but that may cause issues if table is less than 100 on init
      tv.addTableColumn(column) // Generally you want to add at least one column to the table view.
      self.documentView = tv // Set the tableview as the docView in the scrollview
      return tv
   }
}
#endif