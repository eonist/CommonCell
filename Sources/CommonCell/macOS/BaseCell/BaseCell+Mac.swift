#if os(macOS)
import Cocoa
/**
 * A base class for table view cells that conform to the `BaseCellKind` protocol.
 * - Note: The `@objc` attribute is used to avoid adding the required initializer in subclasses.
 */
open class BaseCell: NSTableCellView, BaseCellKind {
   /**
    * The background color of the cell.
    * - Note: `backgroundColor` is stored because `cgColor` does not react to OS appearance changes.
    */
   open var backgroundColor: NSColor = .clear
   /**
    * The data associated with the cell.
    */
   open var data: CellDataKind?
   /**
    * Initializes the cell with a zero frame and sets the reuse identifier.
    */
   public required init() {
      super.init(frame: .zero)
      self.identifier = NSUserInterfaceItemIdentifier(rawValue: Self.defaultReuseIdentifier)
   }
   /**
    * Required initializer that is not implemented.
    * - Note: This initializer is marked as unavailable to prevent accidental use.
    */
   @available(*, unavailable)
   public required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
/**
 * Const
 */
extension BaseCell {
   // Returns the default reuse identifier for the cell class, which is the name of the class as a string.
   @objc open class var defaultReuseIdentifier: String { String(describing: self) }
}
/**
 * Override
 */
extension BaseCell {
   /**
    * Redraws the cell when the appearance changes by setting the background color of the cell's layer to the specified color.
    * - Parameter dirtyRect: The portion of the view that needs to be redrawn. This parameter is not used in this implementation.
    */
   override open func draw(_ dirtyRect: NSRect) {
      // Call the superclass's draw method to draw the cell
      super.draw(dirtyRect)
      // Set the background color of the cell's layer to the specified color
      self.layer?.backgroundColor = backgroundColor.cgColor
   }
   /**
    * Updates the background color of the cell's layer when the layout changes.
    * - Note: This implementation overrides the `layout()` method of the superclass.
    */
   override open func layout() {
      // Call the superclass's layout method to update the layout of the cell
      super.layout()
      // Set the background color of the cell's layer to the specified color
      self.layer?.backgroundColor = backgroundColor.cgColor
   }
}
#endif
