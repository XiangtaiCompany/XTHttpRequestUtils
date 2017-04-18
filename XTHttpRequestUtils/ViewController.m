//
//  ViewController.m
//  XTHttpRequestUtils
//
//  Created by 何凯楠 on 2017/4/18.
//  Copyright © 2017年 HeXiaoBa. All rights reserved.
//

#import "ViewController.h"
#import "XTSimpleHttpRequestUtils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置baseUrl
    XTSimpleHttpRequestUtils *request = [XTSimpleHttpRequestUtils shareInstance];
    request.baseUrl = @"http://app.4000060606.com/";
 
    //请求
    [XTSimpleHttpRequestUtils requestPostWithURL:@"appTemplate/queryCategoryInfos" parm:@{@"clientId": @4} completionHandler:^(NSError *error, id result) {
        if (!error) {
            NSLog(@"%@", result);
        }
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
