//
//  AppSetttingsTableViewController.swift
//  ExamApp
//
//  Created by Vuslat Yolcu on 28.03.2023.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

class AppSetttingsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.tableFooterView = UIView()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return QuestionOrderType.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionOrderTypeTableViewCell", for: indexPath)
        
        let questionOrderType = QuestionOrderType.allCases[indexPath.row]
        cell.textLabel?.text = questionOrderType.title
        return cell
    }
}
