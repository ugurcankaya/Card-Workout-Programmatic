//
//  CWButton.swift
//  CardWorkout-Programmatic
//
//  Created by UGURCAN KAYA on 4/15/20.
//  Copyright © 2020 Veri Expo. All rights reserved.
//

import UIKit

class CWButton: UIButton {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String){
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        setTitle(title, for: UIControl.State.normal)
        configure()
    }
    
    func configure(){
        layer.cornerRadius = 8
        titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
        
    }

}
