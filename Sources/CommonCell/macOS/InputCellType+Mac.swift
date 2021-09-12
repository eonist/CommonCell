#if os(macOS)
import Foundation
/**
 * In this table: all Cells must have these attributes
 */
public struct InputCellType {
   public let type: String
   public let title: String
   public let value: Any?
   /**
    * - Fixme: ⚠️️ explain why we set the type
    * - Parameters:
    *   - type: the cell type
    *   - title: title
    *   - value: value
    */
   public init(type: String, title: String, value: Any? = nil) {
      self.type = type
      self.title = title
      self.value = value
   }
}
/**
 * Getter
 */
extension InputCellType {
   /**
    * cellData
    */
   public var cellData: CellData {
      .init(titleText: self.title, value: self.value)
   }
}
#endif
