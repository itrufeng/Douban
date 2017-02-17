//
//  RecommenderInteractorImpl.swift
//  Douban
//
//  Created by Jian Zhang on 2/16/17.
//  Copyright © 2017 Jian Zhang. All rights reserved.
//

import Foundation

class RecommenderInteractorImpl: RecommenderInteractor {
  weak var persenter: RecommenderPersenter?
  
  func showCurrentLocationText() {
    guard let persenter = persenter else { return }
    persenter.displayLocationText(text: "西安")
  }
}
