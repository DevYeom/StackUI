//
//  UIView.swift
//  StackUI
//
//  Created by DevYeom on 2023/01/08.
//

#if os(iOS) || os(tvOS)
import UIKit
import SnapKit

extension UIView {

    @discardableResult
    public func addSubviews(_ views: [UIView]) -> Self {
        views.forEach { self.addSubview($0) }
        return self
    }

    @discardableResult
    public func embed(in superview: UIView) -> Self {
        superview.addSubview(self)
        return self
    }

    @discardableResult
    public func assign(to view: inout UIView) -> Self {
        view = self
        return self
    }

    @discardableResult
    public func hugging(_ axis: NSLayoutConstraint.Axis, _ priority: UILayoutPriority) -> Self {
        setContentHuggingPriority(priority, for: axis)
        return self
    }

    @discardableResult
    public func compressionResistance(_ axis: NSLayoutConstraint.Axis, _ priority: UILayoutPriority) -> Self {
        setContentCompressionResistancePriority(priority, for: axis)
        return self
    }

    @discardableResult
    public func backgroundColor(_ color: UIColor) -> Self {
        self.backgroundColor = color
        return self
    }

    @discardableResult
    public func tintColor(_ color: UIColor) -> Self {
        self.tintColor = color
        return self
    }

    @discardableResult
    public func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }

    @discardableResult
    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        layer.masksToBounds = true
        layer.cornerRadius = cornerRadius
        return self
    }

    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        self.isHidden = isHidden
        return self
    }

    @discardableResult
    public func alpha(_ alpha: CGFloat) -> Self {
        self.alpha = alpha
        return self
    }

    @discardableResult
    public func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.clipsToBounds = clipsToBounds
        return self
    }

    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

    @discardableResult
    public func constraints(_ closure: (_ make: ConstraintMaker) -> Void) -> Self {
        self.snp.makeConstraints(closure)
        return self
    }

    @discardableResult
    public func fixedWidth(_ width: CGFloat) -> Self {
        return constraints({ $0.width.equalTo(width) })
    }

    @discardableResult
    public func fixedHeight(_ height: CGFloat) -> Self {
        return constraints({ $0.height.equalTo(height) })
    }

    @discardableResult
    public func fixedSize(_ size: CGFloat) -> Self {
        return constraints({ $0.size.equalTo(size) })
    }

}
#endif
