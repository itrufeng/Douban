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

class RecommenderInteractorImplSpec: QuickSpec {
  override func spec() {
    describe("showCurrentLocationText") {
      it("should display 西安") {
        let interactor = RecommenderInteractorImpl()
        interactor.showCurrentLocationText(completion: { text in
          expect(text).to(equal("西安"))
        })
      }
    }
  }
}
