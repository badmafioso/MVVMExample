//
//  ViewController.swift
//  mvvmsegmentedcontrol
//
//  Created by Sergey Frolov on 26.10.17.
//

import UIKit

class ViewController: UIViewController {
    var coordinatorModel: ViewControllerCoordinatorModel!
    
    var appearanceModel: AppearanceModelType! {
        didSet {
            titleLabel.textColor = appearanceModel.titleColor
            titleLabel.text      = appearanceModel.titleText
            view.backgroundColor = appearanceModel.backgroundColor
        }
    }
    
    
    @IBOutlet weak var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        coordinatorModel = ViewControllerCoordinatorModel(coordinatorDidUpdateAppearanceModelBlock: { (model) in
            self.appearanceModel = model
        })
        
        coordinatorModel.selectSegmentIndex(0)
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        coordinatorModel.selectSegmentIndex(Int(sender.value))
    }
}

