//
//  RecommenderPersenterImpl.swift
//  Douban
//
//  Created by Jian Zhang on 2/16/17.
//  Copyright © 2017 Jian Zhang. All rights reserved.
//

import Foundation

class RecommenderPersenterImpl: RecommenderPersenter {
  var view: RecommendView?
  var interactor: RecommenderInteractor
  
  init(view: RecommendView) {
    self.view = view
    interactor = RecommenderInteractorImpl()
  }
  
  func showLocationText() {
    interactor.showCurrentLocationText { text in
      guard let view = view else { return }
      view.showLocationText(text: text)
    }
  }
}
