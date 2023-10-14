#if os(iOS)
import Foundation
/**
 * Protocol that defines the requirements for a base cell kind.
 * - Note: This protocol is used as a base for other cell kinds to inherit from.
 */
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
