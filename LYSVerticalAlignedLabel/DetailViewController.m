//
//  DetailViewController.m
//  LYSVerticalAlignedLabel
//
//  Created by jk on 2017/3/7.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import "DetailViewController.h"
#import "LYSVerticalAlignedLabel.h"

@interface DetailViewController ()

@property(nonatomic,strong)LYSVerticalAlignedLabel *label;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
    
    [self.view addSubview:self.label];
    self.label.text = @"Do any additional setup after loading the view, typically from a nibDo any additional setup after loading the view, typically from a nib";
    
}

-(LYSVerticalAlignedLabel*)label{
    if (!_label) {
        _label = [[LYSVerticalAlignedLabel alloc]init];
        _label.textColor = [UIColor redColor];
        _label.font = [UIFont systemFontOfSize:14];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.alignDirection = Center;
        _label.numberOfLines = 0;
        _label.layer.borderWidth = 2;
        _label.frame = CGRectMake(10, 120, self.view.frame.size.width - 20, 100);
    }
    return _label;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
