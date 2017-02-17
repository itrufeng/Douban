//
//  FirstViewController.swift
//  Douban
//
//  Created by Jian Zhang on 2/15/17.
//  Copyright © 2017 Jian Zhang. All rights reserved.
//

import UIKit

class RecommenderViewController: UIViewController, RecommendView {
  
  @IBOutlet var locationLabel: UILabel!
  
  var persenter: RecommenderPersenter?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    prepare()
    showLocationText()
  }
  
  func prepare() {
    persenter = RecommenderPersenterImpl()
    guard let persenter = persenter else { return }
    persenter.view = self
  }
  
  func showLocationText() {
    guard let persenter = persenter else { return }
    persenter.showLocationText()
  }
  
  // MARK: RecommendView
  func showLocationText(text: String) {
    locationLabel.text = text
  }
}

