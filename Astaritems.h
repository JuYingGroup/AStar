//
//  Astaritems.h
//  AStar
//
//  Created by 曹笛 on 13-6-28.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface Astaritems : CCNode {
@public

  @private
    int col;
    int row;
    int fid;
    int g;
    int h;
    int f;
    
}
@property (nonatomic,assign)int COL;
@property (nonatomic,assign)int ROW;
@property (nonatomic,assign)int FID;
@property (nonatomic,assign)int G;
@property (nonatomic,assign)int H;
@property (nonatomic,assign)int F;

@end
