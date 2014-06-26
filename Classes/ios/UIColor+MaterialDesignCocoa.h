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
static const NSUInteger kUIColorMDCPaletteNumberOfLowSaturationIds = kUIColorMDCPaletteId900 + 1;
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
+ (instancetype)mdcPinkColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcPurpleColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcDeepPurpleColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcIndigoColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcBlueColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcLightBlueColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcCyanColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcTealColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcGreenColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcLightGreenColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcLimeColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcYellowColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcAmberColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcOrangeColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcDeepOrangeColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcBrownColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcGrayColorWithPaletteId:(UIColorMDCPaletteId)paletteId;
+ (instancetype)mdcBlueGrayColorWithPaletteId:(UIColorMDCPaletteId)paletteId;

@end
