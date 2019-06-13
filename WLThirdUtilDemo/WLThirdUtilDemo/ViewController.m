//
//  ViewController.m
//  WLThirdUtilDemo
//
//  Created by three stone 王 on 2019/4/3.
//  Copyright © 2019 three stone 王. All rights reserved.
//

#import "ViewController.h"
#import "WLLocationUtil.h"
#import <MAMapKit/MAMapView.h>

@interface ViewController () <MAMapViewDelegate>

@property (nonatomic ,strong) WLLocationUtil *manager;

@property (nonatomic, strong) MAMapView *mapView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view
    
    self.manager =  [WLLocationUtil new];
    
    [self.manager startLocation:^(CLLocation * _Nonnull location) {
        
        NSLog(@"%@",location);
    }];
    
    
    /*创建地图并添加到父view上*/
    self.mapView = [[MAMapView alloc] initWithFrame:self.view.bounds];
    self.mapView.delegate = self;
    [self.view addSubview:self.mapView];    
}


@end
