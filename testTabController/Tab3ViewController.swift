//
//  Tab3ViewController.swift
//  testTabController
//
//  Created by Gary Jeppesen on 5/25/21.
//

import UIKit

class Tab3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        navigationController?.navigationBar.barTintColor = .systemBlue
        navigationController?.navigationBar.tintColor = .white
        
        self.title = "Family"

        let dataLabel: UILabel  = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height))
        dataLabel.text          = "Third View"
        dataLabel.textColor     = UIColor.black
        dataLabel.textAlignment = .center

        view.addSubview(dataLabel)
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
