#if os(iOS)
import Foundation
/**
 * A struct that contains data for a `TextCell`.
 * - Description: Provides a way to store the description and content of a `TextCell`.
 */
public struct TextCellData: CellDataKind {
   // The description text of the cell.
   public let description: String
   // The input content of the cell.
   public let content: String
   /**
    * Initializes a new instance of `TextCellData`.
    * - Parameters:
    *   - description: The description text of the cell.
    *   - content: The input content of the cell.
    */
   public init(description: String, content: String) {
      self.description = description
      self.content = content
   }
}
#endif