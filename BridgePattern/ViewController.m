//
//  ViewController.m
//  BridgePattern
//
//  Created by wlz on 2021/12/26.
//

#import "ViewController.h"
#import "LZBPBCarStreet.h"
#import "LZBPBBusStreet.h"

#import "LZBPSAbstractRaod.h"
#import "LZBPSConcreteSpeedWay.h"
#import "LZBPConcreteCar.h"
#import "LZBPConcreteBus.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self badExample];
    
    [self sloveExample];
}

#pragma mark 坏的案例
/**
 我么以路为例，分为高速公路和城市道路；高速公路又分为小汽车在行驶和大型客车在行驶；城市道路也分为小汽车和大型客车在行驶；
 
 我么以Road为例，通过继承，实现方案，但是有很多问题：
 1、这样的设计是脆弱的，虽然遵循开放-封闭原则，但是违背了单一职责，即一个类只有一个引起它变化的原因，而这里却有多个，道路类型的变化和汽车类型的变化。
 2、重复代码很多，不同的汽车在不同的路上行驶也会有一部分的代码是相同的；
 3、是类的结构过于复杂，继承关系太多，难于维护，
 4、最后最致命的一点是扩展性太差。如果变化沿着汽车的类型和不同的道路两个方向变化，我们会看到这个类的结构会迅速的变庞大。比如 有 10 种道路 和 10 种类型的车 那么有 10*10 = 100 个具体的类
 
 */
- (void)badExample {
    LZBPBCarStreet *carStreet = [[LZBPBCarStreet alloc] init];
    [carStreet run];
    
    LZBPBBusStreet *busStreet = [[LZBPBBusStreet alloc] init];
    [busStreet run];
}

#pragma mark ---- 解决方式
/*
 可以看到，通过对象组合的方式，Bridge 模式把两个角色之间的继承关系改为了耦合的关系，从而使这两者可以从容自若的各自独立的变化，这也是Bridge模式的本意。
 这样增加了客户程序与路与汽车的耦合。其实这样的担心是没有必要的，因为这种耦合性是由于对象的创建所带来的，完全可以用创建型模式去解决。在应用时结合创建型设计模式来处理具体的问题。
 关键的代码是 AbstractRoad 里有个 AbstractCar 这样的对应关系
 可以看出来 如果 Road  和 Car 是 需要的类的总数 是 N+M 的关系 而坏的例子中是 N*M 的类的总数
 */

- (void)sloveExample {
    LZBPSAbstractRaod *road1 = [[LZBPSConcreteSpeedWay alloc] init];
    road1.car = [[LZBPConcreteCar alloc] init];
    [road1.car carRun];
    
    LZBPSAbstractRaod *road2 = [[LZBPSConcreteSpeedWay alloc] init];
    road2.car = [[LZBPConcreteBus alloc] init];
    [road2.car carRun];
}

@end
