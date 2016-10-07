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
    view1.passwordDidChangeBlock = ^(NSString *password) {
        NSLog(@"%@",password);
    };
    
    TPPasswordTextView *view2 = [[TPPasswordTextView alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    view2.elementCount = 5;
    view2.center = CGPointMake(center.x, 100);
    view2.elementBorderColor = [UIColor redColor];
    [self.view addSubview:view2];
    view2.passwordDidChangeBlock = ^(NSString *password) {
        NSLog(@"%@",password);
    };
    
    TPPasswordTextView *view3 = [[TPPasswordTextView alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    view3.elementCount = 8;
    view3.center = CGPointMake(center.x, 150);
    view3.elementBorderColor = [UIColor cyanColor];
    view3.elementMargin = 5;
    [self.view addSubview:view3];
    view3.passwordDidChangeBlock = ^(NSString *password) {
        NSLog(@"%@",password);
    };
    
    
    TPPasswordTextView *view4 = [[TPPasswordTextView alloc] initWithFrame:CGRectMake(0, 0, 288, 44)];
    view4.elementCount = 6;
    view4.center = CGPointMake(center.x, 200);
    view4.elementBorderColor = [UIColor grayColor];
    view4.elementMargin = 5;
    [self.view addSubview:view4];
    view3.passwordDidChangeBlock = ^(NSString *password) {
        NSLog(@"%@",password);
    };
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
