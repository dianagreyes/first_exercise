//
//  TablaDinamicaViewController.swift
//  Practica
//
//  Created by Diana G Reyes S on 12/03/22.
//

import UIKit

class TablaDinamicaViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let listaDeAlumnos: [String] = ["Diana", "Cristina", "Jorge", "Roberto"]
    let listaDeRoles: [String] = ["Alumno", "Profesor", "Director", "Subdirector"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.register(UINib(nibName: "MiCeldaTableViewCell", bundle: nil), forCellReuseIdentifier: "CellEmpleadoIndividual")
        tableView.rowHeight = 100
        
        // Do any additional setup after loading the view.
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

extension TablaDinamicaViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaDeAlumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: "CellEmpleadoIndividual", for: indexPath) as? MiCeldaTableViewCell else {
            
            return UITableViewCell()
        }
        
        
        cell.labelRol.text = listaDeRoles[indexPath.row]
        cell.labelNombre.text = listaDeAlumnos[indexPath.row]
        
        return cell
    }
    
    
}
