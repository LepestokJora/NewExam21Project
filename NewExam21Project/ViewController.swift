//
//  ViewController.swift
//  NewExam21Project
//
//  Created by Lepestok Jora on 19.12.2024.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    private let image = UIImageView()
    private let imageContainerView = UIView()
    private let textLable = UILabel()
    
    private let stackView = UIStackView()
    private let horizontalStackView = UIStackView()
    
    private let blueButton = CustomUIButton(hasShadow: true)
    private let whiteButton = CustomUIButton(hasShadow: true)
    private let redButton = CustomUIButton(hasShadow: false)
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupStackView()
        setupLable()
        setupButton()
        
        
        view.addSubview(stackView)
        view.addSubview(redButton)
        
        imageContainerView.addSubview(image)
        setupLayout()
        setupImageContainerView()
    }
    
    private func setupLable() {
        
        textLable.text = "Здесь должен быть массив"
        textLable.font = .systemFont(ofSize: 30, weight: .bold)
        textLable.backgroundColor = .red
        textLable.layer.cornerRadius = 10
        textLable.clipsToBounds = true
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
    
    private func setupStackView(){
        
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        stackView.spacing = 60
        
        horizontalStackView.axis = .horizontal
        horizontalStackView.distribution = .fillEqually
        horizontalStackView.alignment = .fill
        horizontalStackView.spacing = 50
        
        horizontalStackView.addArrangedSubView(whiteButton,
                                               blueButton
        )
        
        stackView.addArrangedSubView(imageContainerView,
                                     textLable,
                                     horizontalStackView
        )
    }
    
    private func setupImageContainerView() {
        
        imageContainerView.backgroundColor = .gray
        imageContainerView.layer.frame.size = .init(width: 100, height: 100)
        imageContainerView.layer.shadowColor = UIColor.black.cgColor
        imageContainerView.layer.shadowOffset = CGSize(width: 20, height: 20)
        imageContainerView.layer.shadowOpacity = 0.7
        imageContainerView.layer.cornerRadius = 10
        
        imageContainerView.addSubview(image)
    }
    
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        textLable.translatesAutoresizingMaskIntoConstraints = false
        imageContainerView.translatesAutoresizingMaskIntoConstraints = false
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        whiteButton.translatesAutoresizingMaskIntoConstraints = false
        redButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -350),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            imageContainerView.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 10),
            imageContainerView.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            imageContainerView.heightAnchor.constraint(equalToConstant: 300),
            imageContainerView.widthAnchor.constraint(equalToConstant: 400),
            
            image.topAnchor.constraint(equalTo: imageContainerView.topAnchor),
            image.bottomAnchor.constraint(equalTo: imageContainerView.bottomAnchor),
            image.leadingAnchor.constraint(equalTo: imageContainerView.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: imageContainerView.trailingAnchor),
            
            redButton.topAnchor.constraint(equalTo: horizontalStackView.bottomAnchor, constant: 80),
            redButton.heightAnchor.constraint(equalToConstant: 80),
            redButton.widthAnchor.constraint(equalToConstant: 100),
            redButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),
            redButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150),
            redButton.centerYAnchor.constraint(equalTo: stackView.bottomAnchor),
            
        ])
        
    }
    
}

