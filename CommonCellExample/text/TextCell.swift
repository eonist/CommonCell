#if os(iOS)
import UIKit
/**
 * - Description: Provides a way to show a `DescriptionLabel` and and `InputTextField` in a `TableCell` [Desc Input]
 * - Remark: Left-aligned `Label` and Right-Aligned content `TextField`
 */
open class TextCell: BaseCell {
   public lazy var descriptionLabel: UILabel = createDescriptionLabel()
   public lazy var contentTextField: UITextField = createContentTextField()
   /**
    * - Description: When you set the data, the diferent UI's will be updated
    */
   override open var data: CellDataKind? {
        didSet {
            guard let data: TextCellData = data as? TextCellData else { return }
            descriptionLabel.text = data.description
            contentTextField.text = data.content
        }
    }
}
#endif
