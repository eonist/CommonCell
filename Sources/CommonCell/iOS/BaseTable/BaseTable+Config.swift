#if os(iOS)
import UIKit
import ReusableCell

extension BaseTable {
   /**
    * Register cell types for recycling etc
    */
   @objc open func registerCells() {
      fatalError("⚠️️ must be overriden in subclass")
   }
   /**
    * Config table
    * - Fixme: ⚠️️ rename to config
    */
   @objc open func config() {
      self.showsVerticalScrollIndicator = false
      // Delegate
      self.dataSource = self
      self.delegate = self
      // UI
      self.separatorStyle = .none
//      self.contentInset = .init(top: HeaderView.height, left: 0, bottom: 0, right: 0) // Offsets the content, so that sticky header works etc
      self.backgroundColor = .clear // Swatch.Background.primary
   }
}
#endif
