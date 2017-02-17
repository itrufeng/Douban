//
//  RecommenderPersenter.swift
//  Douban
//
//  Created by Jian Zhang on 2/16/17.
//  Copyright © 2017 Jian Zhang. All rights reserved.
//

import Foundation

protocol RecommenderPersenter: class {
  var view: RecommendView? { get set }
  var interactor: RecommenderInteractor { get set }
  func showLocationText()
  func displayLocationText(text: String)
}
