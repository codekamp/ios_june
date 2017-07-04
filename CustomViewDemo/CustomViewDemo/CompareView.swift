//
//  CompareView.swift
//  CustomViewDemo
//
//  Created by Cerebro on 04/07/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

@IBDesignable class CompareView: UIView {

    @IBOutlet var mainView: UIView!
    
    @IBOutlet weak var firstImageView: UIImageView!
    
    @IBOutlet weak var secondImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBInspectable var firstImage:UIImage? {
        get {
            return self.firstImageView.image
        }
        
        set {
            self.firstImageView.image = newValue
        }
    }
    
    @IBInspectable var secondImage:UIImage? {
        get {
            return self.secondImageView.image
        }
        
        set {
            self.secondImageView.image = newValue
        }
    }
    
    @IBInspectable var title:String? {
        get {
            return self.titleLabel.text
        }
        
        set {
            self.titleLabel.text = newValue
        }
    }
    
    
    
    @IBInspectable var myTitleColor:UIColor {
        get {
            return self.titleLabel.textColor
        }
        
        set {
            self.titleLabel.textColor = newValue
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupView()
    }
    
    func setupView() {
        loadViewFromNib()
        self.addSubview(self.mainView)
        self.mainView.frame = self.bounds
        
        self.mainView.autoresizingMask = [.flexibleWidth, .flexibleWidth]
        
        self.firstImageView.s
    }
    
    private func loadViewFromNib() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "CompareView", bundle: bundle)
        self.mainView = nib.instantiate(withOwner: self, options: nil).first as! UIView
    }

}
