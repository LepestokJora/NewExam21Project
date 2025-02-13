//
//  SceneDelegate.swift
//  NewExam21Project
//
//  Created by Lepestok Jora on 19.12.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    //var manager = ImageManager()
    
    var dataManager = ImageDataManager()
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        //Создаем окно для сцены
        let window = UIWindow(windowScene: windowScene)
        //Устанавливаем корневой контроллкр в окне
        window.rootViewController = ViewController()
        //Отображаем окно на экране
        window.makeKeyAndVisible()
        self.window = window
    }

}

