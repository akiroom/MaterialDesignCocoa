//
//  UIFont+MaterialDesignCocoa.m
//  Pods
//

#import "UIFont+MaterialDesignCocoa.h"

@implementation UIFont (MaterialDesignCocoa)

+ (instancetype)mdcDisplay4Font
{
  return [UIFont fontWithName:@"HelveticaNeue-Light" size:112.0];
}

+ (instancetype)mdcDisplay3Font
{
  return [UIFont fontWithName:@"HelveticaNeue" size:56.0];
}

+ (instancetype)mdcDisplay2Font;
{
  return [UIFont fontWithName:@"HelveticaNeue" size:45.0];
}

+ (instancetype)mdcDisplay1Font
{
  return [UIFont fontWithName:@"HelveticaNeue" size:34.0];
}

+ (instancetype)mdcHeadlineFont
{
  return [UIFont fontWithName:@"HelveticaNeue" size:24.0];
}

+ (instancetype)mdcTitleFont
{
  return [UIFont fontWithName:@"HelveticaNeue-Medium" size:20.0];
}

+ (instancetype)mdcSubheadFont
{
  return [UIFont fontWithName:@"HelveticaNeue" size:16.0];
}

+ (instancetype)mdcBody2Font
{
  return [UIFont fontWithName:@"HelveticaNeue-Medium" size:14.0];
}

+ (instancetype)mdcBody1Font
{
  return [UIFont fontWithName:@"HelveticaNeue" size:14.0];
}

+ (instancetype)mdcCaptionFont
{
  return [UIFont fontWithName:@"HelveticaNeue" size:12.0];
}

+ (instancetype)mdcMenuFont
{
  return [UIFont fontWithName:@"HelveticaNeue-Medium" size:14.0];
}

+ (instancetype)mdcButtonFont
{
  return [UIFont fontWithName:@"HelveticaNeue-Medium" size:14.0];
}

@end
