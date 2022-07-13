//
//  FirstViewController.swift
//  ColorizedApp
//
//  Created by Lera Savchenko on 12.07.22.
//

import UIKit

protocol SettingViewControllerDelegate {
    func updateColor(with red: CGFloat, green: CGFloat, blue: CGFloat)
}

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = UIColor.red

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.delegate = self
        settingsVC.viewColor = view.backgroundColor
    }
    

}

//MARK: - SetingsViewCOntrollerDelegate
extension FirstViewController: SettingViewControllerDelegate {
    
    func updateColor(with red: CGFloat, green: CGFloat, blue: CGFloat) {
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}
