//
//  AppleModel.h
//  hehe
//
//  Created by lazy-iOS2 on 16/1/26.
//  Copyright © 2016年 lazy-iOS2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CustomTableViewCellProtocol.h"

@interface AppleModel : NSObject<CustomTableViewCellProtocol>

@property (nonatomic, copy) NSString *nickName;

@property (nonatomic, strong) NSNumber *Price;

@end
