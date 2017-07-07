//
//  ViewController.swift
//  todo
//
//  Created by Placoderm on 7/6/17.
//  Copyright © 2017 Placoderm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tasks = ["Something cool", "Something very cool", "Something EXTREMEly cool"]
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBAction func beastButtonPressed(_ sender: UIButton) {
        if let input_text = taskTextField.text {
            if input_text.characters.count > 0 {
                tasks.append(input_text)
                tableView.reloadData()
            }
        }
    }
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self//ask the view controller the extension questions!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    //number of rows in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        //cell.textLabel?.text = "\(indexPath.row)"
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    
}
