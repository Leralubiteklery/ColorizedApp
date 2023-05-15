//
//  MainViewController.swift
//  ColorizedApp
//
//  Created by Lera Savchenko on 15.05.23.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setColor(for red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
}

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.mainViewColor = view.backgroundColor
        settingsVC.delegate = self
    }
}

// MARK: - SettingsViewControllerDelegate
extension MainViewController: SettingsViewControllerDelegate {
    func setColor(for red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}
