//
//  BananaModel.m
//  hehe
//
//  Created by lazy-iOS2 on 16/1/26.
//  Copyright © 2016年 lazy-iOS2. All rights reserved.
//

#import "BananaModel.h"

@implementation BananaModel


//...


#pragma mark - CustomTableViewProtocol Implement
- (NSString *)CustomTableViewCellTitle{
    //...
    return self.name;
}

- (NSString *)CustomTableViewCellDetail{
    //
    return self.introduce;
}


@end
