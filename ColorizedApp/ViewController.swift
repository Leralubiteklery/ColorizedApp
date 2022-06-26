//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Lera Savchenko on 25.06.22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var colorizedView: UIView!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorizedView.layer.cornerRadius = 10
    }
    
    // MARK: - IB Actions
    @IBAction func redSliderAction() {
        redSlider.minimumTrackTintColor = .red
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        updateViewColor()
    }
    
    @IBAction func greenSliderAction() {
        greenSlider.minimumTrackTintColor = .green
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        updateViewColor()
    }

    @IBAction func blueSliderAction() {
        blueSlider.minimumTrackTintColor = .blue
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        updateViewColor()
    }
    
    // MARK: - Private Methods
    
    private func updateViewColor() {
        colorizedView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green:  CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    
    
   

}

