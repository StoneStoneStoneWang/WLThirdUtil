//
//  WLSearchUtil.m
//  WLThirdUtilDemo
//
//  Created by three stone 王 on 2019/5/27.
//  Copyright © 2019 three stone 王. All rights reserved.
//

#import "WLSearchUtil.h"
@interface WLSearchUtil () <AMapSearchDelegate>

@property (nonatomic ,strong ,readwrite) AMapSearchAPI *searchApi;

@property (nonatomic ,strong) AMapReGeocodeSearchRequest *geoSearchReq;

@property (nonatomic ,strong) AMapInputTipsSearchRequest *tipSearchReq;

@property (nonatomic ,copy) WLRegeoSearchResponse regeoResponse;

@property (nonatomic ,copy) WLTipSearchResponse tipResponse;
@end

@implementation WLSearchUtil

- (instancetype)init {
    
    if (self = [super init]) {
        
        self.searchApi = [AMapSearchAPI new];
        
        self.geoSearchReq = [AMapReGeocodeSearchRequest new];
        
        self.tipSearchReq = [AMapInputTipsSearchRequest new];
        
        self.searchApi.delegate = self;
    }
    return self;
}

- (void)onGeoSearchResp:(AMapGeoPoint *)location andResp:(nonnull WLRegeoSearchResponse)resp{
    
    self.geoSearchReq.location = location;
    
    self.geoSearchReq.requireExtension = true;
    
    [self.searchApi AMapReGoecodeSearch:self.geoSearchReq];
    
    self.regeoResponse = resp;
    
}
- (void)onTipSearchRespWithKeywords:(NSString *)keywords andCity:(NSString *)city andResp:(nonnull WLTipSearchResponse)resp{
    
    self.tipSearchReq.keywords = keywords;
    
    self.tipSearchReq.city = city;
    
    self.tipSearchReq.cityLimit = true;
    
    [self.searchApi AMapInputTipsSearch:self.tipSearchReq];
    
    self.tipResponse = resp;
}

- (void)onInputTipsSearchDone:(AMapInputTipsSearchRequest *)request response:(AMapInputTipsSearchResponse *)response {
    
    self.tipResponse(response.tips);
}

- (void)onReGeocodeSearchDone:(AMapReGeocodeSearchRequest *)request response:(AMapReGeocodeSearchResponse *)response {
    
    self.regeoResponse(response.regeocode.formattedAddress, response.regeocode.addressComponent.city);
}

@end
