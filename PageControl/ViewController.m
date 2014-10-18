//
//  ViewController.m
//  PageControl
//
//  Created by Walter Gonzalez Domenzain on 18/10/14.
//  Copyright (c) 2014 Smartplace. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Set the content size of our scrollview according to the total width of our imageView objects.
    self.scrollView.contentSize     = CGSizeMake(self.scrollView.frame.size.width * 3, self.scrollView.frame.size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*******************************************************
 Scroll View
 ******************************************************/
#pragma mark - UIScrollView Delegate
- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    // Update the page when more than 50% of the previous/next page is visible
    CGFloat pageWidth           = self.scrollView.frame.size.width;
    int page                    = floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.pageCtrl.currentPage   = page;
    NSLog(@"page = %d",page);
}

@end
