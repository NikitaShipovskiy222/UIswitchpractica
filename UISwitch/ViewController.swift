//
//  ViewController.swift
//  UISwitch
//
//  Created by Nikita Shipovskiy on 04/03/2024.
//

import UIKit

final class ViewController: UIViewController {
    
    private lazy var mySwitch2: UISwitch = {
        $0.tintColor = UIColor.red

        $0.thumbTintColor = UIColor.green
        
        $0.onTintColor = UIColor.orange

        $0.addTarget(self, action: #selector(isOn(target: )), for: .valueChanged)
        return $0
    }(UISwitch(frame: CGRect(x: 200, y:150, width: 0, height: 0)))
    
    private lazy var mySwitch: UISwitch = {
        
        return $0
    }(UISwitch())
    
    private lazy var mySwitch1: UISwitch = {
        $0.setOn(true, animated: true)
        $0.addTarget(self, action: #selector(switcChange(paramTarget: )), for: .valueChanged)
        return $0
    }(UISwitch(frame: CGRect(x: 100, y: 150, width:0 , height: 0)))
    
    
    private lazy var button: UIButton = {
        $0.backgroundColor = .green
        $0.setTitle("OKAY", for: .normal)
        $0.setTitle("Button", for: .highlighted)
        return $0
    }(UIButton(frame: CGRect(x: 100, y: 200, width: 200, height: 100)))
    
    
    private lazy var makeLabelBackGround = MakeLabel.makeLabel(x: 100, y: 125, text: "Background")
    private lazy var makeLabelBlockButton = MakeLabel.makeLabel(x: 200, y: 125, text: "Block Button")
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        view.addSubview(makeLabelBackGround)
        view.addSubview(makeLabelBlockButton)
        view.addSubview(mySwitch2)
        view.addSubview(mySwitch1)
        view.addSubview(button)
    

    }
    @objc func isOn(target: UISwitch) {
        if target.isOn {
            self.button.isUserInteractionEnabled = false
        } else {
            self.button.isUserInteractionEnabled = true
        }
    }

    @objc func switcChange(paramTarget: UISwitch) {
        print("Paramtr", paramTarget)
        
        if paramTarget.isOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
    }

}

