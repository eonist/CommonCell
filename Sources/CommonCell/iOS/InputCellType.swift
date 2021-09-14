#if os(iOS)
import Foundation
// import With
// import Spatial
// import CommonCell
/**
 * In this table: all Cells must have these attributes
 * - Note: Used to store cell type and cell data in table models etc
 * - Fixme: ⚠️️ rename to CellType
 */
public struct InputCellType {
   public let type: ActionCellKind.Type?
   public let title: String
   public let data: Any?
   /**
    * - Parameters:
    *   - type: the cell type (We use celltype to reuse cell etc)
    *   - title: title
    *   - data: value
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
extension InputCellType {
   /**
    * cellData
    */
   public var cellData: CellData {
      .init(titleText: self.title, value: self.data)
   }
}
#endif
