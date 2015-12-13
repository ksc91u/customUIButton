//
// Created by adolf on 12/12/15.
// Copyright (c) 2015 Gung Shi Jie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MyUIButton : UIButton {
}

@property (nonatomic, strong) UIImageView* left;

@property (nonatomic, strong) UIImageView* right;

@property (nonatomic) BOOL start;

@property (nonatomic, strong) UIView* contentView;

- (instancetype) initWithFrame:(CGRect) frame imageLeft:(UIImage*) leftImage imageRight:(UIImage*) rightImage;

- (void) onClick;
@end