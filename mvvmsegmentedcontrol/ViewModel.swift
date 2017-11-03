//
//  ViewModel.swift
//  mvvmsegmentedcontrol
//
//  Created by Sergey Frolov on 26.10.17.
//

import UIKit

protocol AppearanceModelType {
    var backgroundColor: UIColor { get }
    var titleColor: UIColor { get }
    var titleText: String { get }
}

extension AppearanceModelType {
    var backgroundColor: UIColor {
        return .black
    }
    
    var titleColor: UIColor {
        return .red
    }
    
    var titleText: String {
        return "Black"
    }
}

struct RedModel: AppearanceModelType {
    var backgroundColor: UIColor {
        return .red
    }
    
    var titleColor: UIColor {
        return .green
    }
    
    var titleText: String {
        return "Red"
    }
}

struct GreenModel: AppearanceModelType {
    var backgroundColor: UIColor {
        return .green
    }
    
    var titleText: String {
        return "Green"
    }
}

struct BlueModel: AppearanceModelType {
    var backgroundColor: UIColor {
        return .blue
    }
    
    var titleText: String {
        return "Blue"
    }
}

struct YellowModel: AppearanceModelType {
    var backgroundColor: UIColor {
        return .yellow
    }
    
    var titleText: String {
        return "Yellow"
    }
}

struct WhiteModel: AppearanceModelType {
    var backgroundColor: UIColor {
        return .white
    }
    
    var titleText: String {
        return "White"
    }
}

struct ViewControllerCoordinatorModel {
    private(set) var coordinatorDidUpdateAppearanceModelBlock: (_ model: AppearanceModelType) -> ()
    init(coordinatorDidUpdateAppearanceModelBlock: @escaping (_ model: AppearanceModelType) -> ()) {
        self.coordinatorDidUpdateAppearanceModelBlock = coordinatorDidUpdateAppearanceModelBlock
    }
    
    func selectSegmentIndex(_ index: Int) {
        switch index {
        case 1:
            coordinatorDidUpdateAppearanceModelBlock(GreenModel())
        case 2:
            coordinatorDidUpdateAppearanceModelBlock(BlueModel())
        case 3:
            coordinatorDidUpdateAppearanceModelBlock(YellowModel())
        case 4:
            coordinatorDidUpdateAppearanceModelBlock(WhiteModel())
        default:
            coordinatorDidUpdateAppearanceModelBlock(RedModel())
        }
    }
}

