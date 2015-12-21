//
//  ViewController.m
//  TextFieldTest
//
//  Created by Tpphha on 15/12/16.
//  Copyright © 2015年 Tpphha. All rights reserved.
//

#import "ViewController.h"
#import "TPPasswordTextView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    CGPoint center = self.view.center;
    TPPasswordTextView *view1 = [[TPPasswordTextView alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    view1.elementCount = 5;
    view1.center = CGPointMake(center.x, 50);
    [self.view addSubview:view1];
    view1.passwordBlock = ^(NSString *password) {
        NSLog(@"%@",password);
    };
    
    TPPasswordTextView *view2 = [[TPPasswordTextView alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    view2.elementCount = 5;
    view2.center = CGPointMake(center.x, 100);
    view2.elementColor = [UIColor redColor];
    [self.view addSubview:view2];
    view2.passwordBlock = ^(NSString *password) {
        NSLog(@"%@",password);
    };
    
    TPPasswordTextView *view3 = [[TPPasswordTextView alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    view3.elementCount = 8;
    view3.center = CGPointMake(center.x, 150);
    view3.elementColor = [UIColor cyanColor];
    view3.elementMargin = 5;
    [self.view addSubview:view3];
    view3.passwordBlock = ^(NSString *password) {
        NSLog(@"%@",password);
    };

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
