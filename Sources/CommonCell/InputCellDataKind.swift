import Foundation
/**
 * - Fixme: ⚠️️ remove this?, maybe not, used by InputCellData
 * - Fixme: ⚠️️ maybe also make ReadableCellDataKind
 */
public protocol InputCellDataKind: CellDataKind {
   var titleText: String { get }
   var inputText: String { get }
}
