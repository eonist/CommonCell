#if os(iOS)
import Foundation
/**
 * Container for data for title and value
 */
public struct CellData: CellDataKind {
   let titleText: String
   let value: Any?
}
#endif
