#if os(iOS)
import Foundation

/**
 * A protocol that defines the attributes that all reusable table view cells must have.
 *
 * - Remark: This protocol is used to simplify the process of dequeuing and reusing table view cells.
 * - Example: `extension CustomCell: ReusableCellKind {}` to make your subclass conform to the protocol.
 */
public protocol ReusableCellKind: AnyObject {
   static var defaultReuseIdentifier: String { get } // The default reuse identifier for the reusable cell.
}
#endif
