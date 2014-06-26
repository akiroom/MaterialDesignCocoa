//
//  MDCTableViewCell.m
//  Pods
//

#import "MDCTableViewCell.h"
#import "UIColor+MaterialDesignCocoa.h"
#import "UIFont+MaterialDesignCocoa.h"

@implementation MDCTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
  if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    [self configureMDCTableViewCell];
  }
  return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
  if (self = [super initWithCoder:aDecoder]) {
    [self configureMDCTableViewCell];
  }
  return self;
}

- (void)configureMDCTableViewCell
{
  [self.textLabel setFont:[UIFont mdcBody2Font]];
  [self.detailTextLabel setFont:[UIFont mdcBody1Font]];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  [super setSelected:selected animated:animated];
  [self.textLabel setTextColor:[UIColor mdcTextColor]];
  [self.detailTextLabel setTextColor:[UIColor mdcSecondaryTextColor]];
}

@end
