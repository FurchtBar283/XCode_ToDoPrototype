//
//  ViewController.swift
//  ToDoListe
//
//  Created by Michael Stroh on 05.12.15.
//  Copyright © 2015 Michael Stroh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var toDos: [String] = ["Italienisch Vokabeln lernen", "Web-Programmierung lernen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Zelle innerhalb der TableView bei der TableView selbst registrieren
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "toDoCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Vorab registrierte Klasse holen
        let cell = tableView.dequeueReusableCellWithIdentifier("toDoCell", forIndexPath: indexPath) as UITableViewCell
        // Array-Eintrag jeweils in Cell speichern
        cell.textLabel?.text = toDos[indexPath.row]
        
        return cell
    }
    
}

