//
//  StackView.swift
//  StackUI
//
//  Created by DevYeom on 2022/09/13.
//

#if os(iOS) || os(tvOS)
import UIKit
#else
import AppKit
#endif

#if os(iOS) || os(tvOS)
public typealias View = UIView
public typealias StackView = UIStackView
public typealias Size = CGSize
public typealias Axis = NSLayoutConstraint.Axis
public typealias Color = UIColor
public typealias LayoutPriority = UILayoutPriority
#else
public typealias View = NSView
public typealias StackView = NSStackView
public typealias Size = NSSize
public typealias Axis = NSLayoutConstraint.Orientation
public typealias Color = NSColor
public typealias LayoutPriority = NSLayoutConstraint.Priority
#endif
