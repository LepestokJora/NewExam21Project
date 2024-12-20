//
//  CustomUIButton.swift
//  NewExam21Project
//
//  Created by Lepestok Jora on 21.12.2024.
//

import Foundation
import UIKit

class CustomUIButton: UIButton {
    
    init(hasShadow: Bool) {
        super.init(frame: .zero)
        setupButton(hasShadow: hasShadow)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButton(hasShadow: Bool) {
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 12)
        layer.cornerRadius = 10
        
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        if hasShadow {
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
            self.layer.shadowOpacity = 1
            self.layer.shadowRadius = 10
        }
    }
    
    
}
