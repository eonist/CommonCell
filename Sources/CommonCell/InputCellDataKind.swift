import Foundation
/**
 * A protocol that defines the attributes that all input cells must have.
 * - Remark: This protocol extends the `CellDataKind` protocol, which defines the basic attributes that all cells must have.
 */
public protocol InputCellDataKind: CellDataKind {
   /**
    * The title text to be displayed in the input cell.
    * - Remark: This is typically used as a label for the input field.
    */
   var titleText: String { get }

   /**
    * The input text entered by the user in the input cell.
    * - Remark: This is typically used to retrieve the user's input from the input field.
    */
   var inputText: String { get }
}
