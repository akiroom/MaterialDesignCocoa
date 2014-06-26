//
//  UIColor+MaterialDesignCocoa.h
//  Pods
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, UIColorMDCPaletteId)
{
  kUIColorMDCPaletteId50 = 0,
  kUIColorMDCPaletteId100,
  kUIColorMDCPaletteId200,
  kUIColorMDCPaletteId300,
  kUIColorMDCPaletteId400,
  kUIColorMDCPaletteId500,
  kUIColorMDCPaletteId600,
  kUIColorMDCPaletteId700,
  kUIColorMDCPaletteId800,
  kUIColorMDCPaletteId900,
  kUIColorMDCPaletteIdA100,
  kUIColorMDCPaletteIdA200,
  kUIColorMDCPaletteIdA300,
  kUIColorMDCPaletteIdA400,
  kUIColorMDCPaletteIdA700,
  kUIColorMDCPaletteNumberOfIds
};

static const NSUInteger kUIColorMDCPaletteIdPrimary = kUIColorMDCPaletteId500;

@interface UIColor (MaterialDesignCocoa)

+ (UIColor *)mdcColorWithRGBHex:(uint)hex;

// Text colors
+ (instancetype)mdcTextColor;
+ (instancetype)mdcSecondaryTextColor;
+ (instancetype)mdcIconsColor;
+ (instancetype)mdcHintTextColor;
+ (instancetype)mdcDividersColor;

// UI Color palette
+ (instancetype)mdcRedColorWithPaletteId:(UIColorMDCPaletteId)paletteId;

@end
