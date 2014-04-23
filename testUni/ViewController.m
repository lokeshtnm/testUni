//
//  ViewController.m
//  testUni
//
//  Created by TNM_ios2 on 23/04/14.
//  Copyright (c) 2014 TNM_ios2. All rights reserved.
//

#import "ViewController.h"
#import "SlideView.h"
@interface ViewController ()<SlideViewDelegate>

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    SlideView *subview = [[SlideView alloc] initWithView:self.view];
    subview.delegate = self;
    // Do any additional setup after loading the view from its nib.
}
-(void)viewDidAppear:(BOOL)animated
{
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
