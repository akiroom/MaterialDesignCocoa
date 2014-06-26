//
//  UIColor+MaterialDesignCocoa.m
//  Pods
//

#import "UIColor+MaterialDesignCocoa.h"

@implementation UIColor (MaterialDesignCocoa)

+ (UIColor *)mdcColorWithRGBHex:(uint)hex
{
  int red, green, blue;
  blue = hex & 0xFF;
  green = (hex >> 8) & 0xFF;
  red = (hex >> 16) & 0xFF;
  UIColor *result = [UIColor colorWithRed:red / 255.0f
                                    green:green / 255.0f
                                     blue:blue / 255.0f
                                    alpha:1.0];
  NSLog(@"%@", result);
  return [UIColor colorWithRed:red / 255.0f
                         green:green / 255.0f
                          blue:blue / 255.0f
                         alpha:1.0];
}

#pragma mark - Text colors

+ (instancetype)mdcTextColor
{
  return [UIColor colorWithWhite:0.0 alpha:0.87];
}

+ (instancetype)mdcSecondaryTextColor
{
  return [UIColor colorWithWhite:0.0 alpha:0.54];
}

+ (instancetype)mdcIconsColor
{
  return [UIColor colorWithWhite:0.0 alpha:0.54];
}

+ (instancetype)mdcHintTextColor
{
  return [UIColor colorWithWhite:0.0 alpha:0.26];
}

+ (instancetype)mdcDividersColor
{
  return [UIColor colorWithWhite:0.0 alpha:0.12];
}

#pragma mark - UI Color Palette

+ (instancetype)mdcRedColorWithPaletteId:(UIColorMDCPaletteId)paletteId
{
  UIColorMDCPaletteId targetId = paletteId;
  if (paletteId > kUIColorMDCPaletteNumberOfIds) {
    targetId = kUIColorMDCPaletteIdPrimary;
  }
  uint hex_colors[kUIColorMDCPaletteNumberOfIds] =
  {
    0xfde0dc,
    0xf9bdbb,
    0xf69988,
    0xf36c60,
    0xe84e40,
    0xe51c23,
    0xdd191d,
    0xd01716,
    0xc41411,
    0xb0120a,
    0xff7997,
    0xff5177,
    0xff2d6f,
    0xe00032
  };
  return [UIColor mdcColorWithRGBHex:hex_colors[targetId]];
}

@end
