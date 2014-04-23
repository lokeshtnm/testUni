//
//  SlideView.m
//  testUni
//
//  Created by TNM_ios2 on 23/04/14.
//  Copyright (c) 2014 TNM_ios2. All rights reserved.
//

#import "SlideView.h"

@implementation SlideView
@synthesize delegate;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self = [[[NSBundle mainBundle] loadNibNamed:@"SlideView" owner:self options:nil] objectAtIndex:0];
    }
    return self;
}
-(id)initWithView:(UIView*)superView
{
    self = [super init];
    if(self){
        self = [[[NSBundle mainBundle] loadNibNamed:@"SlideView" owner:self options:nil] objectAtIndex:0];
        self.center = superView.center;
        CGRect frm = self.frame;
        frm.origin.x = superView.frame.size.width - frm.size.width/2;
        self.frame = frm;
        self.mainView = superView;
        [superView addSubview:self];
    }
    return self;
}
- (IBAction)btnLeftClick:(id)sender {
    CGRect frm = self.frame;
    UIImage *image = [UIImage imageNamed:@"arrow_left.png"];
    if (frm.origin.x == self.mainView.frame.size.width - frm.size.width/2) {
        frm.origin.x = self.mainView.frame.size.width - frm.size.width;
        image = [UIImage imageNamed:@"arrow_right.png"];
    }
    else{
        frm.origin.x = self.mainView.frame.size.width - frm.size.width/2;
    }
    [UIView animateWithDuration:0.3 animations:^{
        self.frame = frm;
        [self.btnLeft setImage:image forState:UIControlStateNormal];
    }];
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
