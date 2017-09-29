//
//  AppDelegate.m
//  LatipayDemo
//
//  Created by Yuxin on 2017/9/7.
//  Copyright © 2017年 yx. All rights reserved.
//

#import "AppDelegate.h"
#import <LatipaySDK/LatipaySDK.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
}


- (void)applicationWillTerminate:(UIApplication *)application {
}
- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
    
    if ([url.host isEqualToString:@"safepay"]) {
        // 支付跳转支付宝钱包进行支付，处理支付结果
        [[LatipayApi shareInstance]processOrderWithLatipayResult:url standbyCallback:^(NSDictionary *resultDic, NSError *error) {
            
        }];
        
    }
    return YES;
}

// NOTE: 9.0以后使用新API接口
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
{
    if ([url.host isEqualToString:@"safepay"]) {
        // 支付跳转支付宝钱包进行支付，处理支付结果
        [[LatipayApi shareInstance]processOrderWithLatipayResult:url standbyCallback:^(NSDictionary *resultDic, NSError *error) {
            
        }];
        //
    }
    return YES;
}

@end
