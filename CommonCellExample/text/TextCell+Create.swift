#if os(iOS)
import UIKit
/**
 * Extension that provides factory methods for creating the `descriptionLabel` and `contentTextField` of a `TextCell`.
 */
extension TextCell {
   /**
    * Creates the `descriptionLabel` of the cell.
    * - Returns: A `UILabel` instance that displays the description text of the cell.
    */
   @objc open func createDescriptionLabel() -> UILabel {
      let label = UILabel() // Create a new UILabel instance
      label.text = "title" // Set the text of the label
      label.textColor = .white // Set the text color of the label
      label.backgroundColor = .clear // Set the background color of the label
      label.font = .boldSystemFont(ofSize: 16) // Set the font of the label
      label.textAlignment = .left // Set the text alignment of the label
      self.addSubview(label) // Add the label as a subview of the cell
      // Constraints
      label.translatesAutoresizingMaskIntoConstraints = false // Disable the label's autoresizing mask
      let left = label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Margin.horizontal) // Create a constraint for the leading edge of the label
      let y = label.centerYAnchor.constraint(equalTo: self.centerYAnchor) // Create a constraint for the vertical center of the label
      NSLayoutConstraint.activate([left, y]) // Activate the constraints
      // Set the content hugging priority of the label to retain its intrinsic width
      label.setContentHuggingPriority(.init(500), for: .horizontal)
      return label // Return the label instance
   }

   /**
    * Creates the `contentTextField` of the cell.
    * - Returns: A `UITextField` instance that displays the input content of the cell.
    */
   @objc open func createContentTextField() -> UITextField {
      let tf = UITextField() // Create a new UITextField instance
      tf.isUserInteractionEnabled = false // Disable user interaction for the text field
      tf.textAlignment = .right // Set the text alignment of the text field
      tf.textColor = .gray // Set the text color of the text field
      tf.tintColor = #colorLiteral(red: 0, green: 1, blue: 1, alpha: 1) // Set the tint color of the text field
      tf.font = .systemFont(ofSize: 16) // Set the font of the text field
      self.addSubview(tf) // Add the text field as a subview of the cell
      // Configure the constraints of the text field
      configContentTextFieldConstraints(tf)
      return tf // Return the text field instance
   }
}
/**
 * Extension that provides methods for configuring the constraints of a `TextCell`.
 */
extension TextCell {
   /**
    * Configures the constraints of the `contentTextField` of the cell.
    * - Parameters:
    *   - tf: The `UITextField` instance to configure the constraints for.
    */
   @objc open func configContentTextFieldConstraints(_ tf: UITextField) {
      with(tf) {
         $0.translatesAutoresizingMaskIntoConstraints = false // Disable the text field's autoresizing mask
         let y = tf.centerYAnchor.constraint(equalTo: self.centerYAnchor) // Create a constraint for the vertical center of the text field
         let left = $0.leadingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor, constant: Margin.horizontal) // Create a constraint for the leading edge of the text field
         left.priority = .init(rawValue: 251) // Set the priority of the leading edge constraint
         let right = $0.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Margin.horizontal) // Create a constraint for the trailing edge of the text field
         NSLayoutConstraint.activate([left, right, y]) // Activate the constraints
         // Set the content compression resistance priority of the text field to prevent it from overlapping the label
         $0.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 250), for: .horizontal)
      }
   }
}
#endif
