//
//  StackBuilder.swift
//  StackUI
//
//  Created by DevYeom on 2022/09/13.
//

#if os(iOS) || os(tvOS)
import UIKit
#else
import AppKit
#endif

@resultBuilder
public struct StackBuilder {

    public static func buildBlock(_ views: View...) -> [View] {
        return views
    }

    public static func buildEither(first component: [View]) -> [View] {
        return component
    }

    public static func buildEither(second component: [View]) -> [View] {
        return component
    }

    public static func buildOptional(_ component: [View]?) -> [View] {
        guard let component = component else { return [] }
        return component
    }

    public static func buildExpression(_ expression: View) -> [View] {
        return [expression]
    }

    public static func buildBlock(_ components: [View]...) -> [View] {
        return components.flatMap { $0 }
    }

}
