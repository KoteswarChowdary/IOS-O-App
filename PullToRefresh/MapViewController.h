//
//  MapViewController.h
//  PullToRefresh
//
//  Created by APPLE on 31/07/15.
//  Copyright (c) 2015 Saiss. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKAnnotation.h>

@interface MapViewController : UIViewController<MKMapViewDelegate,  CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapview;


@end
