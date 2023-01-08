//
//  UIStackView.swift
//  StackUI
//
//  Created by DevYeom on 2023/01/08.
//

#if os(iOS) || os(tvOS)
import UIKit

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
    public func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }

    @discardableResult
    public func alignment(_ align: UIStackView.Alignment) -> Self {
        self.alignment = align
        return self
    }

    @discardableResult
    public func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution
        return self
    }

    @discardableResult
    public func spacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }

}
#endif
