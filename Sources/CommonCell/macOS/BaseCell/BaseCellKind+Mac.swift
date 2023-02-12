#if os(macOS)
import Foundation

public protocol BaseCellKind {
   /**
    * - Fixme: ⚠️️ add doc
    */
   init()
   /**
    * - Fixme: ⚠️️ add doc
    */
   var data: CellDataKind? { get set }
   /**
    * - Fixme: ⚠️️ add doc
    */
   static var defaultReuseIdentifier: String { get }
}
#endif
