//
//  AppDelegate.swift
//  Celo Tech Interview
//
//  Created by Ellen Zhang on 7/11/19.
//  Copyright © 2019 Ellen Zhang. All rights reserved.
//

import UIKit
import CoreData
import BackgroundTasks

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        let docsToDB = DoctorsToDBAndCache()
//        docsToDB.getDataFromAPI(numberOfDocs: "1000")
        
        sleep(5)
        
        BGTaskScheduler.shared.register(forTaskWithIdentifier: "com.ellenzhang.doctors", using: nil){
            (task) in
            self.handleAppRefresh(task: task as! BGAppRefreshTask)
        }
        return true
    }
    
    func handleAppRefresh(task: BGAppRefreshTask){
        let queue = OperationQueue()
        queue.maxConcurrentOperationCount = 1
        
        let docsToDB = DoctorsToDBAndCache()
        
        queue.addOperation {
            docsToDB.getDataFromAPI(numberOfDocs: "200")
        }
    
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "DoctorsModel")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
}

