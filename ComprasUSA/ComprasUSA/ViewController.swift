//
//  ViewController.swift
//  ComprasUSA
//
//  Created by MacAir on 25/07/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var compra:Compra!
    
    @IBAction func AdicionaEstadoW(_ sender: Any) {
  /*      let alertController = UIAlertController(title: "Add new tag", message: nil, preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: "Add", style: .default) { (_) in
        if let txtField = alertController.textFields?.first, let text = txtField.text {
                    // operations
                    print("Text==>" + text)
                }
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        alertController.addTextField { (textField) in
                textField.placeholder = "Tag"
            }
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
        */
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? CompraRegisterViewController{
            vc.compra = compra
        }
    }
   
}
