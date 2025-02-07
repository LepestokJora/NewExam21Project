//
//  ViewController.swift
//  NewExam21Project
//
//  Created by Lepestok Jora on 19.12.2024.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    private var image = UIImageView()
    private let imageContainerView = UIView()
    private var textLable = UILabel()
    private let fixitLable = CGFloat(200)
    
    private let stackView = UIStackView()
    private let horizontalStackView = UIStackView()
    
    private let imageManager = ImageManager()
    private let imageDataManager = ImageDataManager(images: [])
    
    private let blueButton = CustomUIButton(hasShadow: true)
    private let whiteButton = CustomUIButton(hasShadow: true)
    private let redButton = CustomUIButton(hasShadow: false)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
       
        setupStackView()
        setupLable()
        setupButton()
        addActionButton()
        setupImageView()
        updateUI()
        
        view.addSubview(stackView)
        view.addSubview(redButton)
        
        imageContainerView.addSubview(image)
        setupLayout()
        setupImageContainerView()
    }
    
    private func updateUI() {
        if let currectImages = imageDataManager.getCurrentImage(){
            image.image = UIImage(named: currectImages.imageName)
            textLable.text = currectImages.discription
        }
    }
    
    private func setupImageView() {
        image.layer.cornerRadius = 10
    }
    
    private func setupLable() {
        textLable.font = .systemFont(ofSize: 18, weight: .bold)
        textLable.backgroundColor = .white
        textLable.layer.cornerRadius = 6
        textLable.clipsToBounds = true
        textLable.textAlignment = .center
    }
    
    private func setupButton() {
        blueButton.backgroundColor = .blue
        whiteButton.backgroundColor = .white
        whiteButton.setTitleColor(.black, for: .normal)
        redButton.backgroundColor = .red
        
        blueButton.setTitle("Back", for: .normal)
        whiteButton.setTitle("Next", for: .normal)
        redButton.setTitle("First", for: .normal)
    }
    
    private func addActionButton() {
        
        let nextButton = UIAction { _ in
            self.imageDataManager.getNextImage()
            self.updateUI()
        }
        
        whiteButton.addAction(nextButton, for: .touchUpInside)
        
        let backButton = UIAction { _ in
            self.imageDataManager.getBackImage()
            self.updateUI()
        }
        
        blueButton.addAction(backButton, for: .touchUpInside)
        
        let firsButton = UIAction { _ in
            self.imageDataManager.getFirstImage()
            self.updateUI()
        }
        
        redButton.addAction(firsButton, for: .touchUpInside)
    }
    
    private func setupStackView(){
        
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        stackView.spacing = 10
        
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
        imageContainerView.layer.shadowColor = UIColor.black.cgColor
        imageContainerView.layer.shadowOffset = CGSize(width: 3, height: 3)
        imageContainerView.layer.shadowOpacity = 0.6
        imageContainerView.layer.cornerRadius = 15
        imageContainerView.clipsToBounds = false
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        textLable.translatesAutoresizingMaskIntoConstraints = false
        imageContainerView.translatesAutoresizingMaskIntoConstraints = false
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        whiteButton.translatesAutoresizingMaskIntoConstraints = false
        redButton.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            imageContainerView.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 30),
            imageContainerView.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            imageContainerView.heightAnchor.constraint(equalToConstant: 300),
            imageContainerView.widthAnchor.constraint(equalToConstant: 400),
            
            //textLable.topAnchor.constraint(equalTo: imageContainerView.bottomAnchor, constant: 40),
            textLable.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            textLable.widthAnchor.constraint(equalToConstant: fixitLable),
            textLable.heightAnchor.constraint(equalToConstant: 30),
            
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

    


