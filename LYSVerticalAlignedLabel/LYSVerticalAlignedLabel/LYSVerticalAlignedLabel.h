//
//  LYSVerticalAlignedLabel.h
//  LYSVerticalAlignedLabel
//
//  Created by jk on 2017/3/7.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger,VerticalAlignDirection){
    Top,
    Center,
    Bottom
};

@interface LYSVerticalAlignedLabel : UILabel

@property(nonatomic,assign)VerticalAlignDirection alignDirection;

@end
