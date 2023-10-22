#if os(iOS)
import Foundation
/**
 * A typealias for a tuple that represents a section in a table view.
 * Each section has an optional title and an array of rows, where each row is represented by a CellType.
 * - Note: This typealias is used to simplify the declaration of table view data sources.
 */
public typealias SectionData = (title: String?, rows: [CellType])
#endif
