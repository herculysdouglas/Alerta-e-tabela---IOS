//
//  ViewController.swift
//  Ortografia: Uso dos porquês
//
//  Created by Herculys Douglas on 04/04/17.
//  Copyright © 2017 HDCM. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var porque:[String] = []
    var significado:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        porque.append ("Porque")
        porque.append ("Por que")
        porque.append ("Porquê")
        porque.append ("Por quê")
        
        significado.append ("Resposta, explicação;" + "\n" + "Ex: Ele dormiu cedo, porque estava cansado.")
        significado.append ("Início de pergunta e pergunta indireta." + "\n" + " Ex: Por que ele dormiu cedo? \n Não entendi por que ele dormiu cedo.")
        significado.append ("Usado depois do artigo = o motivo;" + "\n" + "Ex: Não entendi o porquê dele ter dormido cedo.")
        significado.append ("Usado sempre no final de pergunta;" + "\n" + "Ex: Ele dormiu cedo, por quê?")
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return porque.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = porque [ indexPath.row ]
        return celula
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertaController = UIAlertController(title: "O uso dos Porquês", message: significado [ indexPath.row ], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        
        present(alertaController, animated: true, completion: nil)
        
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    
}

