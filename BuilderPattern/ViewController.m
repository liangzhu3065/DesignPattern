//
//  ViewController.m
//  BuilderPattern
//
//  Created by wlz on 2021/12/6.
//

#import "ViewController.h"
#import "LZComputerBuilder.h"

#import "LZBUDirector.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     建造者模式的简单应用
     一个builder建造一个对象，没有director。
     */
    LZComputerBuilder *computerBuilder = [[LZComputerBuilder alloc] init];
    LZComputer *computer = [[[[[[computerBuilder builderCPU:@"i5"]
                                builderRAM:@"三星"]
                               builderKeyboard:@"罗技"]
                              builderDisplay:@"GTX1080显卡"]
                             builderUsbCount:3]
                            build];
    NSLog(@"%@",computer.description);
    
    /**
     建造者模式的标准应用
     */
    LZBUKFCMealsBuilder *builder = [[LZBUKFCMealsBuilder alloc] init];
    LZBUDirector *direcor = [[LZBUDirector alloc] init];
    LZBUProduct *breakfast = [direcor constructBreakfast:builder];
    
    LZBUKFCMealsBuilder *builder1 = [[LZBUKFCMealsBuilder alloc] init];
    LZBUProduct *launch = [direcor constructLunch:builder1];
    NSLog(@"breakfast:%@",breakfast.description);
    NSLog(@"launch:%@",launch.description);
    
    /**
     也可以不需要director
     */
    LZBUKFCMealsBuilder *builder3 = [[LZBUKFCMealsBuilder alloc] init];
    LZBUProduct *product3 = [[[[builder3 buildFood:@"汉堡"] buildDrink:@"可乐"]buildSnack:@"鸡翅"]getResult];
    NSLog(@"product3:%@",product3.description);

}


@end
