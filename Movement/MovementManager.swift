//
//  MovementManager.swift
//  Movement
//
//  Created by Carmelo Uria on 7/30/20.
//

import Foundation
import CoreMotion

public struct MovementManager
{
    var motionActivityManager  : CMMotionActivityManager = CMMotionActivityManager()
    var operationQueue : OperationQueue = OperationQueue()
    
    public init()
    {
        
    }
    
    public func startMotionManager()
    {
        motionActivityManager.startActivityUpdates(to: operationQueue) { (activity) in
            if let activity = activity
            {
                debugPrint("activity: \(String(describing: activity.description))")
            }
        }
    }
}
