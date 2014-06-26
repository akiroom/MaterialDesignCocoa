//
//  MDCCardTableViewCell.h
//  Pods
//

#import <UIKit/UIKit.h>
#import "MDCTableViewCell.h"
#import "MDCCardView.h"

@interface MDCCardTableViewCell : MDCTableViewCell
@property (readonly, nonatomic) MDCCardView *cardView;
- (void)configureMDCCardTableViewCell;
@end
