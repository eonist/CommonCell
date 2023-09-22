#if os(iOS)
import UIKit

/**
 * A table cell that displays a description label and an input text field.
 * - Description: Provides a way to show a `DescriptionLabel` and an `InputTextField` in a `TableCell`.
 * - Remark: The label is left-aligned and the content is right-aligned in the text field.
 */
open class TextCell: BaseCell {
    // The label that displays the description text.
    public lazy var descriptionLabel: UILabel = createDescriptionLabel()
    // The text field that displays the input content.
    public lazy var contentTextField: UITextField = createContentTextField()
    
    /**
     * Sets the data for the cell and updates the UI accordingly.
     * - Note: When you set the data, the different UI elements will be updated.
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