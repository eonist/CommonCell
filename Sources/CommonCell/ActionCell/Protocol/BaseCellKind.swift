#if os(iOS)
import Foundation

public protocol BaseCellKind {
   var data: CellDataKind? { get set }
   static var defaultReuseIdentifier: String { get }
}
#endif
