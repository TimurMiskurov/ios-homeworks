//
//  SceneDelegate.swift
//  navigation_Timur_Miskurov_Ios_Cp4
//
//  Created by Miskurov Timur on 17.05.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let _ = (scene as? UIWindowScene) else { return }
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        //Создаем windows
        let window = UIWindow(windowScene: windowScene)
        
        //Создаем объект profileViewcontroller
        let profileViewСontroller = ProfileViewController()
        let profileNovigationViewController = UINavigationController(rootViewController: profileViewСontroller)
        profileNovigationViewController.tabBarItem.title = "Profile"
        profileNovigationViewController.tabBarItem.image = UIImage(systemName: "person.fill")
       

        
        //Создаем объект feedViewController
        let feedViewController = FeedViewController()
        let feedNovigationViewController = UINavigationController(rootViewController: feedViewController)
        feedNovigationViewController.tabBarItem.title = "Feed"
        feedNovigationViewController.tabBarItem.image = UIImage(systemName: "bolt.fill")
      
        
        //Создаем объект tabViewController
        let tabViewController = UITabBarController()
        tabViewController.viewControllers = [profileNovigationViewController, feedNovigationViewController]
        tabViewController.tabBar.backgroundColor = UIColor.white
        tabViewController.tabBar.tintColor = UIColor.blue
        
        //Устанавливаем NavigationViewController как rootController
        window.rootViewController =  tabViewController
        
        //Устанавливаем ранее созданное window как главное windows и делаем его видимым
        self.window = window
        window.makeKeyAndVisible()
    }
}
