import Foundation
/**
 * In this table: all Cells must have these attributes
 * - Remark: Used to store cell type and cell data in table models etc
 * - Fixme: ⚠️️ Rename to `CellContainer`? or `CellBox` or Cell...?, `InputCellType`?
 */
public struct CellType {
   public let type: ActionCellKind.Type?
   public let title: String
   public let data: Any?
   /**
    * - Parameters:
    *   - type: The cell type (We use celltype to reuse cell etc)
    *   - title: Title
    *   - data: Value
    */
   public init(type: ActionCellKind.Type?, title: String, data: Any? = nil) {
      self.type = type
      self.title = title
      self.data = data
   }
}
/**
 * Getter
 */
extension CellType {
   /**
    * cellData
    */
   public var cellData: CellData {
      .init(titleText: self.title, value: self.data)
   }
}
// Convenient
public typealias CellTypes = [CellType]
