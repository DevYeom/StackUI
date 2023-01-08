//
//  NSDirectionalEdgeInsets.swift
//  StackUI
//
//  Created by DevYeom on 2022/09/13.
//

#if os(iOS) || os(tvOS)
import UIKit

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
#endif
