//
//  WLSearchUtil.h
//  WLThirdUtilDemo
//
//  Created by three stone 王 on 2019/5/27.
//  Copyright © 2019 three stone 王. All rights reserved.
//

#import <Foundation/Foundation.h>
@import AMapSearchKit;

NS_ASSUME_NONNULL_BEGIN

typedef void(^WLRegeoSearchResponse)(NSString *city,NSString *street);

typedef void(^WLTipSearchResponse)(NSArray<AMapTip *> *tips);

@interface WLSearchUtil : NSObject

- (void)onGeoSearchResp:(AMapGeoPoint *)location andResp:(WLRegeoSearchResponse) resp;

- (void)onTipSearchRespWithKeywords:(NSString *) keywords andCity:(NSString *)city andResp:(WLTipSearchResponse) resp;

@property (nonatomic ,strong ,readonly) AMapSearchAPI *searchApi;

@end

NS_ASSUME_NONNULL_END