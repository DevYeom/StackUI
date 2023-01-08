//
//  UIButton.swift
//  StackUI
//
//  Created by DevYeom on 2023/01/08.
//

#if os(iOS) || os(tvOS)
import UIKit

extension UIButton {

    @discardableResult
    public func title(_ title: String?, for state: UIControl.State = .normal) -> Self {
        self.setTitle(title, for: state)
        return self
    }

    @discardableResult
    public func titleColor(_ titleColor: UIColor?, for state: UIControl.State = .normal) -> Self {
        self.setTitleColor(titleColor, for: state)
        return self
    }

    @discardableResult
    public func image(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
        self.setImage(image, for: state)
        return self
    }

    @discardableResult
    public func backgroundImage(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
        self.setBackgroundImage(image, for: state)
        return self
    }

    @discardableResult
    public func font(_ font: UIFont) -> Self {
        self.titleLabel?.font = font
        return self
    }

}
#endif
