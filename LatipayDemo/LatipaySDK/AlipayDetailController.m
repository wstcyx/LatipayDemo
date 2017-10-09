//
//  AlipayDetailController.m
//  LatipayDemo
//
//  Created by Yuxin on 2017/10/9.
//  Copyright © 2017年 yx. All rights reserved.
//

#import "AlipayDetailController.h"
#import <LatipaySDK/LatipaySDK.h>
	@interface AlipayDetailController ()
@property (weak, nonatomic) IBOutlet UITextField *amount;
@property (weak, nonatomic) IBOutlet UITextField *api_key;
@property (weak, nonatomic) IBOutlet UITextField *callback_url;
@property (weak, nonatomic) IBOutlet UITextField *ip;
@property (weak, nonatomic) IBOutlet UITextField *merchant_reference;
@property (weak, nonatomic) IBOutlet UITextField *payment_method;
@property (weak, nonatomic) IBOutlet UITextField *product_name;
@property (weak, nonatomic) IBOutlet UITextField *return_url;
@property (weak, nonatomic) IBOutlet UITextField *signature;
@property (weak, nonatomic) IBOutlet UITextField *user_id;
@property (weak, nonatomic) IBOutlet UITextField *wallet_id;
@property (weak, nonatomic) IBOutlet UITextField *source;

@end

@implementation AlipayDetailController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.amount.text = @"0.04";
    self.api_key.text = @"h2DF6i";
    self.callback_url.text = @"https://spotpay-staging.latipay.net/confirmation";
    self.ip.text = @"127.0.0.1";
    self.merchant_reference.text = @"W000000186";
    self.payment_method.text = @"alipay";
    self.product_name.text = @"W000000186";
    self.return_url.text = @"https://spotpay-staging.latipay.net/confirmation";
    self.signature.text = @"9d6e767e44f4ddc399e15c793d7225793f067dfe680c12cf1f3cfac4711681af";
    self.user_id.text = @"U000000178";
    self.wallet_id.text = @"W000000186";
    self.source.text = @"ios";



}
- (IBAction)pay:(id)sender {
    
    LatipayOrder *order = [LatipayOrder new];
    order.amount = self.amount.text;
    order.api_key = self.api_key.text;
    order.callback_url = self.callback_url.text;
    order.ip = self.ip.text;
    order.merchant_reference = self.merchant_reference.text;
    order.payment_method = self.payment_method.text;
    order.product_name = self.product_name.text;
    order.return_url = self.return_url.text;
    order.signature = self.signature.text;
    order.user_id = self.user_id.text;
    order.wallet_id = self.wallet_id.text;
    order.source = self.source.text;
    [[LatipayApi shareInstance] payOrder:order fromScheme:@"laitipay_demo" callback:^(NSDictionary *resultDic, NSError *error) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
