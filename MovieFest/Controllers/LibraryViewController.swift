//
//  ViewController.swift
//  MovieFest
//
//  Created by Chhaya on 5/31/22.
//

import UIKit

class LibraryViewController: UIViewController {
    @IBOutlet var dataService : LibraryDataService!
    @IBOutlet weak var libraryTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.libraryTableView.dataSource = dataService
        self.libraryTableView.delegate = dataService
    }

    
    
}

