#if os(iOS)
import UIKit
/**
 * Constants
 */
extension TextCell {
   override open class var defaultReuseIdentifier: String { "\(TextCell.self)" }
   open class var backgroundColor: UIColor { .blue }
   open class var cellHeight: CGFloat { 124 }
}
extension TextCell {
   // Fixme: ⚠️️ switch to var margin: UIEdgeInsets { .init(top: 12, left: 12, bottom: 12, right: 12) }
   public enum Margin {
      public static let horizontal: CGFloat = 12
      public static let horizontalSpaceBetween: CGFloat = 4
      public static let vertical: CGFloat = 12
      public static let verticalSpaceBetween: CGFloat = 4
   }
}
#endif
