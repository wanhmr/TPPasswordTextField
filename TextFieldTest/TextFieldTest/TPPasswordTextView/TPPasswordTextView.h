//
//  PassWordTextView.h
//  TextFieldTest
//
//  Created by Tpphha on 15/12/16.
//  Copyright © 2015年 Tpphha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TPPasswordTextView : UIView
@property (nonatomic, copy) void(^passwordBlock)(NSString *password);
@property (nonatomic, assign) NSUInteger elementCount;
@property (nonatomic, strong) UIColor *elementColor;
@property (nonatomic, assign) NSUInteger elementMargin;
- (void)clearText;
@end
