//
//  ComKaraoakAirplayView.m
//  TiAirPlay
//
//  Created by Frank on 09/01/15.
//
//

#import <Foundation/Foundation.h>

#import "ComKaraoakAirplayView.h"
#import "ComKaraoakAirplayModule.h"

@implementation ComKaraoakAirplayView
- (void)initializeState
{
    [self createAirPlayControl];
    [super initializeState];
    
}

-(void)dealloc
{
    // Deallocates the view
    RELEASE_TO_NIL(airPlayControl);
    [super dealloc];
}

-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    // Sets the size and position of the view
    [TiUtils setView:airPlayControl positionRect:bounds];
}

-(NSString*)getPathToModuleAsset:(NSString*) fileName
{
    // The module assets are copied to the application bundle into the folder pattern
    // "module/<moduleid>". One way to access these assets is to build a path from the
    // mainBundle of the application.
    
    NSString *pathComponent = [NSString stringWithFormat:@"modules/com.karaoak.airplay/%@", fileName];
    NSString *result = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:pathComponent];
    
    return result;
}


-(MPVolumeView*)createAirPlayControl
{
    
    NSLog(@"self.proxy valueForKey: imageNormal = %@", [self.proxy valueForKey:@"imageNormal"]);
    imageNormal = [self.proxy valueForKey:@"imageNormal"];
    if(imageNormal==nil) imageNormal = [self getPathToModuleAsset:@"airplay-normal"];
    //NSLog(@"createAirPlayControl: imageNormal = %@", imageNormal);
    
    imageHighlighted = [self.proxy valueForKey:@"imageHighlighted"];
    if(imageHighlighted==nil) imageHighlighted = [self getPathToModuleAsset:@"airplay-highlighted"];
    //NSLog(@"createAirPlayControl: imageHighlighted = %@", imageHighlighted);
    
    imageSelected = [self.proxy valueForKey:@"imageSelected"];
    if(imageSelected==nil) imageSelected = [self getPathToModuleAsset:@"airplay-selected"];
    //NSLog(@"createAirPlayControl: imageSelected = %@", imageSelected);
    
    if (airPlayControl == nil)
    {
        self.backgroundColor = [UIColor clearColor];
        // Create and keep a reference to the view upon initialization
        airPlayControl = [[MPVolumeView alloc] initWithFrame:[self frame]];
        [airPlayControl setShowsVolumeSlider:NO];
        [airPlayControl setRouteButtonImage:[UIImage imageNamed:imageNormal] forState:UIControlStateNormal];
        [airPlayControl setRouteButtonImage:[UIImage imageNamed:imageHighlighted] forState:UIControlStateHighlighted];
        [airPlayControl setRouteButtonImage:[UIImage imageNamed:imageSelected] forState:UIControlStateSelected];
        
        [self addSubview:airPlayControl];
        [airPlayControl release];
        
    }
    return airPlayControl;
}
@end
