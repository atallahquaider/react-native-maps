//
//  AIRMapWeightedPoint.h
//  AirMaps
//
//  Created by Atallah Quaider on 4/3/18.
//  Copyright © 2018 Christopher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface AIRMapWeightedPoint : NSObject

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, assign) double weight;

@end
