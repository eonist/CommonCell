#if os(macOS)
import Foundation
/**
 * Container for data for title and value
 */
public struct CellData: CellDataKind {
   public let titleText: String
   public let value: Any?
   /**
    * - Parameters:
    *   - titleText: Default cell title
    *   - value: Custom value
    */
   public init(titleText: String, value: Any?) {
      self.titleText = titleText
      self.value = value
   }
}
#endif
