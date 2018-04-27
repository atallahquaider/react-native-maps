//
//  AIRGoogleMapsCircle.m
//
//  Created by Nick Italiano on 10/24/16.
//
#import <UIKit/UIKit.h>
#import "AIRGoogleMapCircle.h"
#import "AIRGMSCircle.h"
#import <GoogleMaps/GoogleMaps.h>
#import <React/RCTUtils.h>

@implementation AIRGoogleMapCircle

- (instancetype)init
{
  if (self = [super init]) {
    _circle = [[AIRGMSCircle alloc] init];
  }
  return self;
}

- (void)setRadius:(double)radius
{
  _radius = radius;
  _circle.radius = radius;
}

- (void)setCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate
{
  _centerCoordinate = centerCoordinate;
  _circle.position = centerCoordinate;
}

-(void)setStrokeColor:(UIColor *)strokeColor
{
  _strokeColor = strokeColor;
  _circle.strokeColor = strokeColor;
}

-(void)setStrokeWidth:(double)strokeWidth
{
  _strokeWidth = strokeWidth;
  _circle.strokeWidth = strokeWidth;
}

-(void)setFillColor:(UIColor *)fillColor
{
  _fillColor = fillColor;
  _circle.fillColor = fillColor;
}

-(void)setZIndex:(int)zIndex
{
  _zIndex = zIndex;
  _circle.zIndex = zIndex;
}

-(void)setTappable:(BOOL)tappable
{
    _tappable = tappable;
    _circle.tappable = tappable;
}

- (void)setOnPress:(RCTBubblingEventBlock)onPress {
    _circle.onPress = onPress;
}

@end
