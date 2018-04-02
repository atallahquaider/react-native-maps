//
//  RCTConvert+MoreMapKit.m
//  AirMaps
//
//  Created by Atallah Quaider on 4/3/18.
//  Copyright © 2018 Christopher. All rights reserved.
//

#import "RCTConvert+MoreMapKit.h"

#import <React/RCTConvert+CoreLocation.h>
#import "AIRMapCoordinate.h"
#import "AIRMapWeightedPoint.h"

@implementation RCTConvert (MoreMapKit)

// NOTE(lmr):
// This is a bit of a hack, but I'm using this class to simply wrap
// around a `CLLocationCoordinate2D`, since I was unable to figure out
// how to handle an array of structs like CLLocationCoordinate2D. Would love
// to get rid of this if someone can show me how...
+ (AIRMapCoordinate *)AIRMapCoordinate:(id)json
{
    AIRMapCoordinate *coord = [AIRMapCoordinate new];
    coord.coordinate = [self CLLocationCoordinate2D:json];
    return coord;
}

RCT_ARRAY_CONVERTER(AIRMapCoordinate)

+ (AIRMapWeightedPoint *)AIRMapWeightedPoint:(id)json
{
    AIRMapWeightedPoint *point = [AIRMapWeightedPoint new];
    point.coordinate = [self CLLocationCoordinate2D:json];
    point.weight     = [self double:json[@"weight"]];
    return point;
}

RCT_ARRAY_CONVERTER(AIRMapWeightedPoint)

@end
