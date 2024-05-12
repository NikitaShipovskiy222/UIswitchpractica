//
//  MakeLabel.swift
//  UISwitch
//
//  Created by Nikita Shipovskiy on 09/05/2024.
//

import UIKit

final class MakeLabel {
    static func makeLabel(x: CGFloat, y: CGFloat, w: CGFloat = 100, h: CGFloat = 10, text: String) -> UILabel {
        {
        $0.text = text
        $0.font = UIFont.systemFont(ofSize: 10, weight: .light)
        $0.textColor = .red
        $0.numberOfLines = 0
        return $0
    }(UILabel(frame: CGRect(x: x, y: y, width: w, height: h)))
        
    }
}
