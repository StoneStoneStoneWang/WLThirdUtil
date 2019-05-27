//
//  WLLocationUtil.h
//  WLThirdUtilDemo
//
//  Created by three stone 王 on 2019/5/27.
//  Copyright © 2019 three stone 王. All rights reserved.
//

#import <Foundation/Foundation.h>
@import AMapLocationKit;
@import CoreLocation;

NS_ASSUME_NONNULL_BEGIN

@interface WLLocationUtil : NSObject

@property (nonatomic ,strong ,readonly) AMapLocationManager *amlocation;

@property (nonatomic ,strong ,readonly) CLLocationManager *cllocation;

- (void)requestLocationWithReGeocodeWithCompletionBlock:(AMapLocatingCompletionBlock)completionBlock;

@property (nonatomic ,assign) CLAuthorizationStatus authStatus;

@end

NS_ASSUME_NONNULL_END
