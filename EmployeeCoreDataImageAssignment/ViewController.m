//
//  ViewController.m
//  EmployeeCoreDataImageAssignment
//
//  Created by Student-004 on 26/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self InitPage];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void) InitPage
{
    UIApplication *myapplication=  [UIApplication sharedApplication];
    AppDelegate *myappdelegate= (AppDelegate *)myapplication.delegate;
    _context=  myappdelegate.managedObjectContext;
    _imageSeleted = @"1.png";
    
    _imageView1.image = [UIImage imageNamed:@"1"];
     _imageView2.image = [UIImage imageNamed:@"2"];
     _imageView3.image = [UIImage imageNamed:@"3"];
}

- (IBAction)OnSegmentControlValueChanged:(id)sender
{
    NSInteger index =   [_segMentControlForImageSelection selectedSegmentIndex];
    if(index == 0)
    {
            _imageSeleted = @"1.png";
    }
    else if(index == 1)
    {
            _imageSeleted = @"2.png";
    }
    else
    {
            _imageSeleted = @"3.png";
    }
    
}



- (IBAction)OnDeleteAllEmpRecords:(id)sender
{
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:[NSEntityDescription entityForName:@"Employee" inManagedObjectContext:_context]];
    
    NSError *error = nil;
    
    NSArray *results = [_context executeFetchRequest:request error:&error];
    
    
    for( Employee *temp  in   results )
    {
        [_context deleteObject:temp];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)OnSaveClick:(id)sender {
    
    Employee *emp=[NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:_context];
    
    emp.eno = [NSNumber numberWithInteger:[_txtEno.text integerValue]];
    emp.ename = _txtEname.text;
    
    UIImage *image = [UIImage imageNamed:_imageSeleted];
    emp.eimage  = [NSData dataWithData:UIImagePNGRepresentation(image)];
  
    
    if(YES == [_context save:nil])
    {
        NSLog(@"Record inserted.");
        [self.navigationController popViewControllerAnimated:YES];
    }
    else
    {
        NSLog(@"Failed to insert record.");
    }
    
}

@end
