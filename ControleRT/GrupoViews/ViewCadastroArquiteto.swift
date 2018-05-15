//
//  ViewCadastroArquiteto.swift
//  ControleRT
//
//  Created by Aloisio on 11/05/18.
//  Copyright © 2018 Aloisio. All rights reserved.
//

import Cocoa
import RealmSwift

class ViewCadastroArquiteto: NSViewController {
    
    let realm = try! Realm()
    
    @IBOutlet weak var textArquitetoID: NSTextField!
    @IBOutlet weak var textNome: NSTextField!
    @IBOutlet weak var textTelefone: NSTextField!
    @IBOutlet weak var textEndereco: NSTextField!
    @IBOutlet weak var textEmail: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func btnUpdate(_ sender: Any) {
        let uuid = UUID().uuidString
        
        do {
            try! realm.write {
                let newArquiteto = Arquiteto()
                newArquiteto.arquitetoID = "\(uuid)"
                newArquiteto.nome = textNome.stringValue
                newArquiteto.telefone = textTelefone.stringValue
                newArquiteto.email = textEmail.stringValue
                
                let cliente = Cliente()
                cliente.arquiteto = newArquiteto.self
                
                let consultor = Consultor()
                consultor.arquiteto = newArquiteto.self
                
                realm.add(newArquiteto.self)
                
                let someClientes = realm.objects(Cliente.self)
                newArquiteto.clientes.append(objectsIn: someClientes)
                newArquiteto.clientes.append(cliente)
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        clearTextFields()
    }
    
    func clearTextFields() {
       textArquitetoID.stringValue = ""
        textNome.stringValue = ""
        textTelefone.stringValue = ""
        textEndereco.stringValue = ""
        textEmail.stringValue = ""
    }
    
    @IBAction func btnClose(_ sender: Any) {
        dismiss(sender)
        
    }
    
}

