//
//  LatipayOrder.h
//  paySDK
//
//  Created by Yuxin on 2017/8/29.
//  Copyright © 2017年 yx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LatipayOrder : NSObject
/**
 required
 **/
@property(nonatomic,copy)NSString *amount;

/**
 required
 **/
@property(nonatomic,copy)NSString *api_key;

/**
 required
 **/
@property(nonatomic,copy)NSString *callback_url;

/**
 required
 **/
@property(nonatomic,copy)NSString *ip;

/**
 required
 **/
@property(nonatomic,copy)NSString *merchant_reference;

/**
 required
 **/
@property(nonatomic,copy)NSString *payment_method;

/**
 required wechat or alipay
 **/
@property(nonatomic,copy)NSString *product_name;

/**
 required
 **/
@property(nonatomic,copy)NSString *return_url;

/**
 required
 **/
@property(nonatomic,copy)NSString *signature;

/**
 required
 **/
@property(nonatomic,copy)NSString *user_id;

/**
 required
 **/
@property(nonatomic,copy)NSString *wallet_id;

/**
 required  "ios"
 **/
@property(nonatomic,copy)NSString *source;

/**
 optional
 **/
@property(nonatomic,copy)NSString *present_qr;

/**
 optional
 **/
@property(nonatomic,copy)NSString *version;


@end
