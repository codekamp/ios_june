//
//  ViewController.swift
//  CoreDataTest
//
//  Created by Cerebro on 27/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        let singer1 = Singer(context: AppDelegate.shared().persistentContainer.viewContext)
        //        singer1.age = 72
        //        singer1.name = "Gulam Ali"
        //        singer1.hometown = "Meerut"
        //
        //
        //        let singer2 = Singer(context: AppDelegate.shared().persistentContainer.viewContext)
        //        singer2.age = 45
        //        singer2.name = "Mehndi Hasan"
        //        singer2.hometown = "Bagpat"
        //
        //        AppDelegate.shared().saveContext()
        
        
        var singers:[Singer] = []
        
        do {
            let request:NSFetchRequest<Singer> = Singer.fetchRequest()
            request.predicate = NSPredicate(format: "name == %@", "Mehndi Hasan")
            singers  =  try AppDelegate.shared().persistentContainer.viewContext.fetch(request)
        } catch {
            // handle fetch failure
        }
        
        for singer in singers {
            print("singer name: \(singer.name), age: \(singer.age), hometown: \(singer.hometown)")
            
            print("total my songs: \(singer.mySongs?.allObjects.count)")
            
            
            let songs = singer.mySongs?.allObjects as? [Song]
            
            if songs != nil {
                for song in songs! {
                    
                    AppDelegate.shared().persistentContainer.viewContext.delete(song)
                    print(song.title!)
                }
            }
        }
        
        //        let song1 = Song(context: AppDelegate.shared().persistentContainer.viewContext)
        //        song1.title = "Hungama hai kyun barpa..."
        //        song1.duration = 300
        //
        //
        //        let song2 = Song(context: AppDelegate.shared().persistentContainer.viewContext)
        //        song2.title = "Hum ko kiske..."
        //        song2.duration = 250
        //
        //
        //        singers[0].addToMySongs(song1)
        //        singers[0].addToMySongs(song2)
        //
        //        AppDelegate.shared().saveContext()
        
        
        let vc = instentiateVC(withIdentifier: "second_vc")
    
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

