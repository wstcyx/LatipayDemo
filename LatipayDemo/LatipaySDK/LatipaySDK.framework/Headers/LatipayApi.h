//
//  LatipayApi.h
//  LatipaySDK
//
//  Created by Yuxin on 2017/9/11.
//  Copyright © 2017年 yuxin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LatipayOrder.h"

typedef NS_ENUM(NSInteger , LatipayEnvironment) {
    LatipayDebug  =  0,//debug
    LatipayRelease  =  1,//release
};

typedef void(^CompletionResultBlock)(NSDictionary *resultDic,NSError *error);

@interface LatipayApi : NSObject

+(instancetype) shareInstance ;

/**
 default is debug
 **/
@property(nonatomic,assign)LatipayEnvironment environment;


- (void)payOrder:(LatipayOrder *)order fromScheme:(NSString *)schemeStr callback:(CompletionResultBlock)completionBlock;


- (void)processOrderWithLatipayResult:(NSURL *)resultUrl standbyCallback:(CompletionResultBlock)completionBlock;

@end
