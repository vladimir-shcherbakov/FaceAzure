//
//  JsonCoder.m
//  RuntimeClientTests
//
//  Created by Vladimir Shcherbakov on 10/4/18.
//  Copyright © 2018 Vladimir Shcherbakov. All rights reserved.
//

#import "AZJsonCoder.h"
#import "AZCodable.h"

@interface AZJsonCoder (private)
- (instancetype)init;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
+ (NSDictionary *)convertObjectToDictionary:(id<AZCodable>)codable;
+ (id)serilializeObject:(nullable id)object;
+ (nullable id)deserilializeObject:(nullable id)object forKey:(NSString *)key objectClass:(Class)objectClass;
@end

@implementation AZJsonCoder (private)
- (instancetype)init {
    if (self = [super init]) {
        dd = [NSMutableDictionary new];
    }
    return self;
}
- (instancetype)initWithDictionary:(NSDictionary *)dict {
    if (self = [super init]) {
        dd = [[NSMutableDictionary alloc]initWithDictionary:dict];
    }
    return self;
}
+ (NSDictionary*)convertObjectToDictionary:(id<AZCodable>)codable {
    AZJsonCoder* coder = [AZJsonCoder new];
    [codable encodeWithCoder:coder];
    return coder->dd;
}
+ (id)serilializeObject:(nullable id)object {
    if (object == nil || [object isKindOfClass:[NSNull class]]) {
        return [NSNull new];
    } else if ([object isKindOfClass:[NSArray class]]) {
        NSArray* src = object;
        NSMutableArray* dst = [NSMutableArray new];
        for (id item in src) {
            [dst addObject:[AZJsonCoder serilializeObject: item]];
        }
        return dst;
    } else if ([object isKindOfClass:[NSDictionary class]]) {
        NSMutableDictionary* dst = [NSMutableDictionary new];
        NSDictionary *src = object;
        for (id key in [src allKeys]) {
            [dst setObject:[AZJsonCoder serilializeObject:src[key]]forKey:key];
        }
        return dst;
    } else if ([[object class]conformsToProtocol:@protocol(AZCodable)]) {
        return [AZJsonCoder convertObjectToDictionary:object];
    } else if ([[object class]conformsToProtocol:@protocol(AZBoolean)]) {
        if ([object getBool]) return @YES;
        else return @NO;
    } else if ([object isKindOfClass:[NSUUID class]]) {
        return [object UUIDString];
    } else if ([object isKindOfClass:[NSData class]]) {
        return [object base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    } else if ([object isKindOfClass:[NSNumber class]]
               || [object isKindOfClass:[NSString class]]) {
        return object;
    } else if ([[object class]conformsToProtocol:@protocol(AZDateString)]) {
        return [object toString];
    } else {
        return object;
    }
}
+ (nullable id) deserilializeObject:(nullable id)object
                             forKey:(NSString *)key
                        objectClass:(Class)objectClass {
    if (nil == object || [object isKindOfClass:[NSNull class]]) {
        return object;
    }
    if ([objectClass conformsToProtocol:@protocol(AZCodable)]) {
        
        AZJsonCoder* decoder = [[AZJsonCoder alloc]initWithDictionary:object];
        return [[objectClass alloc]initWithDecoder:decoder];
        
    }
    if ([objectClass conformsToProtocol:@protocol(AZDateString)]) {
        if (![object isKindOfClass:[NSString class]]) {
            @throw [NSException exceptionWithName:@"IncompatiblePointerTypes"
                                           reason:[NSString stringWithFormat:@"For key '%@' incompatible pointer types initializing '%@ *' with an expression of type '%@ *'", key, objectClass, [object class]]
                                         userInfo:nil];
        }
        return [[objectClass alloc] initFromString:object];
    }
    if ([objectClass conformsToProtocol:@protocol(AZStringEnum)]) {
        if (![object isKindOfClass:[NSString class]]) {
            @throw [NSException exceptionWithName:@"IncompatiblePointerTypes"
                                           reason:[NSString stringWithFormat:@"For key '%@' incompatible pointer types initializing '%@ *' with an expression of type '%@ *'", key, objectClass, [object class]]
                                         userInfo:nil];
        }
        return [objectClass fromString:object];
    }
    if ([objectClass conformsToProtocol:@protocol(AZBoolean)]) {
        if (![object isKindOfClass:[NSNumber class]]) {
            @throw [NSException exceptionWithName:@"IncompatiblePointerTypes"
                                           reason:[NSString stringWithFormat:@"For key '%@' incompatible pointer types initializing '%@ *' with an expression of type '%@ *'", key, objectClass, [object class]]
                                         userInfo:nil];
        }
        NSNumber *val = object ;
        return [[objectClass alloc]initWithBool:[val boolValue]];
    }
    if ([objectClass isSubclassOfClass:[NSData class]]) {
        return [[NSData alloc]initWithBase64EncodedString:object options:0];
    }
    if ([objectClass isSubclassOfClass:[NSUUID class]]) {
        id uuid = [[NSUUID alloc]initWithUUIDString:object];
        if (!uuid) {
            @throw [NSException exceptionWithName:@"ObjectInitError"
                                           reason:[NSString stringWithFormat:@"For key '%@' failed to init an instance of type '%@' with the value '%@'", key, objectClass, object]
                                         userInfo:nil];
        }
        return uuid;
    }
    if (![object isKindOfClass:objectClass]) {
        @throw [NSException exceptionWithName:@"IncompatiblePointerTypes"
                                       reason:[NSString stringWithFormat:@"For key '%@' incompatible pointer types initializing '%@ *' with an expression of type '%@ *'", key, objectClass, [object  class]]
                                     userInfo:nil];
    }
    return object;
}
@end

@implementation AZJsonCoder
+ (NSData *)encodeObject:(id)object {
    id so = [AZJsonCoder serilializeObject:object];
    if ([object isKindOfClass:[NSArray class]]
        || [object isKindOfClass:[NSDictionary class]]
        || [object conformsToProtocol:@protocol(AZCodable)]) {
        if (@available(iOS 11.0, *)) {
            NSError *error;
            NSData *jsonData = [NSJSONSerialization dataWithJSONObject:so
                                                               options:NSJSONWritingSortedKeys
                                                                 error:&error];
            if (error) {
                @throw [NSException exceptionWithName:@"JsonEncoding"
                                               reason:error.localizedDescription
                                             userInfo:error.userInfo];
            }
            return jsonData;
        } else {
            @throw [NSException exceptionWithName:@"UnsupportedIOSVersion"
                                           reason:@"NSJSONWritingSortedKeys' is only available on iOS 11.0 or newer"
                                         userInfo:nil];
        }
    }
    return [so dataUsingEncoding:NSUTF8StringEncoding];
}
+ (nullable id)decodeContainer:(NSData *)jsonData
                   elementClass:(Class)elementClass {
    NSError *error;
    id json = [NSJSONSerialization JSONObjectWithData:jsonData
                                              options:NSJSONReadingAllowFragments
                                                error:&error];
    if (error) {
        @throw [NSException exceptionWithName:@"JsonDecoding" reason:error.localizedDescription userInfo:error.userInfo];
    }
    if ([json count] == 0) {
        return json;
    }
    if ([json isKindOfClass:[NSArray class]]) {
        NSArray *src = json;
        NSMutableArray *dst = [NSMutableArray new];
        for (id item in src) {
            [dst addObject: [AZJsonCoder deserilializeObject:item
                                                      forKey:@"BODY"
                                                 objectClass:elementClass]];
        }
        return dst;
    } else if ([json isKindOfClass:[NSDictionary class]]) {
        NSDictionary *src = json;
        NSMutableArray *dst = [NSMutableArray new];
        for (id item in [src allKeys]) {
            [dst addObject: [AZJsonCoder deserilializeObject: src[item]
                                                      forKey:@"BODY"
                                                 objectClass:elementClass]];
        }
        return dst;
    } else {
        @throw [NSException exceptionWithName:@"JsonDecoding"
                                       reason:@"json object is not a container"
                                     userInfo:nil];
    }
    return json;
}
+ (nullable id) decodeData:(NSData *)jsonData
               objectClass:(Class)objectClass {
    if ([objectClass isSubclassOfClass:[NSData class]]) {
        return [NSData dataWithData:jsonData];
    }
    NSError *error;
    id json = [NSJSONSerialization JSONObjectWithData: jsonData
                                              options: NSJSONReadingAllowFragments
                                                error: &error];
    if (error) {
        @throw [NSException exceptionWithName:@"JsonDecoding"
                                       reason:error.localizedDescription
                                     userInfo:nil];
    }
    return [AZJsonCoder deserilializeObject:json
                                   forKey:@"BODY"
                              objectClass:objectClass];
}
// From Coder protocol
- (void)encodeObject:(nullable id)object
              forKey:(NSString *)key {
    dd[key] = [AZJsonCoder serilializeObject:object];
}
static id flatten(NSString *key, id dictionary) {
    id value = dictionary[key];
    if ([key containsString:@"."]) {
        value = dictionary;
        NSArray *arr = [key componentsSeparatedByString: @"."];
        for (int i=0; i<arr.count; i++) {
            value = value[arr[i]];
        }
    }
    return value;
}
// From Coder protocol
- (nullable id) decodeObjectForKey:(NSString *)key
                       objectClass:(Class)objectClass {
    id value = flatten(key, dd);
    return [AZJsonCoder deserilializeObject:value
                                     forKey:key
                                objectClass:objectClass];
}
- (nullable id) decodeDictionaryForKey:(NSString *)key
                          elementClass:(nullable Class)elementClass {
    id value = flatten(key, dd);
    if (nil == value) {
        return nil;
    }
    if (![value isKindOfClass:[NSDictionary class]]) {
        @throw [NSException
                exceptionWithName:@"IncorrectDecodingMethod"
                reason:@"You are trying to decode an element which is not an array with the 'decodeDictionaryForKey:elementClass:' method" userInfo:nil];
    }
    NSDictionary *src = value;
    NSMutableDictionary *dst = [NSMutableDictionary new];
    for (id key in [src allKeys]) {
        [dst setObject:[AZJsonCoder deserilializeObject:src[key]
                                                 forKey:key objectClass:elementClass]
                forKey:key];
    }
    return dst;
}
- (nullable id) decodeArrayForKey:(NSString *)key
                     elementClass:(nullable Class)elementClass {
    id value = flatten(key, dd);
    if (nil == value) {
        return nil;
    }
    if (![value isKindOfClass:[NSArray class]]) {
        @throw [NSException
                exceptionWithName:@"IncorrectDecodingMethod"
                reason:@"You are trying to decode an element which is not an array with the 'decodeArrayForKey:elementClass:' method" userInfo:nil];
    }
    NSArray *src = value;
    NSMutableArray *dst = [NSMutableArray new];
    for (id item in src) {
        [dst addObject: [AZJsonCoder deserilializeObject:item
                                                  forKey:key
                                             objectClass:elementClass]];
    }
    return dst;
}
@end
