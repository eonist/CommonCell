#if os(iOS)
import UIKit
/**
 * A reusable collection view cell that conforms to the `ReusableCellKind` protocol.
 *
 * - Remark: This class is intended to be subclassed to create custom reusable collection view cells.
 */
open class ReusableCollectionCell: UICollectionViewCell, ReusableCellKind {}
#endif
