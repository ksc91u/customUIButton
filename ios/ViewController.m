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

  btn = [MyUIButton buttonWithType:UIButtonTypeSystem];
  [self.view addSubview:btn];
  [btn mas_makeConstraints:^(MASConstraintMaker* make) {
    make.bottom.mas_offset(0);
    make.leading.mas_offset(0);
    make.width.mas_equalTo(60);
    make.height.mas_equalTo(15);
  }];
  [btn addTarget:self
                 action:@selector(switchToNewsDetails:)
       forControlEvents:UIControlEventTouchUpInside];

  // Do any additional setup after loading the view, typically from a nib.

  NSLog(@">>>>>>> viewDidLoad");
}

- (void) switchToNewsDetails:(MyUIButton*) button {
  NSLog(@">>> onClick 0");
  [button onClick];
}


- (void) didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
