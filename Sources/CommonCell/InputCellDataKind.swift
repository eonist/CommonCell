import Foundation

public protocol InputCellDataKind: CellDataKind {
   var titleText: String { get }
   var inputText: String { get }
}
