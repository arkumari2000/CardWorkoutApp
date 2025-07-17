//
//  RulesVC.swift
//  CardWorkoutApp
//
//  Created by Himanshu Bhati on 17/07/25.
//

import UIKit

class RulesVC: UIViewController {
    
    let titleLabel = UILabel()
    let rulesLabel = UILabel()
    let exerciseLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureRulesLabel()
        configureExerciseLabel()
    }
    
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60)
        ])
    }
        
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card respresents the number of exercise you do.\n\nJ = 11, Q = 12, K = 13, A = 14"
        rulesLabel.textAlignment = .center
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }

    func configureExerciseLabel() {
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciseLabel.text = "♠️ = Push-ups\n\n❤️ = Sit-up\n\n♣️ = Burpees\n\n♦️ = Jumping Jacks"
        exerciseLabel.textAlignment = .left
        exerciseLabel.lineBreakMode = .byWordWrapping
        exerciseLabel.numberOfLines = 0
        exerciseLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 30),
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
