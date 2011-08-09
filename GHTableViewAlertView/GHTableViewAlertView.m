//
//  UITableViewAlert.m
//  ExampleApp
//
//  Created by Oliver Letterer on 30.01.11.
//  Copyright 2011 Home. All rights reserved.
//

#import "GHTableViewAlertView.h"
#import <QuartzCore/QuartzCore.h>
#import "GHTableViewAlertViewTableViewBackgroundView.h"
#import "GHTableViewAlertViewTableViewCell.h"


@implementation GHTableViewAlertView
@synthesize tableView=_tableView;

#pragma mark -
#pragma mark instance methods

- (id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... {
    if (self = [super initWithTitle:title message:@"\n\n\n\n\n\n\n" delegate:delegate cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitles, nil]) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(11.0f, 50.0f, 261.0f, 147.0f) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
		_tableView.layer.cornerRadius = 5.0f;
		_tableView.separatorColor = [UIColor colorWithWhite:175.0f/255.0f alpha:0.0f];
		_tableView.backgroundColor = [UIColor whiteColor];
		[self addSubview:_tableView];
        _tableView.backgroundView = [[GHTableViewAlertViewTableViewBackgroundView alloc] initWithFrame:_tableView.bounds];
        
        UIImage *image = [[UIImage imageNamed:@"GHTableViewAlertView.bundle/GHAlertViewOverlayImage.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(7.0f, 5.0f, 6.0f, 5.0f)];
        _overlayImageView = [[UIImageView alloc] initWithImage:image];
        _overlayImageView.frame = _tableView.bounds;
        [_tableView addSubview:_overlayImageView];
    }
    return self;
}

#pragma mark - UITableViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    _overlayImageView.frame = _tableView.bounds;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

@end
