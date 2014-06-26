//
//  MDCCardView.m
//  Pods
//

#import "MDCCardView.h"

@implementation MDCCardView

- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    [self configureMDCCardView];
  }
  return self;
}

- (void)awakeFromNib
{
  [self configureMDCCardView];
}

- (void)configureMDCCardView
{
  self.backgroundColor = [UIColor whiteColor];
  CALayer *layer = self.layer;
  [layer setCornerRadius:2.0];
  [layer setShadowColor:[[UIColor colorWithWhite:0.0 alpha:0.35] CGColor]];
  [layer setShadowOffset:(CGSize){0.0, 1.0}];
  [layer setShadowOpacity:1.0];
//  [layer setShadowPath:[UIBezierPath bezierPathWithRect:self.bounds].CGPath];
//  [layer setRasterizationScale:[[UIScreen mainScreen] scale]];
//  [layer setShouldRasterize:YES];
  [layer setShadowRadius:1.5];
}

@end
