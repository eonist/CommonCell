#if os(iOS)
import Foundation

extension ActionCell {
   /**
    * Callback hock (call this and it will call the listener)
    * - Parameter value: - Fixme: ⚠️️ add doc
    */
   public func action(value: Any?) {
      self.value = value
      onAction(self, value)
   }
}
#endif
