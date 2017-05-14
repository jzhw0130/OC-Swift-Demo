//
//  OCTools.m
//  OCDemo
//
//  Created by jing on 5/14/17.
//  Copyright © 2017 jing. All rights reserved.
//

#import "OCTools.h"

@implementation OCTools

-(int)commandChangeID:(int)changeID {
    return changeID * 2;
}

-(int)commandChangeID:(int)changeID  plus:(int8_t)plus {
    return changeID * plus;
}

@end
