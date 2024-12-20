//
//  ViewController.swift
//  NewExam21Project
//
//  Created by Lepestok Jora on 19.12.2024.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    private let image = UIImage()
    private let textLable = UILabel()
    private let stackView = UIStackView()
    
    private let blueButton = CustomUIButton(hasShadow: true)
    private let whiteButton = CustomUIButton(hasShadow: true)
    private let redButton = CustomUIButton(hasShadow: false)
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        
        view.addSubview(stackView)
        
    }
    
    
    private func setupButton() {
        
        blueButton.backgroundColor = .blue
        whiteButton.backgroundColor = .white
        whiteButton.setTitleColor(.black, for: .normal)
        redButton.backgroundColor = .red
        
        blueButton.setTitle("Last", for: .normal)
        whiteButton.setTitle("Next", for: .normal)
        redButton.setTitle("First", for: .normal)
        
    }
    
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        textLable.translatesAutoresizingMaskIntoConstraints = false
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        whiteButton.translatesAutoresizingMaskIntoConstraints = false
        redButton.translatesAutoresizingMaskIntoConstraints = false
        
        
       // stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 30)
        
        
    }
    
    
    
}

