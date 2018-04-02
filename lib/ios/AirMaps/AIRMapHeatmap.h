//
//  AIRMapHeatmap.h
//  AirMaps
//
//  Created by Atallah Quaider on 4/3/18.
//  Copyright © 2018 Christopher. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <MapKit/MapKit.h>
#import <UIKit/UIKit.h>

#import <React/RCTComponent.h>
#import <React/RCTView.h>

#import "RCTConvert+MoreMapKit.h"
#import "AIRMapWeightedPoint.h"

#import "AIRMap.h"

#import "DTMHeatmap/Heatmaps/DTMHeatmap.h"
#import "DTMHeatmap/DTMHeatmapRenderer.h"

@interface AIRMapHeatmap: MKAnnotationView <MKOverlay>

@property (nonatomic, weak) AIRMap *map;

@property (nonatomic, strong) DTMHeatmap *heatmap;
@property (nonatomic, strong) MKOverlayRenderer *renderer;
@property (nonatomic, strong) NSArray<AIRMapWeightedPoint *> *points;

#pragma mark MKOverlay protocol

@property(nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property(nonatomic, readonly) MKMapRect boundingMapRect;
- (BOOL)canReplaceMapContent;

@end
