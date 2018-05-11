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
    
    @objc dynamic let consultorID = UUID().uuidString
    @objc dynamic var nome = ""
    @objc dynamic var cliente: Cliente?
    @objc dynamic var arquiteto: Arquiteto?

}
