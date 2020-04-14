//
//  RulesVC.swift
//  CardWorkout-Programmatic
//
//  Created by UGURCAN KAYA on 4/15/20.
//  Copyright © 2020 Veri Expo. All rights reserved.
//

import UIKit

class RulesVC: UIViewController {

    
    let titleLabel    = UILabel()
    let rulesLabel    = UILabel()
    let exerciseLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configTitleLabel()
        configRulesLabel()
        configExerciseLabel()
    }
    
    func configTitleLabel(){
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
            
        ])
    }
    
    func configRulesLabel(){
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card represents the number of exercise you do.\n\nJ= 11, Q = 12, K = 13, A = 14"
        rulesLabel.textAlignment = .center
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
        rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
        rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        
        ])
       
    }
    
func configExerciseLabel(){
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciseLabel.text = "♠️ = Push-ups\n\n♥️ = Sit-up\n\n♣️ = Burpees\n\n♦️ = Jumping Jacks"
        exerciseLabel.textAlignment = .left
        exerciseLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        exerciseLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
        exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 50),
        exerciseLabel.widthAnchor.constraint(equalToConstant: 200),
        exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        ])
       
    }
    
    

}
