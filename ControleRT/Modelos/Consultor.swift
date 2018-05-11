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
//    let clientes = LinkingObjects(fromType: Cliente.self, property: "nome")
//    let arquitetos = LinkingObjects(fromType: Arquiteto.self, property: "nome")
    
    override static func primaryKey() -> String? {
        return "consultorID"
    }
    
    convenience init(nome: String) {
        self.init()
        self.nome = nome
    }
}
