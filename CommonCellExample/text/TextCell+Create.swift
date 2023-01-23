#if os(iOS)
import UIKit
/**
 * Create
 */
extension TextCell {
   /**
    * Create Title `Label`
    */
   @objc open func createDescriptionLabel() -> UILabel {
      let label = UILabel()
      label.text = "title"
      label.textColor = .white // .black
      label.backgroundColor = .clear
      label.font = .boldSystemFont(ofSize: 16) // .boldSystemFont(ofSize: 20.0)
      label.textAlignment = .left
      self.addSubview($0)
      // Constraints
      label.translatesAutoresizingMaskIntoConstraints = false
      let left = label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Margin.horizontal)
      let y = label.centerYAnchor.constraint(equalTo: self.centerYAnchor)
      NSLayoutConstraint.activate([left, y])
      label.setContentHuggingPriority(.init(500), for: .horizontal) // Makes sure the label retians it's instrinsic width, as oppose to sticking to the textField left anchor
   }
   /**
    * Create Content `TextField`
    */
   @objc open func createContentTextField() -> UITextField {
      let tf = UITextField()
      tf.isUserInteractionEnabled = false
      tf.textAlignment = .right
      tf.textColor = .gray
      tf.tintColor = #colorLiteral(red: 0, green: 1, blue: 1, alpha: 1) // .cyan
      tf.font = .systemFont(ofSize: 16)
      self.addSubview(tf)
      // Constraints
      configContentTextFieldConstraints(tf)
   }
}
/**
 * Constraints
 */
extension TextCell {
   /**
    * - Description: Configure contentTextField constraints
    */
   @objc open func configContentTextFieldConstraints(_ tf: UITextField) {
      with(tf) {
         $0.translatesAutoresizingMaskIntoConstraints = false
         let y = tf.centerYAnchor.constraint(equalTo: self.centerYAnchor)
         let left = $0.leadingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor, constant: Margin.horizontal)
         left.priority = .init(rawValue: 251)
         let right = $0.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Margin.horizontal)
         NSLayoutConstraint.activate([left, right, y])
         $0.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 250), for: .horizontal) // Makes sure the content doesnt overlap the label
      }
   }
}
#endif
