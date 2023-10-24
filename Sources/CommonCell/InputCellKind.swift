import Foundation
/**
 * A protocol that defines the attributes that all input cells must have.
 * - Remark: This protocol extends the `CellKind` protocol, which defines the basic attributes that all cells must have.
 * - Fixme: ⚠️️ This protocol should be renamed to `TextInputCellKind` to better reflect its purpose.
 * - Fixme: ⚠️️ The `idText` attribute should be added to this protocol to support localization.
 */
public protocol InputCellKind {
   var inputText: String? { get } // The input text entered by the user in the input cell.
   // - Fixme: ⚠️️ rename this to id or something?
   var titleText: String? { get } // The title text to be displayed in the input cell.
}
/**
 * A type alias for an array of input cells. (Bulk)
 * - Remark: This type alias is used to simplify the declaration of arrays of input cells.
 */
public typealias InputCellKinds = [InputCellKind]
/**
 * Ext
 */
extension InputCellKinds {
   /**
    * Find the first input cell with the specified title.
    * - Parameter title: The title to search for among the input cells.
    * - Returns: The first input cell with the specified title, or nil if no input cell is found.
    */
   public func first(title: String) -> InputCellKind? {
      self.first { $0.titleText == title }
   }
}
