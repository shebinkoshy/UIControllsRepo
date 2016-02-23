# UIControllsRepo
spinner, HUD

How to use ???

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

  Support from iOS 6
  Able to set colors for spinner
