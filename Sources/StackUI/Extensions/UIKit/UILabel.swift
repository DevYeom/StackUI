//
//  UILabel.swift
//  StackUI
//
//  Created by DevYeom on 2023/01/08.
//

#if os(iOS) || os(tvOS)
import UIKit

extension UILabel {

    @discardableResult
    public func text(_ text: String?) -> Self {
        self.text = text
        return self
    }

    @discardableResult
    public func textColor(_ color: UIColor?) -> Self {
        self.textColor = color
        return self
    }

    @discardableResult
    public func font(_ font: UIFont) -> Self {
        self.font = font
        return self
    }

    @discardableResult
    public func alignment(_ alignment: NSTextAlignment?) -> Self {
        self.textAlignment = alignment ?? .natural
        return self
    }

    @discardableResult
    public func numberOfLines(_ number: Int) -> Self {
        self.numberOfLines = number
        return self
    }

    @discardableResult
    public func lineBreakMode(_ mode: NSLineBreakMode) -> Self {
        self.lineBreakMode = mode
        return self
    }

}
#endif
