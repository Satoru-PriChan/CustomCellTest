//
//  ViewController.swift
//  CustomCellTest
//
//  Created by USER on 2019/05/08.
//  Copyright © 2019 SoLaMi Smile. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var myTableView: UITableView!
    let reuseIdentifier = "myCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.register(UINib.init(nibName: "myTableViewCell", bundle: nil), forCellReuseIdentifier: "myCell")

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! myTableViewCell
        cell.mymyLabel.text = "Yay!"
        return cell
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
