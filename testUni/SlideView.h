//
//  SlideView.h
//  testUni
//
//  Created by TNM_ios2 on 23/04/14.
//  Copyright (c) 2014 TNM_ios2. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SlideViewDelegate <NSObject>
@optional
-(void)didButtonClick:(UIButton*)btn;
@end

@interface SlideView : UIView
-(id)initWithView:(UIView*)superView;
@property (strong, nonatomic) id<SlideViewDelegate> delegate;
@property (strong, nonatomic) IBOutlet UIButton *btnLeft;
@property (strong, nonatomic) UIView *mainView;
- (IBAction)btnLeftClick:(id)sender;
@end
