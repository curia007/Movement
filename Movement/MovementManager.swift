//
//  MovementManager.swift
//  Movement
//
//  Created by Carmelo Uria on 7/30/20.
//

import Foundation
import CoreMotion

struct MovementManager
{
    var motionActivityManager  : CMMotionActivityManager = CMMotionActivityManager()
    var operationQueue : OperationQueue = OperationQueue()
    
    func startMotionManager()
    {
        motionActivityManager.startActivityUpdates(to: operationQueue) { (activity) in
            guard (activity != nil) else {return}
            debugPrint("activity: \(activity?.description)")
        }
    }
}
