//
//  CompraRegisterViewController.swift
//  ComprasUSA
//
//  Created by MacAir on 26/07/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit

class CompraRegisterViewController: UIViewController {
   
    var compra: Compra!
    
    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var ivImagem: UIImageView!
    @IBOutlet weak var tfEstado: UITextField!
    @IBOutlet weak var tfValor: UITextField!
    @IBOutlet weak var tfCartao: UISwitch!
          
    
    @IBAction func btnCadastrar(_ sender: UIButton) {
        if compra == nil { compra = Compra(context: context)}
        compra.nome = tfNome.text
        compra.estado = tfEstado.text
        compra.valor = Double(tfValor.text!) ?? 0
        compra.cartao = Bool(tfCartao.isOn)
        compra.imagem = ivImagem.image?.jpegData(compressionQuality: 0.8)
        do {
            try context.save()
        } catch {
            print(error.localizedDescription)
        }
        navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var selecionaImagem: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if compra != nil {
            tfNome.text = compra.nome
          //  tfValor.text = compra.valor
          //  tfCartao.text = compra.cartao
            tfEstado.text = compra.estado
           // btnCadastrar(<#T##sender: Any##Any#>)
        }

    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
