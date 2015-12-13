//
//  ViewController.m
//  ios
//
//  Created by adolf on 9/10/15.
//  Copyright © 2015 Gung Shi Jie. All rights reserved.
//

#import "ViewController.h"
#import "MyCollectionViewCollectionViewController.h"
#import "View+MASAdditions.h"
#import "MyUIButton.h"
#import "MyUIButton.h"

@interface ViewController()

@end

@implementation ViewController {
  MyUIButton* btn;
}

@synthesize btn;

- (void) viewDidLoad {
  [super viewDidLoad];

  btn = [[MyUIButton alloc]
      initWithFrame:CGRectZero
          imageLeft:[UIImage imageNamed:@"images/action_icon_switch_country_global.png"]
         imageRight:[UIImage imageNamed:@"images/action_icon_switch_country_local.png"]];
  [self.view addSubview:btn];
  [btn mas_makeConstraints:^(MASConstraintMaker* make) {
    make.bottom.mas_offset(0);
    make.leading.mas_offset(0);
    make.width.mas_equalTo(60);
    make.height.mas_equalTo(30);
  }];
  [btn addTarget:self action:@selector(switchToNewsDetails:) forControlEvents:UIControlEventTouchUpInside];

  // Do any additional setup after loading the view, typically from a nib.

}

- (void) switchToNewsDetails:(MyUIButton*) button {
  [button onClick];
}

- (void) didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
