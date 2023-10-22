#if os(iOS)
import UIKit
/**
 * A protocol that defines the attributes that all views loaded from a nib must have.
 * - Remark: This protocol is used to simplify the process of loading views from a nib.
 */
public protocol NibLoadableView: AnyObject {
    static var nibName: String { get } // The name of the nib file to load the view from.
}
/**
 * An extension that provides a default implementation of the `nibName` property for views that conform to the `NibLoadableView` protocol.
 * - Remark: This extension assumes that the name of the nib file is the same as the name of the view class.
 */
extension NibLoadableView where Self: UIView {
    static var nibName: String {
        String(describing: self)
    }
}
#endif
