//
//  McDatePickerPopoverViewController.swift
//  BaoVietOffice
//
//  Created by HOANPV on 10/21/18.
//  Copyright © 2018 Nava tech. All rights reserved.
//

import UIKit

import UIKit

internal class McDatePickerPopoverViewController: UIViewController {
    
    weak var mcPicker: McDatePicker?
    
    internal convenience init(mcPicker: McDatePicker) {
        self.init(nibName: nil, bundle: nil)
        self.mcPicker = mcPicker
    }
    
    internal required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mcPicker!.sizeViews()
        mcPicker!.addAllSubviews()
        self.view.addSubview(mcPicker!)
        self.preferredContentSize = mcPicker!.popOverContentSize
    }
}
