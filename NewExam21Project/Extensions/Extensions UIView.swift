//
//  Extensions UIView.swift
//  NewExam21Project
//
//  Created by Lepestok Jora on 24.12.2024.
//

import Foundation
import UIKit

private extension UIView {
    
    func addSubview(_ views: UIView...) {
        views.forEach { view in
            self.addSubview(view)
        }
    }
}
