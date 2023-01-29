//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Lera Savchenko on 25.01.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        setUpSliders()
    }
    
    private func setUpSliders() {
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    
    private func setViewColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
        print(redSlider.value, blueSlider.value, greenSlider.value)
    }
    
    @IBAction func redSliderMoved(_ sender: Any) {
        redLabel.text = String(redSlider.value)
        setViewColor()
    }
    
    @IBAction func greenSliderMoved(_ sender: Any) {
        greenLabel.text = String(greenSlider.value)
        setViewColor()
    }
    
    @IBAction func blueSliderMoved(_ sender: Any) {
        blueLabel.text = String(blueSlider.value)
        setViewColor()
    }
}

