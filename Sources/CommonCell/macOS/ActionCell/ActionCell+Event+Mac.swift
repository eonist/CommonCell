#if os(macOS)
import Foundation

extension ActionCell {
   /**
    * Callback hock (call this and it will call the listener)
    */
   public func action(value: Any? = nil) {
      self.value = value
      onAction(self, value)
   }
}
#endif
