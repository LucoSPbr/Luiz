//
//  ComprasTableViewController.swift
//  ComprasUSA
//
//  Created by MacAir on 25/07/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit
import CoreData

class ComprasTableViewController: UITableViewController, NSFetchedResultsControllerDelegate {
    var label = UILabel(frame: CGRect(x:0, y: 0, width: 200, height: 22))
    var fetchedResultController:NSFetchedResultsController<Compra>!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Sem compras cadastradas"
        label.textAlignment = .center
        carregaCompras()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ViewController {
            vc.compra = fetchedResultController.object(at: (tableView?.indexPathForSelectedRow)! )
        }
    }
    
    func carregaCompras() {
        let fetchRequest: NSFetchRequest<Compra> = Compra.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "nome", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]

        fetchedResultController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        fetchedResultController.delegate = self
        do {
            try fetchedResultController.performFetch()
        } catch {
            print(error.localizedDescription)
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = fetchedResultController.fetchedObjects?.count {
            tableView.backgroundView = count == 0 ? label : nil
            return count
        } else {
            tableView.backgroundView = label
            return 0
        }
     }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as?
            CompraTableViewCell else {
                return UITableViewCell()
        }
        
        let compra = fetchedResultController.object(at: indexPath)
        cell.prepare(with: compra)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let compra = fetchedResultController.object(at: indexPath)
            
            context.delete(compra)
            
            do {
                try context.save()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
//    extension ComprasTableViewController: NSFetchedResultsControllerDelegate {
//        func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
//            tableView.reloadData()
//        }
//    }
}
