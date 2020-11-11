//
//  StudyingTipsViewController.swift
//  Messenger
//
//  Created by Austin Felder on 11/10/20.
//  Copyright © 2020 ASN GROUP LLC. All rights reserved.
//

import UIKit
import SwiftUI

class StudyingTipsViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
                
    }
    


}

extension StudyingTipsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("click")
    }
}

extension StudyingTipsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "Yerrr"
        return cell
    }

}
