//
//  AIRGMSCircle.h
//  AirMaps
//
//  Created by Atallah Quaider on 4/27/18.
//  Copyright © 2018 Christopher. All rights reserved.
//

#import <GoogleMaps/GoogleMaps.h>
#import <React/UIView+React.h>

@class AIRGMSCircle;

@interface AIRGMSCircle : GMSCircle
@property (nonatomic, strong) NSString *identifier;
@property (nonatomic, copy) RCTBubblingEventBlock onPress;
@end
