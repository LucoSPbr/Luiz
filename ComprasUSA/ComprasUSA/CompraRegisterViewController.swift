//
//  CompraRegisterViewController.swift
//  ComprasUSA
//
//  Created by MacAir on 21/07/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit

class CompraRegisterViewController: UIViewController {

    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var tfValor: UITextField!
    @IBOutlet weak var tfFoto: UIImageView!
    @IBOutlet weak var lbEstado: UILabel!
    @IBOutlet weak var tfCartao: UIButton!
    @IBOutlet weak var btAddUpdate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectImage(_ sender:UIButton) {
    }
    
    @IBAction func addUpdateCompra(_ sender:UIButton) {
    }
 
}
