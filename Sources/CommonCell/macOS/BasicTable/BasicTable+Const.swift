#if os(macOS)
import Foundation

extension BasicTable {
   /**
    * A constant that represents the identifier for the first (and only) column in the table.
    * - Note: This constant is used when setting up the table view's columns.
    * - Fixme: Evaluate if this constant is necessary, as there is only one column in the table.
    */
   public static var col1ID: String = "col1"
}
#endif
