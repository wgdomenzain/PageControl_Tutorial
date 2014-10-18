//
//  ViewController.h
//  PageControl
//
//  Created by Walter Gonzalez Domenzain on 18/10/14.
//  Copyright (c) 2014 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>
//Variables


@interface ViewController : UIViewController<UIScrollViewDelegate>
@property NSUInteger uiPageIndex;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIPageControl *pageCtrl;


@end

