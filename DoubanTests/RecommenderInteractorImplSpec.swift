//
//  RecommenderInteractorImplSpec.swift
//  Douban
//
//  Created by Jian Zhang on 2/17/17.
//  Copyright © 2017 Jian Zhang. All rights reserved.
//

import Quick
import Nimble
@testable import Douban

class FakeRecommenderInteractor: RecommenderInteractor {
  weak var persenter: RecommenderPersenter?
  func showCurrentLocationText() {}
}

class FakeRecommenderPersenter: RecommenderPersenter {
  var view: RecommendView?
  var interactor: RecommenderInteractor = FakeRecommenderInteractor()
  var isDisplayLocationTextCalled = false
  
  func showLocationText() {}
  
  func displayLocationText(text: String) {
    isDisplayLocationTextCalled = true
  }
}

class RecommenderInteractorImplSpec: QuickSpec {
  override func spec() {
    describe("showCurrentLocationText") {
      it("should call the `displayLocationText`") {
        let interactor = RecommenderInteractorImpl()
        let a = FakeRecommenderPersenter()
        a.isDisplayLocationTextCalled = false
        interactor.persenter = a
        interactor.showCurrentLocationText()
        expect(a.isDisplayLocationTextCalled).to(equal(true))
      }
    }
  }
}
