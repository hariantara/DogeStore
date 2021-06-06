//
//  WelcomeScreen.swift
//  DogeStores
//
//  Created by Hari on 29/05/21.
//

import UIKit

class WelcomeScreen: UIViewController {
    let bgColor = hexStringToUIColor(hex: "#ffffff")
    let label = UILabel()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "Welcome Screen"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = view.layoutMarginsGuide
        
        view.backgroundColor = bgColor;
        
        label.text = "Welcome to My Screen"
        label.textColor = hexStringToUIColor(hex: "#2a2a2a")
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: layout.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: layout.centerYAnchor).isActive = true
    }
}
