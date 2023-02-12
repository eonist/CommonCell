#if os(macOS)
import Foundation

extension ActionCell {
   /**
    * Callback hock (call this and it will call the listener)
    * - Parameter value: set self.value and pass on to onAction callback
    */
   public func action(value: Any? = nil) {
      self.value = value
      onAction(self, value)
   }
}
#endif
