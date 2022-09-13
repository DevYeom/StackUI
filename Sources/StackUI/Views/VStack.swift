//
//  VStack.swift
//  StackUI
//
//  Created by DevYeom on 2022/09/13.
//

#if os(iOS) || os(tvOS)
import UIKit
#else
import AppKit
#endif

public final class VStack: StackView {

    public init(@StackBuilder _ views: () -> [View]) {
        super.init(frame: .zero)
        #if os(iOS) || os(tvOS)
        axis = .vertical
        #else
        orientation = .vertical
        #endif
        views().forEach { addArrangedSubview($0) }
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
