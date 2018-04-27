//
//  AIRGoogleMapCircleManager.m
//
//  Created by Nick Italiano on 10/24/16.
//

#import "AIRGoogleMapCircleManager.h"

#import <React/RCTConvert.h>
#import <React/RCTEventDispatcher.h>
#import <React/RCTViewManager.h>
#import "AIRGoogleMapCircle.h"
#import <React/RCTBridge.h>
#import <React/UIView+React.h>

@interface AIRGoogleMapCircleManager()

@end

@implementation AIRGoogleMapCircleManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    AIRGoogleMapCircle *circle = [AIRGoogleMapCircle new];
    circle.bridge = self.bridge;
    return circle;
}

RCT_EXPORT_VIEW_PROPERTY(radius, double)
RCT_REMAP_VIEW_PROPERTY(center, centerCoordinate, CLLocationCoordinate2D)
RCT_EXPORT_VIEW_PROPERTY(strokeColor, UIColor)
RCT_EXPORT_VIEW_PROPERTY(strokeWidth, double)
RCT_EXPORT_VIEW_PROPERTY(fillColor, UIColor)
RCT_EXPORT_VIEW_PROPERTY(zIndex, int)
RCT_EXPORT_VIEW_PROPERTY(tappable, BOOL)
RCT_EXPORT_VIEW_PROPERTY(onPress, RCTBubblingEventBlock)

@end
