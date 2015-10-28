//
//  AppDelegate.swift
//  leakcrash
//
//  Created by Jussi Maki on 23/10/15.
//  Copyright © 2015 Vilea. All rights reserved.
//

import Cocoa
import RealmSwift

class TestObject: Object {
    dynamic var foo: Int = 0
    dynamic var bar: String = "hello"
}

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        Realm.Configuration.defaultConfiguration = Realm.Configuration(
            schemaVersion: 0,
            migrationBlock: { m, old in () }
        )
        let _ = try! Realm()
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

