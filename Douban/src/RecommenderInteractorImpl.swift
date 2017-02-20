//
//  RecommenderInteractorImpl.swift
//  Douban
//
//  Created by Jian Zhang on 2/16/17.
//  Copyright © 2017 Jian Zhang. All rights reserved.
//

import Foundation

class RecommenderInteractorImpl: RecommenderInteractor {
  func showCurrentLocationText(completion: (_ text: String)->()) {
    completion("西安")
  }
}
