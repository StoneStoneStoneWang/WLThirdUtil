//
//  ViewController.m
//  WLThirdUtilDemo
//
//  Created by three stone 王 on 2019/4/3.
//  Copyright © 2019 three stone 王. All rights reserved.
//

#import "ViewController.h"
#import "WLLocationUtil.h"
@interface ViewController ()

@property (nonatomic ,strong) WLLocationUtil *manager;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view
    
    self.manager =  [WLLocationUtil new];
    
    [self.manager startLocation:^(CLLocation * _Nonnull location) {
        
        NSLog(@"%@",location);
    }];
}


@end
