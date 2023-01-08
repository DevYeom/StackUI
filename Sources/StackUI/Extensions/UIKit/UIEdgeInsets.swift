//
//  UIEdgeInsets.swift
//  StackUI
//
//  Created by DevYeom on 2023/01/08.
//

#if os(iOS) || os(tvOS)
import UIKit

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
#endif
