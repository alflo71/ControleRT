//
//  viewCadastroCliente.swift
//  ControleRT
//
//  Created by Aloisio on 10/05/18.
//  Copyright © 2018 Aloisio. All rights reserved.
//

import Cocoa
import RealmSwift

class viewCadastroCliente: NSViewController {
    
    let realm = try! Realm()
    
    @IBOutlet weak var textClienteID: NSTextField!
    @IBOutlet weak var textNome: NSTextField!
    @IBOutlet weak var textTelefone: NSTextField!
    @IBOutlet weak var textEndereco: NSTextField!
    @IBOutlet weak var textEmail: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ControleRT:\(Realm.Configuration.defaultConfiguration.fileURL!)")
       
    }
    
    @IBAction func btnUpdate(_ sender: Any) {
            let uuid = UUID().uuidString
        
        do {
            try! realm.write {
                let newCliente = Cliente()
                newCliente.clienteID = "\(uuid)"
                newCliente.nome = textNome.stringValue
                newCliente.telefone = textTelefone.stringValue
                newCliente.endereco = textEndereco.stringValue
                newCliente.email = textEmail.stringValue
                
             
                realm.add(newCliente.self)
            }
            
        }  catch let error as NSError {
            print(error.localizedDescription)
        }
        
        
    }
    
    @IBAction func btnClose(_ sender: Any) {
        dismiss(sender)
    }
    
//    override func dismiss(_ sender: Any?) {
//        if let wc = self.view.window?.windowController {
//            wc.dismissController(sender)
//        }
//    }

}
    
    
