//
//  ImageDataManager.swift
//  NewExam21Project
//
//  Created by Lepestok Jora on 25.12.2024.
//

import Foundation
import UIKit


protocol IImageDataManager {
    var imageManager: ImageManager {get set}
    var images: [StructImage] {get set}
    var currentIndex: Int {get set}
    
    func append(images: [StructImage])
    func getCurrentImage() -> StructImage?
    func getNextImage()
    func getBackImage()
    func getFirsImage()
    func getImageManager() -> [StructImage]
}

class ImageDataManager: IImageDataManager{
    
    
    
    internal var imageManager = ImageManager()
    internal var images: [StructImage] = []
    internal var currentIndex = 0
    
    func getImageManager() -> [StructImage]{
        imageManager.getImage()
    }
    
    func append(images: [StructImage]) {
        self.images.append(contentsOf: images)
    }
    
    func getCurrentImage() -> StructImage? {
        guard currentIndex >= 0, currentIndex < images.count else { return nil }
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
    
    func getFirsImage() {
        currentIndex = 0
    }
}

