import Foundation

public protocol InputCellKind {
   var inputText: String? { get }
   var titleText: String? { get }
}
public typealias InputCellKinds = [InputCellKind]
extension InputCellKinds {
   /**
    * Find the first for title
    */
   public func first(title: String) -> InputCellKind? {
      self.first { $0.titleText == title }
   }
}
