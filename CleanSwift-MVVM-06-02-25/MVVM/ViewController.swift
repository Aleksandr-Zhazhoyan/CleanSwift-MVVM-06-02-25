//
//  ViewController.swift
//  CleanSwift-MVVM-06-02-25
//
//  Created by Aleksandr Zhazhoyan on 12.03.2025.
//

import UIKit

class ViewController: UIViewController {
    var jokeLabel: UILabel!
    var viewModel = JokeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        bindViewModel()
        viewModel.fetchJoke()
    }
    
    func setupUI() {
        jokeLabel = UILabel()
        jokeLabel.numberOfLines = 0
        jokeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(jokeLabel)
        
        NSLayoutConstraint.activate([
            jokeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            jokeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            jokeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            jokeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func bindViewModel() {
        viewModel.onJokeUpdate = { [weak self] joke in
            DispatchQueue.main.async {
                self?.jokeLabel.text = joke
            }
        }
    }
}
