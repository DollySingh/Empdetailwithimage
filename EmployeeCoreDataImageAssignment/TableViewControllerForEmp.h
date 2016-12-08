//
//  TableViewControllerForEmp.h
//  EmployeeCoreDataImageAssignment
//
//  Created by Pranav Udas on 27/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Employee.h"
#import "AppDelegate.h"

@interface TableViewControllerForEmp : UITableViewController

@property (nonatomic,retain)  NSManagedObjectContext *context;
-(void)InitPage;

@property (nonatomic,retain) NSMutableArray *empRecords;

@end
