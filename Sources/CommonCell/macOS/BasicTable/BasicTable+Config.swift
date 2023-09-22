#if os(macOS)
import Cocoa

/**
 * Extension that provides configuration methods for the BasicTable class.
 * - Fixme: Consider refactoring this code for reuse as it is used in 4 other tables.
 */
extension BasicTable {
   /**
    * Configures the table view.
    * - Note: This method sets up the table view's scroll behavior, border type, background color, and vertical scroll elasticity.
    * - Remark: For an alternative solution to setting the content offset, see: https://stackoverflow.com/questions/10016475/create-nsscrollview-programmatically-in-an-nsview-cocoa
    */
   @objc open func config() {
      self.automaticallyAdjustsContentInsets = false // Disables automatic adjustments to contentInset
      self.autohidesScrollers = true // Enables automatic hiding of scrollers
      self.hasHorizontalScroller = false // Disables horizontal scroller
      self.hasVerticalScroller = false  // Disables vertical scroller
      self.borderType = .noBorder // Removes border
      self.backgroundColor = .clear // Sets background color to clear
      self.verticalScrollElasticity = .allowed // Enables vertical scroll elasticity
      _ = table // Activates table
      // - Fixme: Consider setting the header height in the superclass instead of here.
      // self.setContentOffset(.init(x: 0, y: 0)) // Sets content offset to make room for header
   }
}
#endif