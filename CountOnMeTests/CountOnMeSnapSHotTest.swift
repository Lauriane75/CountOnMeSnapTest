//
//  CountOnMeSnapSHotTest.swift
//  CountOnMeTests
//
//  Created by Bertrand BLOC'H on 29/08/2019.
//  Copyright © 2019 Vincent Saluzzo. All rights reserved.
//

import FBSnapshotTestCase
@testable import CountOnMe

final class CountOnMeSnapSHotTest: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
        self.recordMode = true
    }

    func testViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle(for: AppDelegate.self))
        let viewController = storyboard.instantiateViewController(withIdentifier: "viewController") as! ViewController
        FBSnapshotVerifyView(viewController.view)
    }
}
