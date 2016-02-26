# UIControllsRepo
spinner, HUD

same in Swift https://github.com/shebinkoshy/Activity-Indicator-Swift

How to use ???

 copy the files SHActivityView.h and SHActivityView.m to your project 

    #import "SHActivityView.h"

    SHActivityView *spinnerSmall; // globally declare



    spinnerSmall = [[SHActivityView alloc]init];
    spinnerSmall.spinnerSize = kSHSpinnerSizeSmall;
    spinnerSmall.spinnerColor = [UIColor blueColor];
    [self.viewOuter addSubview:spinnerSmall];
    [spinnerSmall showAndStartAnimate];
    spinnerSmall.center = CGPointMake(_viewOuter.frame.size.width/2, _viewOuter.frame.size.height/2);
    
    
    
    [spinnerSmall dismissAndStopAnimation];// to dismiss the view
    
Advantages

 -> Support from iOS 6
  
 -> Able to set colors for spinner
 
 -> Available in different sizes like tiny, small, medium, large, very large
 
 -> Able to set Title (center and bottom) for medium, large, very large sizes

