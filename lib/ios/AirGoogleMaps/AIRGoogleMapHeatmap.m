//
//  AIRGoogleMapHeatmap.m
//  AirMaps
//
//  Created by Atallah Quaider on 3/29/18.
//  Copyright © 2018 Christopher. All rights reserved.
//

#import "AIRGoogleMapHeatmap.h"

@implementation AIRGoogleMapHeatmap

- (void) refreshHeatmap {
    if(_weightTileLayer != nil) {
        _weightTileLayer.map = nil;
        [self setMap:_map];
    }
}

- (void) setPoints:(NSArray<GMUWeightedLatLng *> * _Nonnull)points {
    _points = points;
    [self refreshHeatmap];
}

- (void) setRadius:(NSUInteger)radius {
    _radius = radius;
    [self refreshHeatmap];
}

- (void) setMaxIntensity:(CGFloat)maxIntensity {
    _maxIntensity = maxIntensity;
    [self refreshHeatmap];
}

- (void) setOpacity:(CGFloat)opacity {
    _opacity = opacity;
    [self refreshHeatmap];
}

- (void) setGradient:(GMUGradient *)gradient {
    
    _gradient = gradient;
    
    [self refreshHeatmap];
}

- (void) setGradientSmoothing:(CGFloat)gradientSmoothing {
    _gradientSmoothing = gradientSmoothing;
    [self refreshHeatmap];
}

- (void)setMap:(AIRGoogleMap *)map {
    _map = map;
    if(map == nil) {
        _weightTileLayer.map = nil;
    } else {
        
        GMUHeatmapTileLayer *tileLayer = [[GMUHeatmapTileLayer alloc] init];
        tileLayer.weightedData = _points;
        tileLayer.radius = _radius;
        tileLayer.gradient = _gradient;
        tileLayer.map = map;
        _weightTileLayer = tileLayer;
        
    }
}

- (void)setHeatmapMode:(NSString *)heatmapMode {
    _heatmapMode = heatmapMode;
    [self refreshHeatmap];
}

@end
