//
//  McDatePickerBarButtonItem.swift
//  BaoVietOffice
//
//  Created by HOANPV on 10/21/18.
//  Copyright © 2018 Nava tech. All rights reserved.
//

import UIKit


open class McDatePickerBarButtonItem: UIBarButtonItem {
    
    /**
     A bar button to close McPicker with selections.
     
     - parameter mcPicker: Target instance
     - parameter title: Optionally set a custom title
     - parameter barButtonSystemItem: Optionally set UIBarButtonSystemItem or omit for default: .done. NOTE: This option is ignored when title is non-nil.
     
     - returns: McPickerBarButtonItem
     */
    public class func done(mcPicker: McDatePicker, title: String? = nil, barButtonSystemItem: UIBarButtonSystemItem = .done) -> McDatePickerBarButtonItem {
        
//        if let buttonTitle = title {
            return self.init(title: "Xong", style: .plain, target: mcPicker, action: #selector(McPicker.done))
//        }
//
//        return self.init(barButtonSystemItem: barButtonSystemItem, target: mcPicker, action: #selector(McPicker.done))
    }
    
    /**
     A bar button to close McPicker with out selections.
     
     - parameter mcPicker: Target instance
     - parameter title: Optionally set a custom title
     - parameter barButtonSystemItem: Optionally set UIBarButtonSystemItem or omit for default: .done. NOTE: This option is ignored when title is non-nil.
     
     - returns: McPickerBarButtonItem
     */
    public class func cancel(mcPicker: McDatePicker, title: String? = nil, barButtonSystemItem: UIBarButtonSystemItem = .cancel) -> McDatePickerBarButtonItem {
        
//        if let buttonTitle = title {
            return self.init(title: "Đóng", style: .plain, target: mcPicker, action: #selector(McPicker.cancel))
//        }
//        
//        return self.init(barButtonSystemItem: barButtonSystemItem, target: mcPicker, action: #selector(McPicker.cancel))
    }
    
    /**
     A bar button to close McPicker with out selections.
     
     - parameter mcPicker: Target instance
     - parameter title: Optionally set a custom title
     - parameter barButtonSystemItem: Optionally set UIBarButtonSystemItem or omit for default: .done. NOTE: This option is ignored when title is non-nil.
     
     - returns: McPickerBarButtonItem
     */
    public class func refresh(mcPicker: McDatePicker, title: String? = nil, barButtonSystemItem: UIBarButtonSystemItem = .refresh) -> McDatePickerBarButtonItem {
        
        if let buttonTitle = title {
            return self.init(title: buttonTitle, style: .plain, target: mcPicker, action: #selector(McDatePicker.refresh))
        }
        
        return self.init(barButtonSystemItem: barButtonSystemItem, target: mcPicker, action: #selector(McDatePicker.refresh))
    }
    
    public class func flexibleSpace() -> McDatePickerBarButtonItem {
        return self.init(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    }
    
    public class func fixedSpace(width: CGFloat) -> McDatePickerBarButtonItem {
        let fixedSpace =  self.init(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        fixedSpace.width = width
        return fixedSpace
    }
}
