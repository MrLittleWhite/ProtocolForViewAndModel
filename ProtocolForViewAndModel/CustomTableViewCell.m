//
//  CustomTableViewCell.m
//  hehe
//
//  Created by lazy-iOS2 on 16/1/26.
//  Copyright © 2016年 lazy-iOS2. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier{
    if (self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier]){
        //...
    }
    return self;
}



- (void)loadModel:(id<CustomTableViewCellProtocol>)model{
    self.textLabel.text       = [model CustomTableViewCellTitle];
    self.detailTextLabel.text = [model CustomTableViewCellDetail];
}

@end
