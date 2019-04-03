//
//  WLUMUtil+Share.h
//  WLThirdUtilDemo
//
//  Created by three stone 王 on 2019/4/3.
//  Copyright © 2019 three stone 王. All rights reserved.
//

#import "WLUMUtil.h"

NS_ASSUME_NONNULL_BEGIN
typedef void (^WLSocialRequestCompletionHandler)(id result,NSError *error);

typedef void(^UMSuccBlock)(void);

typedef void(^UMFailBlock)(void);


@interface WLUMUtil (Share)

- (void)setUsingHttpsWhenShareContent:(BOOL) isUsingHttp;

- (void)configWechat:(NSString *)appkey andSecret:(NSString *)secret andRedirectURL:(NSString *)redirectURL;

- (void)configQQ:(NSString *)appkey andSecret:(NSString *)secret andRedirectURL:(NSString *)redirectURL;

- (BOOL)handle:(NSURL *)url forSourceApplication:(NSString *)sourceApplication andAnnotation:(id)annotation;

- (BOOL)handle:(NSURL *)url options:(NSDictionary*)options ;

/*
 
 UMSocialPlatformType_QQ                 = 4
 
 UMSocialPlatformType_WechatSession = 1
 
 UMSocialPlatformType_WechatTimeLine = 2
 */
- (void)shareToPlatform:(NSInteger)platformType
          messageObject:(id)messageObject
  currentViewController:(id)currentViewController
             completion:(WLSocialRequestCompletionHandler)completion;
@end

NS_ASSUME_NONNULL_END
