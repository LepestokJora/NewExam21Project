//
//  Extensions UIStackView .swift
//  NewExam21Project
//
//  Created by Lepestok Jora on 23.12.2024.
//

import Foundation
import UIKit

extension UIStackView {
    func addArrangedSubView(_ views: UIView ...) {
        views.forEach { view in
            self.addArrangedSubview(view)
        }
    }
}
