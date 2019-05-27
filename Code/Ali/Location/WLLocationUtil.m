//
//  WLLocationUtil.m
//  WLThirdUtilDemo
//
//  Created by three stone 王 on 2019/5/27.
//  Copyright © 2019 three stone 王. All rights reserved.
//

#import "WLLocationUtil.h"
@interface WLLocationUtil() <CLLocationManagerDelegate>

@property (nonatomic ,strong ,readwrite) AMapLocationManager *amlocation;

@property (nonatomic ,strong ,readwrite) CLLocationManager *cllocation;
@end

@implementation WLLocationUtil

- (instancetype)init {
    
    if (self = [super init]) {
        
        self.amlocation = [AMapLocationManager new];
        
        self.cllocation = [CLLocationManager new];
        
        self.cllocation.delegate = self;
        
        self.cllocation.desiredAccuracy = kCLLocationAccuracyThreeKilometers;
        
        [self.cllocation requestWhenInUseAuthorization];
    }
    return self;
}

- (void)requestLocationWithReGeocodeWithCompletionBlock:(AMapLocatingCompletionBlock)completionBlock {
    
    [self.amlocation requestLocationWithReGeocode:true completionBlock:completionBlock];
}

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status {
    
    switch (status) {
        case kCLAuthorizationStatusNotDetermined:
        case kCLAuthorizationStatusDenied:
            break;
        case kCLAuthorizationStatusAuthorizedWhenInUse:
        case kCLAuthorizationStatusAuthorizedAlways:
            
            break;
        default:
            break;
    }
}


@end
