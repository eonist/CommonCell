#if os(macOS)
import Cocoa

extension BasicTable {
   /**
    * Table (config and add table to `NSScrollView`)
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
