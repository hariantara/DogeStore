//
//  ViewController.swift
//  DogeStores
//
//  Created by Hari on 29/05/21.
//

import UIKit

class ViewController: UIViewController {
    let titleText: UITextView = {
        let text = UITextView()
        text.textColor = hexStringToUIColor(hex: "#2a2a2a")
        text.text = "Welcome to Doge Store !!!"
        text.font = UIFont(name: "Poppins-Bold", size: 20)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .center
        text.isEditable = false
        text.isScrollEnabled = false
        text.backgroundColor = UIColor.clear
        return text
    }()
    
    let subTitle: UITextView = {
        let text = UITextView()
        text.textColor = hexStringToUIColor(hex: "#4a4a4a")
        text.text = "Join us today to Adopt lovely DOGOOOOOO"
        text.font = UIFont(name: "Poppins Regular", size: 15)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .center
        text.isEditable = false
        text.isScrollEnabled = false
        text.backgroundColor = UIColor.clear
        text.textContainer.lineBreakMode = .byCharWrapping
        
        return text
    }()
    
    let dogeIconImg: UIImageView = {
        let dogeIcon = UIImage(named: "dogeIcon")
        let imageView = UIImageView(image: dogeIcon)
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    let buttonStart: UIButton = {
        let button = UIButton()
        button.setTitle("Start Your Journey Now", for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-Bold", size: 17)
        button.setTitleColor(hexStringToUIColor(hex: "ffffff"), for: .normal)
        button.backgroundColor = hexStringToUIColor(hex: "#2a2a2a")
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        button.contentEdgeInsets = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewImageContainer()
        viewTextContainer()
    }
    
    private func viewImageContainer() {
        let containerImage = UIView()
        containerImage.backgroundColor = .white
        
        view.addSubview(containerImage)
        
        containerImage.translatesAutoresizingMaskIntoConstraints = false
        containerImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        containerImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        containerImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        containerImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        containerImage.addSubview(dogeIconImg)

        dogeIconImg.translatesAutoresizingMaskIntoConstraints = false
        dogeIconImg.centerYAnchor.constraint(equalTo: containerImage.centerYAnchor).isActive = true
        dogeIconImg.centerXAnchor.constraint(equalTo: containerImage.centerXAnchor).isActive = true
        dogeIconImg.widthAnchor.constraint(equalTo: containerImage.widthAnchor, multiplier: 0.6).isActive = true
        dogeIconImg.heightAnchor.constraint(equalTo: containerImage.heightAnchor, multiplier: 0.6).isActive = true
        dogeIconImg.bottomAnchor.constraint(equalTo: containerImage.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
    }
    
    private func viewTextContainer() {
        let container = UIView()
        view.backgroundColor = .white
        
        view.addSubview(container)
        
        container.translatesAutoresizingMaskIntoConstraints = false
        container.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        container.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        container.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        
        container.addSubview(titleText)
        
        titleText.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        titleText.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        titleText.topAnchor.constraint(equalTo: container.topAnchor, constant: 30).isActive = true
        
        container.addSubview(subTitle)
        
        subTitle.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        subTitle.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        subTitle.topAnchor.constraint(equalTo: titleText.topAnchor, constant: 40).isActive = true
        subTitle.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 25).isActive = true
        subTitle.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -25).isActive = true
        
        container.addSubview(buttonStart)
        
        buttonStart.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonStart.leadingAnchor.constraint(equalTo: container.layoutMarginsGuide.leadingAnchor, constant: 10).isActive = true
        buttonStart.trailingAnchor.constraint(equalTo: container.layoutMarginsGuide.trailingAnchor, constant: -10).isActive = true
        buttonStart.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15).isActive = true
        
        buttonStart.addTarget(self, action: #selector(navigateToWelcomeScreen), for: .touchUpInside)
    }

//    private func buttonLayout(layout: UILayoutGuide){
//        button.setTitle("Go to Welcome Screen", for: .normal)
//        button.setTitleColor(hexStringToUIColor(hex: "ffffff"), for: .normal)
//        button.backgroundColor = hexStringToUIColor(hex: "#25403F")
//        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
//        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 15, bottom: 10, right: 15)
//
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.centerYAnchor.constraint(equalTo: layout.centerYAnchor).isActive = true
//        button.centerXAnchor.constraint(equalTo: layout.centerXAnchor).isActive = true
//
//        button.addTarget(self, action: #selector(delayLoading), for: .touchUpInside)
//    }
    
    
//    @objc private func delayLoading() {
//        let timer = DispatchTime.now() + 0.5
//        self.button.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
//
//        UIView.animate(withDuration: 2.0, delay: 0, usingSpringWithDamping: CGFloat(0.50),
//                       initialSpringVelocity: CGFloat(6.0),
//                       options: UIView.AnimationOptions.allowUserInteraction,
//                       animations: { () -> Void in self.button.transform = CGAffineTransform.init(scaleX: 1, y: 1)})
//        DispatchQueue.main.asyncAfter(deadline: timer) {
//            self.navigateToWelcomeScreen()
//        }
//    }
    
    @objc private func navigateToWelcomeScreen() {
        print("masuk welcome")
        let welcomeScreenViewController = WelcomeScreen()
        navigationController?.pushViewController(welcomeScreenViewController, animated: true)
        
    }


}

