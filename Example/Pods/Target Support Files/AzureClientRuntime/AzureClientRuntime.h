#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AZCodable.h"
#import "AZCoder.h"
#import "AZDefaultErrorModel.h"
#import "AZJsonCoder.h"
#import "AZOperationError.h"
#import "AZRequestHelper.h"
#import "AZRequestParameters.h"
#import "AzureDate.h"
#import "AzureTypes.h"

FOUNDATION_EXPORT double AzureClientRuntimeVersionNumber;
FOUNDATION_EXPORT const unsigned char AzureClientRuntimeVersionString[];

