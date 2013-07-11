
#import "HelloWorldLayer.h"

#import "AppDelegate.h"

#pragma mark - HelloWorldLayer

@implementation HelloWorldLayer

+(CCScene *) scene
{
	CCScene *scene = [CCScene node];
	HelloWorldLayer *layer = [HelloWorldLayer node];
	[scene addChild: layer];
	return scene;
}

-(id) init
{
	if( (self=[super init]) ) {
        CCSpriteBatchNode* batcnode = [CCSpriteBatchNode batchNodeWithFile:@"Icon.png" capacity:100];
        [self addChild:batcnode];
        for (int i=0; i<10; i++) {
            for (int j=0; j<10; j++) {
                //CCSprite* tIcon =[CCSprite spriteWithFile:@"Icon.png"];
                CCSprite* tIcon =[CCSprite spriteWithTexture:batcnode.texture];
                tIcon.position =ccp(80+i*60, 80+j*60);
                [batcnode addChild:tIcon];
            }
        }
        int ceng=5;
        int dps = 0;
        if(ceng>0)
        {
            ceng*=2;
        }else{
            ceng++;
        }
        dps=ceng*100;
        
        int cengs = 32;
        int renshu=6;
        CCArray *array = [[CCArray alloc] init];
        
        if(cengs%6==0)
        {
            array=cengs/6;
            renshu+=renshu;
        }
        CCLOG(@"%d",ceng);
	}
	return self;
}

- (void) dealloc
{
	[super dealloc];
}

#pragma mark GameKit delegate

-(void) achievementViewControllerDidFinish:(GKAchievementViewController *)viewController
{
	AppController *app = (AppController*) [[UIApplication sharedApplication] delegate];
	[[app navController] dismissModalViewControllerAnimated:YES];
}

-(void) leaderboardViewControllerDidFinish:(GKLeaderboardViewController *)viewController
{
	AppController *app = (AppController*) [[UIApplication sharedApplication] delegate];
	[[app navController] dismissModalViewControllerAnimated:YES];
}
@end
