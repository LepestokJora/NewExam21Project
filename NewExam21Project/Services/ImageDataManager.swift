//
//  ImageDataManager.swift
//  NewExam21Project
//
//  Created by Lepestok Jora on 25.12.2024.
//

import Foundation
import UIKit

class ImageDataManager{
    
    private let imageManager = ImageManager()
    private var images: [StructImage] = []
    private var currentIndex = 0
    
    init(images: [StructImage]) {
        self.images = imageManager.getImage()
    }
    
    func getCurrentImage() -> StructImage? {
        guard currentIndex >= 0, currentIndex < images.count else {return nil}
        return images[currentIndex]
    }
    
    func getNextImage(){
        if currentIndex < images.count-1 {
            currentIndex += 1
        }
    }
    
    func getBackImage() {
        if currentIndex > 0 {
            currentIndex -= 1
        }
    }
    
    func getFirstImage() {
        currentIndex = 0
    }
    
}

