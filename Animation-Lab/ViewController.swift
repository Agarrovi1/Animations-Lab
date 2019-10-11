//
//  ViewController.swift
//  Animation-Lab
//
//  Created by Angela Garrovillas on 10/11/19.
//  Copyright © 2019 Angela Garrovillas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var circle: UIView = {
        var view = UIView()
        var frame = view.frame
        frame.size.height = 150
        frame.size.width = 150
        view.frame = frame
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        view.layer.borderColor = UIColor.yellow.cgColor
        view.layer.borderWidth = 2
        view.layer.cornerRadius = view.frame.height / 2
        return view
    }()
    
    private func addSubviews() {
        self.view.addSubview(circle)
    }
    private func setConstraints() {
        circle.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        circle.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        circle.heightAnchor.constraint(equalToConstant: circle.frame.height).isActive = true
        circle.widthAnchor.constraint(equalToConstant: circle.frame.width).isActive = true
    }
    private func setUI() {
        self.view.backgroundColor = .white
        addSubviews()
        setConstraints()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        // Do any additional setup after loading the view.
    }


}

