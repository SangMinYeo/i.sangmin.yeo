//
//  ViewController.m
//  MapTest
//
//  Created by SSangGA on 2017. 2. 28..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"
#import <DaumMap/MTMapView.h>

@interface ViewController ()
<MTMapViewDelegate>
@property /*(nonatomic, weak)*/ MTMapView *mapObj;

@end

@implementation ViewController

- (void)viewDidLoad {
    
//    지도객체생성 및 할당
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    MTMapView *defaultMap = [[MTMapView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height)];
    [defaultMap setDaumMapApiKey:@"409c038a4f929d7d71848196e7ec09ff"];
    defaultMap.delegate = self;
    defaultMap.baseMapType = MTMapTypeStandard;
    [self.view addSubview:defaultMap];
    self.mapObj = defaultMap;
    
    
    
    [self.mapObj dealloc];

}
//    중심점 설정
- (void)setCenter
{
    [self.mapObj setMapCenterPoint:[MTMapPoint mapPointWithGeoCoord:MTMapPointGeoMake(37.53737528, 127.00557633)] animated:YES];
}

//    레벨 변경
- (void)changeLevel
{
    [self.mapObj setZoomLevel:4 animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
    [self release];
    [super dealloc];
}
@end
