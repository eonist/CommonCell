import Foundation
/**
 * - Fixme: ⚠️️ Remove inputcellkind for cells that are not input etc
 */
public protocol InputCellKind {
   /**
    * Value text
    */
   var inputText: String? { get }
   /**
    * Title text
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
    * - Parameter title: look for this title among cells
    */
   public func first(title: String) -> InputCellKind? {
      self.first { $0.titleText == title }
   }
}
