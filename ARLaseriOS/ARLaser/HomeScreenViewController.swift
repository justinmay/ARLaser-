//
//  HomeScreenViewController.swift
//  ARLaser
//
//  Created by Justin May on 8/25/18.
//  Copyright © 2018 Justin May. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {

    @IBOutlet weak var teamSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        teamSwitch.backgroundColor = UIColor(red:1.00, green:0.20, blue:0.40, alpha:1.0)
        teamSwitch.layer.cornerRadius = 16.0;
        teamSwitch.onTintColor = UIColor(red:0.00, green:0.46, blue:0.95, alpha:1.0)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpViews() {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        let gradient = CAGradientLayer()
        let top = UIColor(red:0.30, green:0.30, blue:0.30, alpha:1.0)
        let bottom = UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0)
        gradient.frame = view.bounds
        gradient.colors = [top.cgColor, bottom.cgColor]
        self.view.layer.insertSublayer(gradient, at: 0)
    }

}
