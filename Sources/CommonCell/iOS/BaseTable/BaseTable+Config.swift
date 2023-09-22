#if os(iOS)
import UIKit

extension BaseTable {
   /**
    * Registers cell types for recycling and reuse.
    * - Note: This method must be overridden by subclasses.
    */
   @objc open func registerCells() {
      fatalError("⚠️️ This method must be overridden in subclass")
   }
   /**
    * Configures the table view.
    * - Note: This method sets up the table view's data source, delegate, separator style, and background color.
    */
   @objc open func config() {
      // Set the table view's data source and delegate to self
      self.dataSource = self
      self.delegate = self
      // Set the table view's separator style to .none
      self.separatorStyle = .none
      // Set the table view's background color to .clear
      self.backgroundColor = .clear
   }
}
#endif