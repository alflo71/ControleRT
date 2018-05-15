//
//  Arquiteto.swift
//  ControleRT
//
//  Created by Aloisio on 10/05/18.
//Copyright © 2018 Aloisio. All rights reserved.
//

import Foundation
import RealmSwift

class Arquiteto: Object {
    
    @objc dynamic var arquitetoID = UUID().uuidString
    @objc dynamic var nome = ""
    @objc dynamic var telefone = ""
    @objc dynamic var email = ""
    @objc dynamic var cliente: Cliente?
    @objc dynamic var consultor: Consultor?
    let clientes = List<Cliente>()
    
    // Dados de conta corrente
    @objc dynamic var contaID =  ""
    @objc dynamic var banco = ""
    @objc dynamic var agencia = ""
    @objc dynamic var conta = ""
    
    
    override static func primaryKey() -> String? {
        return "arquitetoID"
    }
    
    convenience init(nome: String) {
        self.init()
        self.nome = nome
    }
}
