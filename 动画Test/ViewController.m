//
//  ViewController.m
//  动画Test
//
//  Created by 于璐 on 2018/7/31.
//  Copyright © 2018年 YuLu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    CAEmitterLayer *emitter;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view, typically from a nib.
    emitter = [CAEmitterLayer layer];
    emitter.frame = self.view.bounds;
    [self.view.layer addSublayer:emitter];
    emitter.renderMode = kCAEmitterLayerUnordered;
    emitter.emitterPosition = CGPointMake(emitter.frame.size.width / 3.0, -75);
    
    
}

- (IBAction)start:(id)sender {
   
    CAEmitterCell *cell = [[CAEmitterCell alloc] init];
    cell.contents = (__bridge id)[UIImage imageNamed:@"雪花"].CGImage;
    cell.birthRate = 5;
    cell.lifetime =7.0 ;
    cell.alphaSpeed = 0;
    cell.velocity = 150;
    cell.velocityRange = 100;
    cell.emissionLongitude = M_PI / 2;
    cell.emissionRange = M_PI /2 ;
    emitter.emitterCells = @[cell];
    
}
- (IBAction)end:(id)sender {
    
    
    emitter.emitterCells=nil;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
