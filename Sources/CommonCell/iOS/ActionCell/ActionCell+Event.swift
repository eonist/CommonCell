#if os(iOS)
import Foundation

extension ActionCell {
   /**
    * callback hock (call this and it will call the listener)
    */
   public func action(value: Any) {
      self.value = value
      onAction(self, value)
   }
}
#endif
