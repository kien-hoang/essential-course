//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Bradley Hoang on 25/03/2023.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
