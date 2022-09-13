//
//  ContentSizeView.swift
//  StackUI
//
//  Created by DevYeom on 2022/09/13.
//

#if os(iOS) || os(tvOS)
import UIKit
#else
import AppKit
#endif

public class ContentSizeView: View {

    var contentSize: Size? {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }

    init(frame: CGRect, contentSize: Size?) {
        super.init(frame: frame)
        self.contentSize = contentSize
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    public override var intrinsicContentSize: Size {
        return contentSize ?? Size(width: View.noIntrinsicMetric, height: View.noIntrinsicMetric)
    }

    #if os(iOS) || os(tvOS)
    public override func sizeThatFits(_ size: Size) -> Size {
        return intrinsicContentSize
    }
    #else
    public override var fittingSize: Size {
        return intrinsicContentSize
    }
    #endif

}
