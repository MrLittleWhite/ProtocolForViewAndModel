//
//  AppleModel.m
//  hehe
//
//  Created by lazy-iOS2 on 16/1/26.
//  Copyright © 2016年 lazy-iOS2. All rights reserved.
//

#import "AppleModel.h"

@implementation AppleModel

//...

#pragma mark - CustomTableViewProtocol Implement
- (NSString *)CustomTableViewCellTitle{
    //...
    return self.nickName;
}

- (NSString *)CustomTableViewCellDetail{
    //...
    if (self.Price) {
        return [NSString stringWithFormat:@"apple price is %@ dollar for one kilo.",self.Price];
    }
    return @"apple price is unknown.";
}

@end
