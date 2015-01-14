//
//  GalleryCell.swift
//  PhotoFilters
//
//  Created by Bradley Johnson on 1/12/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class GalleryCell: UICollectionViewCell {
  let imageView = UIImageView()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.addSubview(self.imageView)
    //self.backgroundColor = UIColor.whiteColor()
    imageView.frame = self.bounds
    imageView.contentMode = UIViewContentMode.ScaleAspectFill
    imageView.layer.masksToBounds = true
  }

  required init(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
    
}
