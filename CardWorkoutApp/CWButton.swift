//
//  CWButton.swift
//  CardWorkoutApp
//
//  Created by Himanshu Bhati on 16/07/25.
//

import UIKit

class CWButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String, systemImageName: String) {
        super.init(frame: .zero)
        configuration = .tinted()
        configuration?.title = title
        configuration?.baseBackgroundColor = backgroundColor
        configuration?.baseForegroundColor = backgroundColor
        configuration?.cornerStyle = .large
    
        configuration?.image = UIImage(systemName: systemImageName)
        configuration?.imagePadding = 5
        configuration?.imagePlacement = .trailing
     
        translatesAutoresizingMaskIntoConstraints = false
    }

}
