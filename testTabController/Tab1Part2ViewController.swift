//
//  Tab1Part2ViewController.swift
//  testTabController
//
//  Created by Gary Jeppesen on 5/25/21.
//

import UIKit

class Tab1Part2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor  = .white
        configureNavigationBar(withTitle: "Tab 1 Part 2", prefersLargeTitles: false)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.cancel, target: self, action: #selector(doDismiss))
        
        let dataLabel: UILabel  = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height))
        dataLabel.text          = "First View - Part Two"
        dataLabel.textColor     = UIColor.black
        dataLabel.textAlignment = .center

        view.addSubview(dataLabel)
    }
    
    @objc func doDismiss() {
        self.dismiss(animated: true)
    }

    func configureNavigationBar(withTitle title: String, prefersLargeTitles: Bool) {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.backgroundColor = .systemBlue
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        navigationController?.navigationBar.prefersLargeTitles = prefersLargeTitles
        navigationItem.title = title
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.overrideUserInterfaceStyle = .dark
    }

}
