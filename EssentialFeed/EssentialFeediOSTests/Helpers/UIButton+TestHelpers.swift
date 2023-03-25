//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Bradley Hoang on 25/03/2023.
//

import UIKit

extension UIButton {
    func simulateTap() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .touchUpInside)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
