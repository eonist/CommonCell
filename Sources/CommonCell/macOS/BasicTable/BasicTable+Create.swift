#if os(macOS)
import Cocoa

extension BasicTable {
   /**
    * Table (config and add table to NSScrollView)
    */
   @objc open func createTable() -> NSTableView {
      let tableView: NSTableView = .init(frame: .zero)
      tableView.wantsLayer = true
      tableView.layer?.masksToBounds = false
      tableView.dataSource = self // Set the NSTableViewDataSource
      tableView.delegate = self // Set the NSTableViewDelegate
      tableView.backgroundColor = .clear // .systemYellow // Remove background color
      tableView.intercellSpacing = .zero // Remove space between cells
      tableView.selectionHighlightStyle = .none // Avoid highlights on click etc
      tableView.headerView = nil // No need for header, we want a vanilla table design
      tableView.addTableColumn(.init(identifier: .init(Self.col1ID))) // Generally you want to add at least one column to the table view.
      self.documentView = tableView // Set the tableview as the docView
      return tableView
   }
}
#endif
