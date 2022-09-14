//
//  ContentSizeView.swift
//  StackUI
//
//  Created by DevYeom on 2022/09/13.
//

#if os(iOS) || os(tvOS)
import UIKit

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
    public func withHugging(_ axis: NSLayoutConstraint.Axis, _ priority: UILayoutPriority) -> Self {
        setContentHuggingPriority(priority, for: axis)
        return self
    }

    @discardableResult
    public func withCompressionResistance(_ axis: NSLayoutConstraint.Axis, _ priority: UILayoutPriority) -> Self {
        setContentCompressionResistancePriority(priority, for: axis)
        return self
    }

    @discardableResult
    public func withBackgroundColor(_ color: UIColor) -> Self {
        self.backgroundColor = color
        return self
    }

    @discardableResult
    public func withTintColor(_ color: UIColor) -> Self {
        self.tintColor = color
        return self
    }

    @discardableResult
    public func withContentMode(_ contentMode: UIView.ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }

    @discardableResult
    public func withCornerRadius(_ cornerRadius: CGFloat) -> Self {
        layer.masksToBounds = true
        layer.cornerRadius = cornerRadius
        return self
    }

    @discardableResult
    public func withIsHidden(_ isHidden: Bool) -> Self {
        self.isHidden = isHidden
        return self
    }

    @discardableResult
    public func withAlpha(_ alpha: CGFloat) -> Self {
        self.alpha = alpha
        return self
    }

    @discardableResult
    public func withClipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.clipsToBounds = clipsToBounds
        return self
    }

    @discardableResult
    public func withIsUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

//    @discardableResult
//    public func withConstraints(_ closure: (_ make: ConstraintMaker) -> Void) -> Self {
//        self.snp.makeConstraints(closure)
//        return self
//    }
//
//    @discardableResult
//    public func withFixedWidth(_ width: CGFloat) -> Self {
//        return withConstraints({ $0.width.equalTo(width) })
//    }
//
//    @discardableResult
//    public func withFixedHeight(_ height: CGFloat) -> Self {
//        return withConstraints({ $0.height.equalTo(height) })
//    }
//
//    @discardableResult
//    public func withFixedSize(_ size: CGFloat) -> Self {
//        return withConstraints({ $0.size.equalTo(size) })
//    }

}

extension UIStackView {

    public convenience init(axis: NSLayoutConstraint.Axis) {
        self.init()
        self.axis = axis
    }

    public func addArrangedSubviews(_ views: [UIView]) {
        views.forEach { addArrangedSubview($0) }
    }

    public func removeAllArrangedSubviews() {
        arrangedSubviews.forEach { $0.removeFromSuperview() }
    }

    @discardableResult
    public func withAxis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }

    @discardableResult
    public func withAlignment(_ align: UIStackView.Alignment) -> Self {
        self.alignment = align
        return self
    }

    @discardableResult
    public func withDistribution(_ distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution
        return self
    }

    @discardableResult
    public func withSpacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }

}

extension UILabel {

    @discardableResult
    public func withText(_ text: String?) -> Self {
        self.text = text
        return self
    }

    @discardableResult
    public func withTextColor(_ color: UIColor?) -> Self {
        self.textColor = color
        return self
    }

    @discardableResult
    public func withFont(_ font: UIFont) -> Self {
        self.font = font
        return self
    }

    @discardableResult
    public func withAlignment(_ alignment: NSTextAlignment?) -> Self {
        self.textAlignment = alignment ?? .natural
        return self
    }

    @discardableResult
    public func withNumberOfLines(_ number: Int) -> Self {
        self.numberOfLines = number
        return self
    }

    @discardableResult
    public func withLineBreakMode(_ mode: NSLineBreakMode) -> Self {
        self.lineBreakMode = mode
        return self
    }

}

extension UIButton {

    @discardableResult
    public func withTitle(_ title: String?, for state: UIControl.State = .normal) -> Self {
        self.setTitle(title, for: state)
        return self
    }

    @discardableResult
    public func withTitleColor(_ titleColor: UIColor?, for state: UIControl.State = .normal) -> Self {
        self.setTitleColor(titleColor, for: state)
        return self
    }

    @discardableResult
    public func withImage(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
        self.setImage(image, for: state)
        return self
    }

    @discardableResult
    public func withBackgroundImage(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
        self.setBackgroundImage(image, for: state)
        return self
    }

    @discardableResult
    public func withFont(_ font: UIFont) -> Self {
        self.titleLabel?.font = font
        return self
    }

}

extension UIImageView {

    @discardableResult
    public func withImage(_ image: UIImage?) -> Self {
        self.image = image
        return self
    }

    @discardableResult
    public func withHighlightedImage(_ highlightedImage: UIImage?) -> Self {
        self.highlightedImage = highlightedImage
        return self
    }

    @discardableResult
    public func withIsHighlighted(_ isHighlighted: Bool) -> Self {
        self.isHighlighted = isHighlighted
        return self
    }

}

extension UIEdgeInsets {

    public init(all: CGFloat) {
        self.init(top: all, left: all, bottom: all, right: all)
    }

    public init(horizontal: CGFloat = .zero, vertical: CGFloat = .zero) {
        self.init(top: vertical, left: horizontal, bottom: vertical, right: horizontal)
    }

    public static func + (lhs: UIEdgeInsets, rhs: UIEdgeInsets) -> UIEdgeInsets {
        return UIEdgeInsets(top: lhs.top + rhs.top, left: lhs.left + rhs.left, bottom: lhs.bottom + rhs.bottom, right: lhs.right + rhs.right)
    }

    public static func - (lhs: UIEdgeInsets, rhs: UIEdgeInsets) -> UIEdgeInsets {
        return UIEdgeInsets(top: lhs.top - rhs.top, left: lhs.left - rhs.left, bottom: lhs.bottom - rhs.bottom, right: lhs.right - rhs.right)
    }

}

extension NSDirectionalEdgeInsets {

    public init(horizontal: CGFloat) {
        self.init(top: .zero, leading: horizontal, bottom: .zero, trailing: horizontal)
    }

    public init(vertical: CGFloat) {
        self.init(top: vertical, leading: .zero, bottom: vertical, trailing: .zero)
    }

    public init(horizontal: CGFloat, vertical: CGFloat) {
        self.init(top: vertical, leading: horizontal, bottom: vertical, trailing: horizontal)
    }

    public init(all: CGFloat) {
        self.init(top: all, leading: all, bottom: all, trailing: all)
    }

}

#else
#endif
