//
//  ViewController.swift
//  tableviewmvvm
//
//  Created by Apple Macintosh on 6/8/18.
//  Copyright © 2018 Apple Macintosh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableViewitems: UITableView!
    
    @IBOutlet weak var textFieldNewItem: UITextField!
    
    var viewModel: TodoViewModel?
    
    let identifier = "todoItemCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let nib = UINib(nibName: "TodoItemTableViewCell", bundle: nil)
        
        tableViewitems.register(nib, forCellReuseIdentifier: identifier)
        
        viewModel = TodoViewModel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onAdditem(_ sender: UIButton) {
    }
    
}
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (viewModel?.items.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? TodoitemTableViewCell
        
        let itemViewModel = viewModel?.items[indexPath.row]
        
        cell?.configure(withViewModel: itemViewModel!)
        
        return cell!
    }
}

