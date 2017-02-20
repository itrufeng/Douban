//
//  RecommenderInteractor.swift
//  Douban
//
//  Created by Jian Zhang on 2/16/17.
//  Copyright © 2017 Jian Zhang. All rights reserved.
//

import Foundation

protocol RecommenderInteractor {
  func showCurrentLocationText(completion: (_ text: String)->())
}
