//
// Created by adolf on 12/12/15.
// Copyright (c) 2015 Gung Shi Jie. All rights reserved.
//

#import "MyUIButton.h"
#import "View+MASAdditions.h"

@implementation MyUIButton {

  BOOL start;
  UIView* contentView;
}
@synthesize left;

@synthesize right;

@synthesize start;

@synthesize contentView;

- (instancetype) initWithFrame:(CGRect) frame {
  self = [super initWithFrame:frame];
  if (self) {
    left = [[UILabel alloc] initWithFrame:CGRectZero];
    right = [[UILabel alloc] initWithFrame:CGRectZero];
    contentView = [[UIView alloc] initWithFrame:CGRectZero];
    left.text = @"L";
    right.text = @"R";

    [self addSubview:contentView];  //content View blocks click event
    [contentView addSubview:left];
    [contentView addSubview:right];
    contentView.backgroundColor=[UIColor blueColor];
    contentView.userInteractionEnabled=NO;

    [contentView mas_makeConstraints:^(MASConstraintMaker* make) {
      make.leading.mas_offset(0);
      make.bottom.mas_offset(0);
      make.height.mas_equalTo(20);
      make.width.mas_equalTo(60);
    }];

    [left mas_makeConstraints:^(MASConstraintMaker* make) {
      make.leading.mas_offset(0);
      make.top.mas_offset(0);
      make.bottom.mas_offset(0);
    }];

    [right mas_makeConstraints:^(MASConstraintMaker* make) {
      make.trailing.mas_offset(0);
      make.top.mas_offset(0);
      make.bottom.mas_offset(0);
    }];

    start = NO;

  }

  return self;
}

- (void) onClick {
  NSLog(@"onclick ");
  [UIView animateWithDuration:2 animations:^{
    if (start) {
      NSLog(@"onclick 1");
      [right mas_remakeConstraints:^(MASConstraintMaker* make) {
        make.leading.mas_offset(0);
        make.top.mas_offset(0);
        make.bottom.mas_offset(0);
      }];

      right.alpha=0.0;

      [left mas_remakeConstraints:^(MASConstraintMaker* make) {
        make.trailing.mas_offset(0);
        make.top.mas_offset(0);
        make.bottom.mas_offset(0);
      }];
      left.alpha=1.0;
      start = NO;
    }else{
      NSLog(@"onclick 2");
      [left mas_remakeConstraints:^(MASConstraintMaker* make) {
        make.leading.mas_offset(0);
        make.top.mas_offset(0);
        make.bottom.mas_offset(0);
      }];
      left.alpha=0.0;

      [right mas_remakeConstraints:^(MASConstraintMaker* make) {
        make.trailing.mas_offset(0);
        make.top.mas_offset(0);
        make.bottom.mas_offset(0);
      }];
      right.alpha=1.0;
      start = YES;
    }
    [self.contentView layoutIfNeeded];
  }];
}

@end