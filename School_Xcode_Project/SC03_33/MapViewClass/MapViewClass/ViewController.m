//
//  ViewController.m
//  MapViewClass
//
//  Created by SSangGA on 2017. 3. 7..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>


//static const CGFloat BASE_LATITUTE = 11.961353;
//static const CGFloat BASE_LONGITUTE = 121.925420;
//11.961353, 121.925420
//37.515652, 127.021388

@interface ViewController ()
<CLLocationManagerDelegate>
@property (nonatomic) IBOutlet MKMapView *mapVw;
@property (nonatomic) CLLocationManager *manager;
@property (nonatomic) MKUserLocation *userLoc;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    
//    //    2d좌표 선언 = 좌표타입
//    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(BASE_LATITUTE, BASE_LONGITUTE);
//    //    스팬 비율 선언 = spanmake
//    
//    MKCoordinateSpan span = MKCoordinateSpanMake(0.0005, 0.0005);
//    //    지역 선언
//    MKCoordinateRegion section = MKCoordinateRegionMake(coordinate, span);
//    [self.mapVw setRegion:section];
    

    self.manager = [[CLLocationManager alloc] init];
    self.manager.delegate = self;
    self.manager.desiredAccuracy = kCLLocationAccuracyBest;
    [self.manager requestWhenInUseAuthorization];
    self.mapVw.showsScale = YES;
    self.mapVw.showsCompass = YES;
    self.mapVw.showsTraffic = YES;
    self.mapVw.showsBuildings = YES;
    self.mapVw.showsUserLocation = YES;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(self.mapVw.userLocation.location.coordinate, 50, 50);
    [self.mapVw setRegion:region animated:YES];
    
    
    [self.manager startUpdatingLocation];
}


- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations
{

    [manager stopUpdatingLocation];
    NSLog(@"this");
    CLLocationCoordinate2D coordinate = ((CLLocation *)locations.lastObject).coordinate;
    //CLLocationCoordinate2D coordinate = self.mapVw.userLocation.coordinate;

    
    MKCoordinateSpan span = MKCoordinateSpanMake(0.05, 0.05);

    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
    [self.mapVw setRegion:region];
    
    [self.mapVw setShowsUserLocation:YES];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end


