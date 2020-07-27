//
//  UIViewController+CoreData.swift
//  ComprasUSA
//
//  Created by MacAir on 26/07/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import Foundation
import UIKit
import CoreData

extension UIViewController {
    var appDelegate: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    var context:  NSManagedObjectContext {
        return appDelegate.persistentContainer.viewContext
    }
}
