//
//  LibraryDataService.swift
//  MovieFest
//
//  Created by Chhaya on 6/1/22.
//

import UIKit

class LibraryDataService: NSObject, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
