#if os(iOS)
import UIKit
/**
 * A reusable table view cell that conforms to the `ReusableCellKind` protocol.
 * - Remark: This class is intended to be subclassed to create custom reusable table view cells.
 */
open class ReusableCell: UITableViewCell, ReusableCellKind {}
#endif
