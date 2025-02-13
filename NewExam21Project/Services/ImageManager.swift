//
//  ImageManager.swift
//  NewExam21Project
//
//  Created by Lepestok Jora on 24.12.2024.
//

import Foundation
import UIKit

protocol IImageManager{
    func getImage() -> [StructImage]
}

class ImageManager: IImageManager {
    
    func getImage() -> [StructImage] {
        return [
            StructImage(imageName: "Cat1", discription: "Привет Женя!!"),
            StructImage(imageName: "Cat2", discription: "Таак что у нас тут за задание?!)"),
            StructImage(imageName: "Cat3", discription: "Посмотрим повнимательнее!"),
            StructImage(imageName: "Cat4", discription: "О Боги, помогите мне решить!!)"),
            StructImage(imageName: "Cat5", discription: "Может так получится?!"),
            StructImage(imageName: "Cat6", discription: "Mission complished!"),
            StructImage(imageName: "Cat7", discription: "Женя! Скорее выздоравливай!)"),
            StructImage(imageName: "Cat8", discription: "Так, так, так! Что - то накрутил!)")
        ]
    }

  
}

