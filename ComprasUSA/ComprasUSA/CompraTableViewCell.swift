//
//  CompraTableViewCell.swift
//  ComprasUSA
//
//  Created by MacAir on 26/07/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit

class CompraTableViewCell: UITableViewCell {

    
    @IBOutlet weak var ivImagem: UIImageView!
    @IBOutlet weak var ibNome: UILabel!
    @IBOutlet weak var ibValor: UILabel!
    @IBOutlet weak var ibCartao: UILabel!
    @IBOutlet weak var ibEstado: UILabel!
    
    func prepare(with compra:Compra) {
        ibNome.text = compra.nome
        ibValor.text = String(compra.valor)
        ibCartao.text = String(compra.cartao)
        ibEstado.text = compra.estado
        if let data = compra.imagem {
            ivImagem.image = UIImage(data: data)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
