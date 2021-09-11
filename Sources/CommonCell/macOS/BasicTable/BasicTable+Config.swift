#if os(macOS)
import Cocoa
/**
 * - Fixme: ⚠️️ Reuse this part of the code. 4 other Tables use the same code
 */
extension BasicTable {
   /**
    * Config table
    * - Note: ⚠️️ The content offset might also be solved like this: https://stackoverflow.com/questions/10016475/create-nsscrollview-programmatically-in-an-nsview-cocoa
    */
   @objc open func config() {
      self.automaticallyAdjustsContentInsets = false // remove auto adjustments to contentInset
      self.autohidesScrollers = true // Default behaviour
      self.hasHorizontalScroller = false // Hide scrollers
      self.hasVerticalScroller = false  // Hide scrollers
      self.borderType = .noBorder // Remove design, we want vanilla table
      self.backgroundColor = .clear // No background color // Swatch.Background.primary, self.backgroundColor = Color.Background.primary
      self.verticalScrollElasticity = .allowed // Makes table bounce
      _ = table // activate table
      // - Fixme: ⚠️️ maybe not set that header height, 👉 do it in super class? 👈
//      self.setContentOffset(.init(x: 0, y: 0)) // add content offset, to make room for header
   }
}
#endif
