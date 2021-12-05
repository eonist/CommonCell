#if os(iOS)
/**
 * Container for data for title and value
 */
public struct CellData: CellDataKind {
   public let titleText: String
   public let value: Any?
   public init(titleText: String, value: Any? = nil) {
      self.titleText = titleText
      self.value = value
   }
}
#endif
