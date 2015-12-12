//
// Created by adolf on 12/12/15.
// Copyright (c) 2015 Gung Shi Jie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MyUIButton : UIButton {
  UILabel* right;
}

@property (nonatomic, strong) UILabel* left;

@property (nonatomic, strong) UILabel* right;

@property (nonatomic) BOOL start;

@property (nonatomic, strong) UIView* contentView;

- (void) onClick;
@end