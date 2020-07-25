//
//  AppDelegate.swift
//  ComprasUSA
//
//  Created by MacAir on 17/07/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var windows: UIWindow?

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "ComprasUSA")
       
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Erro ao carregar o Store: \(error.localizedDescription)")
            }
        })
        return container
    }()
}

