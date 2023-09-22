import Foundation
/**
 * This table defines the attributes that all cells must have.
 * - Remark: This is used to store cell type and cell data in table models, etc.
 * - Fixme: ⚠️️ Consider renaming to `CellContainer`, `CellBox`, `InputCellType`, or `CellClass`.
 * - Fixme: ⚠️️ Maybe rename to `CellItem` or `CellClassData`.
 * - Fixme: ⚠️️ Consider renaming to `CellAndData` for better descriptiveness.
 */
public struct CellType {
   // - Fixme: ⚠️️ rename to cellType? 
   public let type: ActionCellKind.Type? // The type of the cell. Can be nil if the cell type is not specified.
   public let title: String // The title of the cell.
   // - Fixme: ⚠️️ Rename to 👉 value 👈
   public let data: Any? // The data associated with the cell. Can be nil if no data is associated.
   /**
    * Initializes a new instance of an action cell with the specified type, title, and data.
    * - Parameters:
    *   - type: The type of the action cell.
    *   - title: The title of the action cell.
    *   - data: The data associated with the action cell.
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
    * - Fixme: ⚠️️ make this a method to make it more clear? get prefix for vars is not common etc
    * - Fixme: ⚠️️ Add doc for what this is used for etc
    */
   public var getCellData: CellData {
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
//extension CellType {
//   // deprecated ⚠️️
//   @available(*, deprecated, renamed: "getCellData") // You can also point to new class : "UIAlertController.createAlert"
//   public var cellData: CellData {
//      getCellData
//   }
//}
