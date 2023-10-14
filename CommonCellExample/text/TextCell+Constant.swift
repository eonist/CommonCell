#if os(iOS)
import UIKit

/**
 * Constants for the TextCell class.
 */
extension TextCell {
   /**
    * The default reuse identifier for the cell.
    * - Note: This identifier is used when dequeuing cells from a table view.
    */
   override open class var defaultReuseIdentifier: String { "\(TextCell.self)" }

   /**
    * The default background color for the cell.
    */
   open class var backgroundColor: UIColor { .blue }

   /**
    * The default height for the cell.
    */
   open class var cellHeight: CGFloat { 124 }
}

extension TextCell {
   /**
    * The margin values for the cell's content.
    * - Note: These values are used to set the padding around the cell's content.
    * - Fixme: Consider switching to a variable margin value instead of using a static enum.
    */
   public enum Margin {
      // Constants for the TextCell class.
      public enum Margin {
         public static let horizontal: CGFloat = 12 // The horizontal margin value for the cell's content.
         public static let horizontalSpaceBetween: CGFloat = 4 // The horizontal space between the cell's content elements.
         public static let vertical: CGFloat = 12 // The vertical margin value for the cell's content.
         public static let verticalSpaceBetween: CGFloat = 4 // The vertical space between the cell's content elements.
      }
   }
}
#endif
