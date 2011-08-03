//
//  UITableViewAlert.h
//  ExampleApp
//  
//  Created by Oliver Letterer on 30.01.11.
//  Copyright 2011 Home. All rights reserved.
//  

#import <Foundation/Foundation.h>
#import "GHTableViewAlertViewTableViewBackgroundView.h"
#import "GHTableViewAlertViewTableViewCell.h"

@interface GHTableViewAlertView : UIAlertView <UITableViewDelegate, UITableViewDataSource> {
	UITableView *_tableView;
    UIImageView *_overlayImageView;
}

@property (nonatomic, retain, readonly) UITableView *tableView;

@end
