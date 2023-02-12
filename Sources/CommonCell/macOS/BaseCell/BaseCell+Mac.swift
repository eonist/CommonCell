#if os(macOS)
import Cocoa
/**
 * - Note I guess the @objc purpouse of this class is to avoid adding the required init in subClasses?
 */
open class BaseCell: NSTableCellView, BaseCellKind {
   /**
    * We store backgroundColor because cgColor does not react on OS apperance change etc
    */
   open var backgroundColor: NSColor = .clear
   /**
    * Stores cellData
    */
   open var data: CellDataKind?
   /**
    * Init
    */
   public required init() {
      super.init(frame: .zero)
      self.identifier = NSUserInterfaceItemIdentifier(rawValue: Self.defaultReuseIdentifier)
   }
   /**
    * Boilerplate
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
   @objc open class var defaultReuseIdentifier: String { String(describing: self) }
}

/**
 * Override
 */
extension BaseCell {
   /**
    * When apperance change, this is redrawn
    * - Parameter dirtyRect: Not important, just internal cgrect stuff for internal drawing etc, legacy api
    */
   override open func draw(_ dirtyRect: NSRect) {
      super.draw(dirtyRect)
      self.layer?.backgroundColor = backgroundColor.cgColor
   }
   /**
    * When layout change, update background
    */
   override open func layout() {
      super.layout()
      self.layer?.backgroundColor = backgroundColor.cgColor
   }
}
#endif
