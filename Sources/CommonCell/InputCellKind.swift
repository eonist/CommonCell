import Foundation

public protocol InputCellKind {
   /**
    * - Fixme: ⚠️️ add doc
    */
   var inputText: String? { get }
   /**
    * - Fixme: ⚠️️ add doc
    */
   var titleText: String? { get }
}
/**
 * Bulk
 */
public typealias InputCellKinds = [InputCellKind]
/**
 * Ext
 */
extension InputCellKinds {
   /**
    * Find the first for title
    * - Parameter title: - Fixme: ⚠️️ add doc
    */
   public func first(title: String) -> InputCellKind? {
      self.first { $0.titleText == title }
   }
}
