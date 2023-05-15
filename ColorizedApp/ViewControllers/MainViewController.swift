//
//  MainViewController.swift
//  ColorizedApp
//
//  Created by Lera Savchenko on 15.05.23.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.mainViewColor = view.backgroundColor
    }
    

    

}
