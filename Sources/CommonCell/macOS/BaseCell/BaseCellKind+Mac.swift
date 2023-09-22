#if os(macOS)
import Foundation

public protocol BaseCellKind {
   /**
    * Initializes a new instance of the cell kind.
    */
   init()
   /**
    * The data that the cell will display.
    */
   var data: CellDataKind? { get set }
   /**
    * Returns the default reuse identifier for the cell kind, which is the name of the kind as a string.
    */
   static var defaultReuseIdentifier: String { get }
}
#endif