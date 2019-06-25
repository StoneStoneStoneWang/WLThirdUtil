//
//  WLJShareUtil.m
//  WLThirdUtilDemo
//
//  Created by three stone 王 on 2019/6/25.
//  Copyright © 2019 three stone 王. All rights reserved.
//

#import "WLJShareUtil.h"
#import "JSHAREService.h"
#import <AdSupport/AdSupport.h>

@implementation WLJShareUtil

+ (BOOL)handle:(NSURL *)url options:(NSDictionary*)options {
    
    return [JSHAREService handleOpenUrl:url];
}
+ (void)setupWithConfig:(NSString *)appKey andWechatKey:(NSString *)weChatAppId andWechatSecret:(NSString *)wechatSecret {
    
    JSHARELaunchConfig *config = [[JSHARELaunchConfig alloc] init];
    config.appKey = appKey;
    config.WeChatAppId = weChatAppId;
    config.WeChatAppSecret = wechatSecret;
    
    [JSHAREService setupWithConfig:config];
    [JSHAREService setDebug:YES];
}
+ (void)shareWithMessageObject:(id)messageObject completion:(WLJShareSocialRequestCompletionHandler )completion {
    
    [JSHAREService share:messageObject completionHandler:^(JSHAREState state, NSError *error, id responseObject) {
//        NSLog(@"responseObject :%@", responseObject);
        if (!error) {
           
            completion(responseObject,nil);
        }else{
            completion(nil,error);
        }
    }];
}

+ (id)getShareObj:(NSString *)url andTitle:(NSString *)title andDesc:(NSString *)desc andThumbImg:(UIImage *)img andAppName:(NSString *)appname andPlat:(NSInteger )plat {
    
    JSHAREMessage *message = [JSHAREMessage message];
    message.mediaType = JSHARELink;
    message.url = url;
    message.text = desc;
    message.title = title;
    message.platform = plat;
    
    message.image = UIImagePNGRepresentation(img);
    
    message.callbackUrl = @"https://www.jiguang.cn/";
    message.appName = appname;
    
    return message;
}

@end
