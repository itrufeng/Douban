//
//  RecommenderPersenterImpl.swift
//  Douban
//
//  Created by Jian Zhang on 2/16/17.
//  Copyright © 2017 Jian Zhang. All rights reserved.
//

import Foundation

class RecommenderPersenterImpl: RecommenderPersenter {
  weak var view: RecommendView?
  var interactor: RecommenderInteractor
  
  init() {
    interactor = RecommenderInteractorImpl()
    interactor.persenter = self
  }
  
  func showLocationText() {
    interactor.showCurrentLocationText()
  }
  
  func displayLocationText(text: String) {
    guard let view = view else { return }
    view.showLocationText(text: text)
  }
}
