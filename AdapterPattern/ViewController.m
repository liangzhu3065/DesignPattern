//
//  ViewController.m
//  AdapterPattern
//
//  Created by wlz on 2021/12/25.
//

#import "ViewController.h"
#import "LZAPLogAdapter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //适配器案例
    //一个开源的第三方工具库，接口与自己的工具库接口不一致，为引入第三方工具库，同时减小修改成本，可以增加一个适配器
    
    [LZAPSysLogTool debugWithTag:@"1" message:@"打印日志1"];
    [LZAPLogAdapter debugWithTag:@"2" message:@"打印日志2"];

}


@end
