//
//  HomeViewController.m
//  CustomWaitHUD
//
//  Created by $heb!n Koshy on 2/18/16.
//  Copyright © 2016 $heb!n Koshy. All rights reserved.
//

#import "HomeViewController.h"
#import "SHActivityView.h"

@interface HomeViewController ()
{
    SHActivityView *spinnerVeryLarge; // USUALLY USED FOR iPads
    SHActivityView *spinnerLarge; // RED spinner
    SHActivityView *spinnerMedium; // White spinner
    SHActivityView *spinnerSmall; // blue spinner
    SHActivityView *spinnerTiny; //black spinner, handled for different orientation cases
}

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    spinnerSmall = [[SHActivityView alloc]init];
    spinnerSmall.spinnerSize = kSHSpinnerSizeSmall;
    spinnerSmall.spinnerColor = [UIColor blueColor];
    [self.viewOuter addSubview:spinnerSmall];
    [spinnerSmall showAndStartAnimate];
    spinnerSmall.center = CGPointMake(_viewOuter.frame.origin.x + spinnerSmall.frame.size.width, _viewOuter.frame.origin.y + spinnerSmall.frame.size.height);
    
    
    
    spinnerMedium = [[SHActivityView alloc]init];
    spinnerMedium.layer.cornerRadius = 10.0f;
    spinnerMedium.centerTitle = @"75 %";
    spinnerMedium.bottomTitle = @"Loading";
    spinnerMedium.spinnerSize = kSHSpinnerSizeMedium;
    [self.viewOuter addSubview:spinnerMedium];
    [spinnerMedium showAndStartAnimate];
    [spinnerMedium setFrame:CGRectMake(spinnerSmall.frame.origin.x + spinnerSmall.frame.size.width + 20, spinnerSmall.frame.origin.y, spinnerMedium.frame.size.width, spinnerMedium.frame.size.height)];

    
    
    
    
    spinnerLarge = [[SHActivityView alloc]init];
    [spinnerLarge setBackgroundColor:[UIColor brownColor]];
    spinnerLarge.spinnerSize = kSHSpinnerSizeLarge;
    spinnerLarge.centerTitle = @"100 %";
    spinnerLarge.bottomTitle = @"Loading";
    spinnerLarge.centerTitleColor = [UIColor greenColor];
    spinnerLarge.bottomTitleColor = [UIColor blackColor];
    spinnerLarge.bottomTitleFont = [UIFont fontWithName:@"Didot-Italic" size:19];
    spinnerLarge.centerTitleFont = [UIFont fontWithName:@"Georgia-Bold" size:22];
    spinnerLarge.spinnerColor = [UIColor redColor];
    spinnerLarge.stopBottomTitleDotAnimation = YES;
    spinnerLarge.stopShowingAndDismissingAnimation = YES;
    [self.viewOuter addSubview:spinnerLarge];
    [spinnerLarge showAndStartAnimate];
    [spinnerLarge setFrame:CGRectMake(spinnerMedium.frame.origin.x , spinnerMedium.frame.origin.y + spinnerMedium.frame.size.height +20, spinnerLarge.frame.size.width, spinnerLarge.frame.size.height)];
    
    
    
    
    /*
    
     USUALLY USED FOR iPads
    
    spinnerVeryLarge = [[SHActivityView alloc]init];
    spinnerVeryLarge.stopShowingAndDismissingAnimation = NO;
    spinnerVeryLarge.spinnerSize = kSHSpinnerSizeVeryLarge;
    spinnerVeryLarge.centerTitle = @"100 %";
    spinnerVeryLarge.bottomTitle = @"Please wait";
    spinnerVeryLarge.layer.cornerRadius = 10.0f;
    [spinnerVeryLarge showAndStartAnimate];
    [self.viewOuter addSubview:spinnerVeryLarge];
    [spinnerVeryLarge showAndStartAnimate];
    [spinnerVeryLarge setFrame:CGRectMake(50, 50, spinnerVeryLarge.frame.size.width, spinnerVeryLarge.frame.size.height)];

    */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    spinnerTiny = [[SHActivityView alloc]init];
    spinnerTiny.spinnerColor = [UIColor blackColor];
    [self.viewSample addSubview:spinnerTiny];
    [spinnerTiny showAndStartAnimate];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(deviceRotated) name:UIApplicationDidChangeStatusBarOrientationNotification object:nil];
    [self makeSpinnerTinyOnCenter];
}


-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationDidChangeStatusBarOrientationNotification object:nil];
}



-(void)deviceRotated
{
    [self performSelector:@selector(makeSpinnerTinyOnCenter) withObject:nil afterDelay:0.1];
}



-(void)makeSpinnerTinyOnCenter
{
    spinnerTiny.center = CGPointMake(self.viewSample.frame.size.width/2, self.viewSample.frame.size.height/2);
}


#pragma mark - Button Actions

- (IBAction)buttonStartAction:(id)sender
{
    [spinnerTiny showAndStartAnimate];
    [self makeSpinnerTinyOnCenter];
    
    [spinnerSmall showAndStartAnimate];
    spinnerSmall.center = CGPointMake(_viewOuter.frame.origin.x + spinnerSmall.frame.size.width, _viewOuter.frame.origin.y + spinnerSmall.frame.size.height);
    
    
    [spinnerMedium showAndStartAnimate];
    [spinnerMedium setFrame:CGRectMake(spinnerSmall.frame.origin.x + spinnerSmall.frame.size.width + 20, spinnerSmall.frame.origin.y, spinnerMedium.frame.size.width, spinnerMedium.frame.size.height)];
    
    [spinnerLarge showAndStartAnimate];
    
    [spinnerLarge setFrame:CGRectMake(spinnerMedium.frame.origin.x , spinnerMedium.frame.origin.y + spinnerMedium.frame.size.height +20, spinnerLarge.frame.size.width, spinnerLarge.frame.size.height)];
    
    spinnerVeryLarge.stopShowingAndDismissingAnimation = YES;
    [spinnerVeryLarge showAndStartAnimate];
}



- (IBAction)buttonStopActionStop:(id)sender
{
    [spinnerTiny dismissAndStopAnimation];
    [spinnerSmall dismissAndStopAnimation];
    [spinnerMedium dismissAndStopAnimation];
    [spinnerLarge dismissAndStopAnimation];
    [spinnerVeryLarge dismissAndStopAnimation];
}




@end
