#if os(macOS)
import Foundation
/**
 * In this table: all Cells must have these attributes
 * - Fixme: ⚠️️ Rename to InputCellType? InputCellKind? CompositeCellKind?
 * - Fixme: ⚠️️ move to CommonCell?
 */
public struct GeneralCellType {
   public let type: ActionCellKind.Type
   public let title: String
   public let value: Any?
   /**
    * - Fixme: ⚠️️ explain why we set the type
    * - Parameters:
    *   - type: the cell type
    *   - title: title
    *   - value: value
    */
   public init(type: ActionCellKind.Type, title: String, value: Any? = nil) {
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
