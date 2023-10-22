#if os(iOS)
/**
 * A struct that encapsulates the data for a cell, including a title and a value.
 * - Note: This struct conforms to the CellDataKind protocol.
 * - Fixme: Consider renaming CellData to CellValue for clarity.
 */
public struct CellData: CellDataKind {
   // The title text for the cell.
   public let titleText: String
   // The value associated with the cell. This can be any type and is optional.
   public let value: Any?
   /**
    * Initializes a new instance of CellData with the specified title text and value.
    * - Parameters:
    *   - titleText: The title text for the cell.
    *   - value: The value associated with the cell. This can be any type and is optional. The default value is nil.
    */
   public init(titleText: String, value: Any? = nil) {
      self.titleText = titleText
      self.value = value
   }
}
#endif
