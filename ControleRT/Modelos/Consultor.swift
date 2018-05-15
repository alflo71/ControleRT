//
//  Consultor.swift
//  ControleRT
//
//  Created by Aloisio on 10/05/18.
//Copyright © 2018 Aloisio. All rights reserved.
//

import Foundation
import RealmSwift

class Consultor: Object {
    
    @objc dynamic var consultorID = ""
    @objc dynamic var nome = ""
    @objc dynamic var telefone = ""
    @objc dynamic var email = ""
    @objc dynamic var cliente: Cliente?
    @objc dynamic var arquiteto: Arquiteto?
    let clientes = List<Cliente>()
    let arquitetos = List<Arquiteto>()

    
    override static func primaryKey() -> String? {
        return "consultorID"
    }
    
    convenience init(nome: String) {
        self.init()
        self.nome = nome
    }
}
