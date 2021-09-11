#if os(macOS)
import Foundation

public protocol BaseCellKind {
   init()
   var data: CellDataKind? { get set }
   static var defaultReuseIdentifier: String { get }
}
#endif
