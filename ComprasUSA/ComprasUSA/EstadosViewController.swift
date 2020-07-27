//
//  EstadosViewController.swift
//  ComprasUSA
//
//  Created by MacAir on 26/07/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit
import CoreData

protocol EstadosViewControllesDelegate: class {
    func setSelectedEstados(_ estados: Set<Estado>)
}

class EstadosViewController: UIViewController {

    @IBAction func adicionar(_ sender: UIBarButtonItem) {
        showEstadoAlert()
    }
    
    @IBOutlet weak var tableViewe: UITableView!

    weak var delegate: EstadosViewControllesDelegate?
    var estados: [Estado] = []
    
    var selectedEstados: Set<Estado> = [] {
        didSet {
            delegate?.setSelectedEstados(selectedEstados)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewe.dataSource = self
        tableViewe.delegate = self
        loadEstados()
    }
    
    func loadEstados() {
        let fetchRequest: NSFetchRequest<Estado> = Estado.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        do {
            estados = try context.fetch(fetchRequest)
            tableViewe.reloadData()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func showEstadoAlert(for estado: Estado? = nil) {
        let title = estado == nil ? "Adicionar" : "Editar"
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "Nome do estado"
            if let name = estado?.nomeestado {
                textField.text = name
            }
        }
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
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
