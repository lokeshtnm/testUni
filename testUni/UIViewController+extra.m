#import <objc/message.h>
@implementation UIViewController (override)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"
- (void)viewDidLoad
{
    if([[[UIDevice currentDevice] systemVersion] floatValue] >= 7)
    {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    UIBarButtonItem *btnBack = [[UIBarButtonItem alloc]
                                initWithTitle:@"Back"
                                style:UIBarButtonItemStyleBordered
                                target:self
                                action:nil];
    self.navigationController.navigationBar.topItem.backBarButtonItem=btnBack;
    self.tabBarController.navigationController.navigationBar.topItem.backBarButtonItem=btnBack;
}
-(void)viewDidAppear:(BOOL)animated
{
//    int count = self.navigationController.viewControllers.count;
//    if(count > 1)
//    {
//        UIViewController *preController = [self.navigationController.viewControllers objectAtIndex:count-2];
//        if([preController isKindOfClass:[AllMenuViewController class]])
//        {
//            self.navigationItem.hidesBackButton = YES;
//        }
//    }
}
//-(void)LoadUrl
//{
//    if ([self respondsToSelector:@selector(LoadUrlConnetion)]) {
//        objc_msgSend(self, @selector(LoadUrlConnetion));
//    }
//    
//}
#pragma clang diagnostic pop
@end
