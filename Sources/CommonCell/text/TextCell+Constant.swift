import UIKit
/**
 * Constants
 */
extension TextCell {
   open class var defaultReuseIdentifier: String { "\(TextCell.self)" }
   open class var backgroundColor: UIColor { .blue }
   open class var cellHeight: CGFloat { 124 }
}
extension TextCell {
   public enum Margin {
      static let horizontal: CGFloat = 12
      static let horizontalSpaceBetween: CGFloat = 4
      static let vertical: CGFloat = 12
      static let verticalSpaceBetween: CGFloat = 4
   }
}
