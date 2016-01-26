//
//  BananaModel.h
//  hehe
//
//  Created by lazy-iOS2 on 16/1/26.
//  Copyright © 2016年 lazy-iOS2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CustomTableViewCellProtocol.h"

@interface BananaModel : NSObject<CustomTableViewCellProtocol>

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *introduce;

@end
