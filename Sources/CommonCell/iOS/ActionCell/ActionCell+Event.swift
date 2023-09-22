#if os(iOS)
import Foundation

extension ActionCell {
   /**
    * Calls the onAction callback with the specified value.
    * - Parameters:
    *   - value: The value to pass to the onAction callback. Defaults to nil.
    */
   public func action(value: Any? = nil) {
      // Set the value of the cell to the specified value
      self.value = value
      // Call the onAction callback with the cell and the specified value
      onAction(self, value)
   }
}
#endif