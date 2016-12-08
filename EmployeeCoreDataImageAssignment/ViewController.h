//
//  ViewController.h
//  EmployeeCoreDataImageAssignment
//
//  Created by Student-004 on 26/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Employee.h"
#import "AppDelegate.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtEno;
@property (weak, nonatomic) IBOutlet UITextField *txtEname;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segMentControlForImageSelection;
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;
- (IBAction)OnSaveClick:(id)sender;

@property (nonatomic,retain) NSString *imageSeleted;

@property (nonatomic,retain)  NSManagedObjectContext *context;

-(void) InitPage;
- (IBAction)OnSegmentControlValueChanged:(id)sender;

- (IBAction)OnDeleteAllEmpRecords:(id)sender;

@end

