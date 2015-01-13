//
//  ComKaraoakAirplayView.h
//  TiAirPlay
//
//  Created by Frank on 09/01/15.
//
//

#ifndef TiAirPlay_ComKaraoakAirplayView_h
#define TiAirPlay_ComKaraoakAirplayView_h

#endif

#import "TiUIView.h"
#import <MediaPlayer/MPVolumeView.h>

@interface ComKaraoakAirplayView: TiUIView {
    MPVolumeView *airPlayControl;
    NSString * imageNormal;
    NSString * imageHighlighted;
    NSString * imageSelected;
}

@end
