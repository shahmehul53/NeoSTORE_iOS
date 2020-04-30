//
//  CustomDatePicker.swift
//  NeoStore
//
//  Created by webwerks1 on 01/04/19.
//  Copyright © 2019 webwerks. All rights reserved.
//

import UIKit

@IBDesignable class CustomDatePickerTextField: UITextField {

    private var privateDate: Date?
    var date: Date? {
        set {
            privateDate = newValue
            if !isFirstResponder {
                datePicker.setDate(newValue!, animated: false)
            }
        }
        get {
            return privateDate
        }
    }
    
    private lazy var dateFormatter = DateFormatter()
    
    @IBInspectable var dateFormat: String = "dd-MM-yyyy" {
        didSet {
            dateFormatter.dateFormat = dateFormat
        }
    }
    
    private lazy var datePicker = UIDatePicker()
    
    var datePickerMode: UIDatePicker.Mode = .date {
        didSet {
            datePicker.datePickerMode = datePickerMode
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    private func initialize() {
        datePicker.maximumDate = Date()
        datePicker.timeZone =  TimeZone.current
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = dateFormat
        if date != nil {
            datePicker.setDate(date!, animated: false)
        }
        datePicker.addTarget(self, action: #selector(didSelectDate(_:)), for: .valueChanged)
        datePicker.datePickerMode = datePickerMode
        datePicker.timeZone = .current
        inputView = datePicker
        updateView()
    }
    
    
    @objc private func didSelectDate(_ sender: UIDatePicker) {
        date = sender.date
        text = dateFormatter.string(from: sender.date)
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        
        didSet {
            
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        
        didSet {
            
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var placeHolderColor: UIColor = UIColor.black {
        
        didSet {
            
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: placeHolderColor])
        }
    }
    
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.leftViewRect(forBounds: bounds)
        textRect.origin.x += leftPadding
        return textRect
    }
    
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.rightViewRect(forBounds: bounds)
        textRect.origin.x += rightPadding
        return textRect
    }
    
    @IBInspectable var leftImage: UIImage? {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var leftPadding: CGFloat = 0
    @IBInspectable var rightPadding: CGFloat = 0
    
    @IBInspectable var color: UIColor = UIColor.lightGray {
        didSet {
            updateView()
        }
    }
    
    func updateView() {
        if let image = leftImage {
            leftViewMode = UITextField.ViewMode.always
            let imageView = UIImageView(frame: CGRect(x: 5, y: 0, width: 15, height: 15))
            imageView.image = image
            // Note: In order for your image to use the tint color, you have to select the image in the Assets.xcassets and change the "Render As" property to "Template Image".
            imageView.tintColor = color
            leftView = imageView
        } else {
            leftViewMode = UITextField.ViewMode.never
            leftView = nil
        }
    }
}

