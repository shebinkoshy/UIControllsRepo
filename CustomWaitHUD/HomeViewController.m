//
//  HomeViewController.m
//  CustomWaitHUD
//
//  Created by $heb!n Koshy on 2/18/16.
//  Copyright © 2016 $heb!n Koshy. All rights reserved.
//

#import "HomeViewController.h"
//#import "ActivityView.h"

@interface HomeViewController ()
{
    SHActivityView *spinnerVeryLarge;
}

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    /*
    spinnerVeryLarge = [[SHActivityView alloc]init];
    [spinnerVeryLarge setBackgroundColor:[UIColor brownColor]];
    spinnerVeryLarge.stopShowingAndDismissingAnimation = NO;
//    spinnerVeryLarge.disableUserInteraction = YES;
    spinnerVeryLarge.spinnerSize = kSHSpinnerSizeVeryLarge;
    spinnerVeryLarge.centerTitle = @"100 %";
    spinnerVeryLarge.bottomTitle = @"Please wait gdfg";
    spinnerVeryLarge.centerTitleColor = [UIColor greenColor];
    spinnerVeryLarge.bottomTitleColor = [UIColor blackColor];
    spinnerVeryLarge.stopBottomTitleDotAnimation = NO;
    spinnerVeryLarge.bottomTitleFont = [UIFont fontWithName:@"Didot-Italic" size:19];
    spinnerVeryLarge.centerTitleFont = [UIFont fontWithName:@"Georgia-Bold" size:22];
    spinnerVeryLarge.layer.cornerRadius = 10.0f;
//    [spinnerVeryLarge showAndStartAnimate];
    [self.view addSubview:spinnerVeryLarge];
    [spinnerVeryLarge showAndStartAnimate];
    
    SHActivityView *spinnerLarge = [[SHActivityView alloc]init];
//    [spinnerLarge setBackgroundColor:[UIColor clearColor]];
    spinnerLarge.stopBottomTitleDotAnimation = YES;
    spinnerLarge.centerTitle = @"100 %";
    spinnerLarge.bottomTitle = @"Loading";
//    spinnerLarge.disableUserInteraction = YES;
    spinnerLarge.spinnerSize = kSHSpinnerSizeLarge;
    spinnerLarge.spinnerColor = [UIColor redColor];
    [self.view addSubview:spinnerLarge];
    [spinnerLarge showAndStartAnimate];
    [spinnerLarge setFrame:CGRectMake(spinnerVeryLarge.frame.origin.x + spinnerVeryLarge.frame.size.width + 20, spinnerVeryLarge.frame.origin.y, 185, 185)];
//    spinnerLarge.center = CGPointMake(<#CGFloat x#>, <#CGFloat y#>)*/
    
    SHActivityView *spinnerMedium = [[SHActivityView alloc]init];
    spinnerMedium.layer.cornerRadius = 10.0f;
    spinnerMedium.centerTitle = @"75 %";
    spinnerMedium.bottomTitle = @"Loading";
    spinnerMedium.spinnerSize = kSHSpinnerSizeMedium;
//    [self.view addSubview:spinnerMedium];
    [spinnerMedium showAndStartAnimate];
    spinnerMedium.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
//    [spinnerMedium setFrame:CGRectMake(spinnerLarge.frame.origin.x + spinnerLarge.frame.size.width + 20, spinnerLarge.frame.origin.y, 150, 150)];
    
  /*  SHActivityView *spinnerSmall = [[SHActivityView alloc]init];
    [spinnerSmall setBackgroundColor:[UIColor clearColor]];
//    spinnerSmall.disableUserInteraction = YES;
    spinnerSmall.spinnerSize = kSHSpinnerSizeSmall;
    spinnerSmall.spinnerColor = [UIColor blueColor];
    [self.view addSubview:spinnerSmall];
    [spinnerSmall showAndStartAnimate];
    [spinnerSmall setFrame:CGRectMake(spinnerMedium.frame.origin.x + spinnerMedium.frame.size.width + 50, spinnerVeryLarge.frame.origin.y, 50, 50)];*/
    
    SHActivityView *spinnerTiny = [[SHActivityView alloc]init];
    spinnerTiny.spinnerColor = [UIColor blackColor];
    [self.view addSubview:spinnerTiny];
    [spinnerTiny showAndStartAnimate];
    spinnerTiny.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
//    spinnerTiny.center = self.viewNew.center;
//    [spinnerTiny setFrame:CGRectMake(spinnerSmall.frame.origin.x + spinnerSmall.frame.size.width + 40, spinnerVeryLarge.frame.origin.y, 30, 30)];

//    [self performSelector:@selector(dismiss) withObject:nil afterDelay:2.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}


-(void)dismiss
{
    [spinnerVeryLarge dismissAndStopAnimation];
}


- (IBAction)buttonAction:(id)sender
{
    spinnerVeryLarge.stopShowingAndDismissingAnimation = YES;
    [spinnerVeryLarge showAndStartAnimate];
}

- (IBAction)buttonActionStop:(id)sender
{
    [spinnerVeryLarge dismissAndStopAnimation];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
