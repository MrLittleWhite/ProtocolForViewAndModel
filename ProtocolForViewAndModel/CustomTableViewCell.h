//
//  CustomTableViewCell.h
//  hehe
//
//  Created by lazy-iOS2 on 16/1/26.
//  Copyright © 2016年 lazy-iOS2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTableViewCellProtocol.h"

@interface CustomTableViewCell : UITableViewCell

- (void)loadModel:(id<CustomTableViewCellProtocol>) model;

@end
