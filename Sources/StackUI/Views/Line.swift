//
//  Line.swift
//  StackUI
//
//  Created by DevYeom on 2022/09/13.
//

#if os(iOS) || os(tvOS)
import UIKit
#else
import AppKit
#endif

public final class Line: ContentSizeView {

    init(_ axis: Axis, size: CGFloat, color: Color) {
        switch axis {
        case .horizontal:
            super.init(frame: .zero, contentSize: CGSize(width: View.noIntrinsicMetric, height: size))
            setContentHuggingPriority(.required, for: .vertical)
        case .vertical:
            super.init(frame: .zero, contentSize: CGSize(width: size, height: View.noIntrinsicMetric))
            setContentHuggingPriority(.required, for: .horizontal)
        @unknown default:
            assertionFailure()
            super.init(frame: .zero, contentSize: CGSize(width: View.noIntrinsicMetric, height: size))
        }

        #if os(iOS) || os(tvOS)
        backgroundColor = color
        #else
        wantsLayer = true
        layer?.backgroundColor = color.cgColor
        #endif
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
