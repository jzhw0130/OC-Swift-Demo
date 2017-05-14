//
//  ViewController.m
//  OCDemo
//
//  Created by jing on 5/14/17.
//  Copyright © 2017 jing. All rights reserved.
//

#import "ViewController.h"
#import "OCDemo-swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Tools *tool = [[Tools alloc]init];
    NSString *tip = [tool commandGetInfoWithId:2 plus:4]; 
    NSLog(@"Result:%@", tip);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
