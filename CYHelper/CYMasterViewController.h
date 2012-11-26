//
//  CYMasterViewController.h
//  CYHelper
//
//  Created by Lancy on 11/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CYDetailViewController;

@interface CYMasterViewController : UITableViewController

@property (strong, nonatomic) CYDetailViewController *detailViewController;

@end