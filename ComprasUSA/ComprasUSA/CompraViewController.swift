//
//  CompraViewController.swift
//  ComprasUSA
//
//  Created by MacAir on 26/07/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit

class CompraViewController: UIViewController {

    
    @IBOutlet weak var ivImagem: UIImageView!
    @IBOutlet weak var lbNome: UILabel!
    @IBOutlet weak var lbValor: UILabel!
    @IBOutlet weak var lbCartao: UILabel!
    @IBOutlet weak var lbEstado: UILabel!
    @IBOutlet weak var lbCotacao: UILabel!
    @IBOutlet weak var lbIOF: UILabel!
    
    var compra: Compra!
        
    override func viewDidLoad() {
        super.viewDidLoad()

     //   ivImagem.image = UIImage(named: compra.imageWide)
        lbNome.text = compra.nome
     //   lbValor.text = compra.valor
     //   lbCartao.text = compra.cartao
        lbEstado.text = compra.estado
        lbCotacao.text = "3.2"
        lbIOF.text = "1.2"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: true, completion: nil)
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
