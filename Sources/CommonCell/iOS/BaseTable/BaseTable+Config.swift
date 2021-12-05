#if os(iOS)
import UIKit

extension BaseTable {
   /**
    * Register cell types for recycling etc
    */
   @objc open func registerCells() {
      fatalError("⚠️️ must be overriden in subclass")
   }
   /**
    * Config table
    */
   @objc open func config() {
      self.showsVerticalScrollIndicator = false
      self.dataSource = self // Delegate
      self.delegate = self // Delegate
      self.separatorStyle = .none // UI
      self.backgroundColor = .clear // Swatch.Background.primary
   }
}
#endif
