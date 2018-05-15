//
//  ViewController.swift
//  ControleRT
//
//  Created by Aloisio on 10/05/18.
//  Copyright © 2018 Aloisio. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
   
    
    @IBOutlet weak var tableView: NSTableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func btnCalcRT(_ sender: Any) {
    }
    
    @IBAction func btnClose(_ sender: Any) {
       NSApplication.shared.terminate(sender)
    }
    
}

//extension ViewController: NSTableViewDataSource {
//    func numberOfRows(in tableView: NSTableView) -> Int {
//        return controleRT.count
//    }
//}
//
//extension ViewController: NSTableViewDelegate {
//    fileprivate enum CellIdentifiers {
//        static let arquitetoIDCell = "arquitetoID"
//        static let nomeCell = "nome"
//        static let clienteCell = "cliente"
//        static let vrVendaCell = "vrvenda"
//        static let valorRtCell = "vrrt"
//    }
//    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
//        var text: String = ""
//        var cellIdentifier: String = ""
//
//    }
//}
