//
//  ViewCadastroConsultor.swift
//  ControleRT
//
//  Created by Aloisio on 11/05/18.
//  Copyright © 2018 Aloisio. All rights reserved.
//

import Cocoa
import RealmSwift
class ViewCadastroConsultor: NSViewController {
    
    let realm = try! Realm()
    
    @IBOutlet weak var textConsultorID: NSTextField!
    @IBOutlet weak var textNome: NSTextField!
    @IBOutlet weak var textTelefone: NSTextField!
    @IBOutlet weak var textEmail: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    @IBAction func btnUpdate(_ sender: Any) {
        let uuid = UUID().uuidString
        
        do {
            try! realm.write {
                let newConsultor = Consultor()
                newConsultor.consultorID = "\(uuid)"
                newConsultor.nome = textNome.stringValue
                newConsultor.telefone = textTelefone.stringValue
                newConsultor.email = textEmail.stringValue
               
                let cliente = Cliente()
                cliente.consultor = newConsultor.self
                
                let arquiteto = Arquiteto()
                arquiteto.consultor = newConsultor.self
                
                realm.add(newConsultor.self)
                
                let someClientes = realm.objects(Cliente.self)
                newConsultor.clientes.append(objectsIn: someClientes)
                newConsultor.clientes.append(cliente)
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        clearTextFields()
    }
    
    func clearTextFields() {
        textConsultorID.stringValue = ""
        textNome.stringValue = ""
        textTelefone.stringValue = ""
        textEmail.stringValue = ""
    }

    @IBAction func btnClose(_ sender: Any) {
        dismiss(sender)
    }
    
}
