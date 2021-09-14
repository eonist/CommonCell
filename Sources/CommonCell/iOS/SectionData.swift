#if os(iOS)
import Foundation
/**
 * - Note: Used to store sections with rows (table model)
 * - Fixme: ⚠️️ Deprecate, move to commoncell, commonmodel etc
 */
public typealias SectionData = (title: String?, rows: [InputCellType])
#endif
