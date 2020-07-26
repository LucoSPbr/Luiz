//
//  Compra.swift
//  ComprasUSA
//
//  Created by MacAir on 25/07/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import Foundation

struct Compra: Codable {
    let nome: String
    let estado: String
    let valor: Double
    let cartao: Bool
    let imagem: String
}
