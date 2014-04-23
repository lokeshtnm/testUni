//
//  AppDelegate.h
//  testUni
//
//  Created by TNM_ios2 on 23/04/14.
//  Copyright (c) 2014 TNM_ios2. All rights reserved.
//

#import <UIKit/UIKit.h>


@class ViewController;


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ViewController *viewcontroller;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;
// LOKESH TNM
@end
