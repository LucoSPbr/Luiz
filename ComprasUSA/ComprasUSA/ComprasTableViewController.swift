//
//  ComprasTableViewController.swift
//  ComprasUSA
//
//  Created by MacAir on 25/07/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit

class ComprasTableViewController: UITableViewController {

    var compras: [Compra] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carregaCompras()
    }

    private func carregaCompras() {
        guard let jsonURL = Bundle.main.url(forResource: "compras.json", withExtension: nil) else {return}
        do {
            let jsonData = try Data(contentsOf: jsonURL)
            
            compras = try JSONDecoder().decode([Compra].self, from: jsonData)
            
            for compra in compras {
                print(compra.nome, compra.valor)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
}
