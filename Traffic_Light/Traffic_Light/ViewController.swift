//
//  ViewController.swift
//  Traffic_Light
//
//  Created by Сампилов Ильдар on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var nextButton: UIButton!
    
    enum ActiveColor {
        case red
        case yellow
        case green
        case empty
    }
    
    var activeColor: ActiveColor = .empty
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        nextButton.layer.cornerRadius = 10
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }

    @IBAction func nextButtonDidTapped() {
        switch activeColor {
        case .empty:
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
            activeColor = .red
        case .red:
            yellowView.alpha = 1
            greenView.alpha = 0.3
            redView.alpha = 0.3
            activeColor = .yellow
        case .yellow:
            yellowView.alpha = 0.3
            greenView.alpha = 1
            redView.alpha = 0.3
            activeColor = .green
        case .green:
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
            redView.alpha = 1
            activeColor = .red
        }
    }
}

