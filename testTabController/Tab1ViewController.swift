//
//  Tab1ViewController.swift
//  testTabController
//
//  Created by Gary Jeppesen on 5/25/21.
//

import UIKit

class Tab1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        
        navigationController?.navigationBar.barTintColor = .systemBlue
        navigationController?.navigationBar.tintColor = .white
        
        self.title = "Testing"
        
        let addButton = UIImage(systemName: "plus")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: addButton, style: .plain, target: self, action: #selector(addActivity))

        let dataLabel: UILabel  = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height))
        dataLabel.text          = "First View"
        dataLabel.textColor     = UIColor.black
        dataLabel.textAlignment = .center

        view.addSubview(dataLabel)
    }
    
    @objc func addActivity() {
        let vc = Tab1Part2ViewController()
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        //nav.present(vc, animated: true, completion: nil)
        //nav.pushViewController(vc, animated: false)
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
