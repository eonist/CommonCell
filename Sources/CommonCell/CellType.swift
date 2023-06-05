import Foundation
/**
 * In this table: all Cells must have these attributes
 * - Remark: Used to store cell type and cell data in table models etc
 * - Fixme: ⚠️️ Rename to `CellContainer`? or `CellBox` or Cell...?, `InputCellType`?
 * - Fixme: ⚠️️ Maybe rename to CellItem or CellClass? or keep as is or CellClassData?
 * - Fixme: ⚠️️ Rename to 👉 `CellAndData` 👈 reasoning: it's more descriptive
 */
public struct CellType {
   public let type: ActionCellKind.Type?
   public let title: String
   public let data: Any? // - Fixme: ⚠️️ rename to value
   /**
    * - Parameters:
    *   - type: The cell class type (We use celltype to reuse cell etc)
    *   - title: Title in the cell
    *   - data: Value in the cell
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
    * CellType -> CellData
    * - Fixme: ⚠️️ Rename to getCellData ?
    * - Fixme: ⚠️️ Add doc what this is used for etc
    */
   public var cellData: CellData {
      .init(titleText: self.title, value: self.data)
   }
}
/**
 * Convenient
 */
public typealias CellTypes = [CellType]

extension CellType: Equatable {
   /**
    * - Fixme: ⚠️️ should equate value as well, fix later
    */
   public static func == (lhs: CellType, rhs: CellType) -> Bool {
      lhs.type == rhs.type &&
      lhs.title == rhs.title // &&
      // Equatable.equate(lhs.data, rhs.data)
   }
}
