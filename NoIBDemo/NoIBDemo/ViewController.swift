//
//  ViewController.swift
//  NoIBDemo
//
//  Created by Bradley Johnson on 1/12/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  //MARK: ViewController LifeCycle
  override func loadView() {
    let rootView = UIView(frame: UIScreen.mainScreen().bounds)
    rootView.backgroundColor = UIColor.whiteColor()
//    let orangeView = UIView(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
//    orangeView.backgroundColor = UIColor.orangeColor()
//    rootView.addSubview(orangeView)
//    let blueView = UIView(frame: CGRect(x: 25, y: 25, width: 25, height: 25))
//    blueView.backgroundColor = UIColor.blueColor()
//    rootView.addSubview(blueView)
    //this is always the last line of your loadView()
    
    let redView = UIView()
    redView.backgroundColor = UIColor.redColor()
    rootView.addSubview(redView)
    redView.setTranslatesAutoresizingMaskIntoConstraints(false)
    let blueButton = UIButton()
    blueButton.backgroundColor = UIColor.blueColor()
    blueButton.setTitle("Save", forState: .Normal)
    blueButton.setTranslatesAutoresizingMaskIntoConstraints(false)
    rootView.addSubview(blueButton)
    let pinkButton = UIButton()
    pinkButton.backgroundColor = UIColor.purpleColor()
    pinkButton.setTitle("Hello", forState: .Normal)
    pinkButton.setTranslatesAutoresizingMaskIntoConstraints(false)
    rootView.addSubview(pinkButton)
    
    let views = ["redView" : redView, "blueButton" : blueButton, "pinkButton" : pinkButton]
    let redViewConstraintHeight = NSLayoutConstraint.constraintsWithVisualFormat("V:[redView(20)]", options: nil, metrics: nil, views: views)
    redView.addConstraints(redViewConstraintHeight)
    let redViewConstraintHorizontal = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[redView]-|", options: nil, metrics: nil, views: views)
    rootView.addConstraints(redViewConstraintHorizontal)
    
    let redViewConstraintVertical = NSLayoutConstraint.constraintsWithVisualFormat("V:|-20-[redView]", options: nil, metrics: nil, views: views)
    rootView.addConstraints(redViewConstraintVertical)
    
    let blueButtonConstraintLocation = NSLayoutConstraint.constraintsWithVisualFormat("V:[redView]-[blueButton]", options: NSLayoutFormatOptions.AlignAllLeading, metrics: nil, views: views)
    rootView.addConstraints(blueButtonConstraintLocation)
    
    let pinkButtonConstraintVertical = NSLayoutConstraint.constraintsWithVisualFormat("V:[redView]-50-[pinkButton]", options: nil, metrics: nil, views: views)
    rootView.addConstraints(pinkButtonConstraintVertical)
    let pinkButtonConstraintHorizontal = NSLayoutConstraint(item: pinkButton, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: rootView, attribute: .CenterX, multiplier: 1.0, constant: 0.0)
    rootView.addConstraint(pinkButtonConstraintHorizontal)
  
    self.view = rootView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

