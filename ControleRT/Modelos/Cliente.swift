//
//  Cliente.swift
//  ControleRT
//
//  Created by Aloisio on 10/05/18.
//Copyright © 2018 Aloisio. All rights reserved.
//

import Foundation
import RealmSwift

class Cliente: Object {
    
    @objc dynamic var clienteID = UUID().uuidString
    @objc dynamic var nome = ""
    @objc dynamic var telefone = ""
    @objc dynamic var endereco = ""
    @objc dynamic var email = ""
    @objc dynamic var arquiteto: Arquiteto?
    @objc dynamic var consultor: Consultor?

    override static func primaryKey() -> String? {
        return "clienteID"
    }
    
}
