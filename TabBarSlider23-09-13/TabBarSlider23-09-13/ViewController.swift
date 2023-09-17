//
//  ViewController.swift
//  TabBarSlider23-09-13
//
//  Created by 副山俊輔 on 2023/09/13.
//

import UIKit

class ViewController: UIViewController, SliderValueDelegate {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!

    weak var delegate: SliderValueDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
        let secondView = SecondViewController()
        delegate = secondView
    }
    
    func sliderValueChanged(newValue: Float) {
        resultLabel.text = "\(newValue)"
    }
    

    @IBAction func didMoveSlider(_ sender: Any) {
        let sliderValue = slider.value
        delegate?.sliderValueChanged(newValue: sliderValue)
        resultLabel.text = "\(sliderValue)"
    }
}
