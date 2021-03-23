#if os(iOS)
import Foundation
/**
 * In this table: all Cells must have these attributes
 */
public struct GeneralCellType {
   public let type: ActionCellKind.Type
   public let title: String
   public let value: Any?
   /**
    * - Parameters:
    *   - type: type of cell
    *   - title: title
    *   - value: value
    */
   init(type: ActionCellKind.Type, title: String, value: Any? = nil) {
      self.type = type
      self.title = title
      self.value = value
   }
}
/**
 * Getter
 */
extension GeneralCellType {
   /**
    * cellData
    */
   public var cellData: CellData {
      .init(titleText: self.title, value: self.value)
   }
}
#endif
