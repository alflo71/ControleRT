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
        // Do view setup here.
    }
    
    @IBAction func btnUpdate(_ sender: Any) {
        
        try! realm.write {
            var newCliente = Cliente()
            newCliente.clienteID = textClienteID.stringValue
            newCliente.nome = textNome.stringValue
            newCliente.telefone = textTelefone.stringValue
            newCliente.endereco = textEndereco.stringValue
            newCliente.email = textEmail.stringValue
            
            realm.add(newCliente.self)
        }
        
    }
    
    @IBAction func btnClose(_ sender: Any) {
        
        
    }
    
    
    
}
