//
//  Spacer.swift
//  StackUI
//
//  Created by DevYeom on 2022/09/13.
//

#if os(iOS) || os(tvOS)
import UIKit
#else
import AppKit
#endif

public class Spacer: ContentSizeView {

    public init(
        width: CGFloat? = nil,
        height: CGFloat? = nil,
        huggingPriority: LayoutPriority = .defaultHigh
    ) {
        super.init(frame: .zero, contentSize: CGSize(width: width ?? .zero, height: height ?? .zero))
        #if os(iOS) || os(tvOS)
        backgroundColor = .clear
        isUserInteractionEnabled = false
        #else
        wantsLayer = true
        layer?.backgroundColor = Color.clear.cgColor
        #endif

        if width != nil {
            setContentHuggingPriority(huggingPriority, for: .horizontal)
            setContentCompressionResistancePriority(.required, for: .horizontal)
        }
        if height != nil {
            setContentHuggingPriority(huggingPriority, for: .vertical)
            setContentCompressionResistancePriority(.required, for: .vertical)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

public final class FixedSpacer: Spacer {

    public init(
        width: CGFloat? = nil,
        height: CGFloat? = nil
    ) {
        super.init(width: width, height: height, huggingPriority: .required)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

public final class FlexibleSpacer: Spacer {

    public init(_ axis: Axis) {
        switch axis {
        case .horizontal:
            super.init(width: 1, height: nil, huggingPriority: .init(1))
        case .vertical:
            super.init(width: nil, height: 1, huggingPriority: .init(1))
        @unknown default:
            assertionFailure()
            super.init(width: 1, height: nil, huggingPriority: .init(1))
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
