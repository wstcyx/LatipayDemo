//
//  ViewController.m
//  LatipayDemo
//
//  Created by Yuxin on 2017/9/7.
//  Copyright © 2017年 yx. All rights reserved.
//

#import "ViewController.h"
#import <LatipaySDK/LatipaySDK.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)alipay:(id)sender {

}

- (IBAction)wxpay:(id)sender {
    LatipayOrder *order = [LatipayOrder new];
    order.amount = @"0.01";
    order.api_key = @"y64ckNrSd5";
    order.callback_url = @"https://api.latipay.net/confirmation";
    order.ip = @"127.0.0.1";
    order.merchant_reference = @"W000000037";
    order.payment_method = @"wechat";
    order.product_name = @"W000000037";
    order.return_url = @"https://api.latipay.net/confirmation";
    order.signature = @"25e6e72cc68fb31595713afb101015aecb13ca5faf3391851f24279cb7fb008a";
    order.user_id = @"U000000051";
    order.wallet_id = @"W000000037";
    order.source = @"ios";
    [[LatipayApi shareInstance] payOrder:order fromScheme:@"hhh" callback:^(NSDictionary *resultDic, NSError *error) {
    }];
}

@end
