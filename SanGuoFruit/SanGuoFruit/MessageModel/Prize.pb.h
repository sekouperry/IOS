// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "ProtocolBuffers.h"

@class GetPrizeListReq;
@class GetPrizeListReq_Builder;
@class GetPrizeListRes;
@class GetPrizeListRes_Builder;
@class GetPrizeMethodReq;
@class GetPrizeMethodReq_Builder;
@class GetPrizeMethodRes;
@class GetPrizeMethodRes_Builder;
@class GetPrizeReq;
@class GetPrizeReq_Builder;
@class GetPrizeRes;
@class GetPrizeRes_Builder;
@class PrizeInfo;
@class PrizeInfo_Builder;
@class PrizeTypeUnit;
@class PrizeTypeUnit_Builder;

@interface PrizeRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

@interface GetPrizeListReq : PBGeneratedMessage {
@private
  BOOL hasPrizeId_:1;
  BOOL hasCount_:1;
  int64_t prizeId;
  int32_t count;
}
- (BOOL) hasPrizeId;
- (BOOL) hasCount;
@property (readonly) int64_t prizeId;
@property (readonly) int32_t count;

+ (GetPrizeListReq*) defaultInstance;
- (GetPrizeListReq*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (GetPrizeListReq_Builder*) builder;
+ (GetPrizeListReq_Builder*) builder;
+ (GetPrizeListReq_Builder*) builderWithPrototype:(GetPrizeListReq*) prototype;

+ (GetPrizeListReq*) parseFromData:(NSData*) data;
+ (GetPrizeListReq*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (GetPrizeListReq*) parseFromInputStream:(NSInputStream*) input;
+ (GetPrizeListReq*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (GetPrizeListReq*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (GetPrizeListReq*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface GetPrizeListReq_Builder : PBGeneratedMessage_Builder {
@private
  GetPrizeListReq* result;
}

- (GetPrizeListReq*) defaultInstance;

- (GetPrizeListReq_Builder*) clear;
- (GetPrizeListReq_Builder*) clone;

- (GetPrizeListReq*) build;
- (GetPrizeListReq*) buildPartial;

- (GetPrizeListReq_Builder*) mergeFrom:(GetPrizeListReq*) other;
- (GetPrizeListReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (GetPrizeListReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasPrizeId;
- (int64_t) prizeId;
- (GetPrizeListReq_Builder*) setPrizeId:(int64_t) value;
- (GetPrizeListReq_Builder*) clearPrizeId;

- (BOOL) hasCount;
- (int32_t) count;
- (GetPrizeListReq_Builder*) setCount:(int32_t) value;
- (GetPrizeListReq_Builder*) clearCount;
@end

@interface PrizeInfo : PBGeneratedMessage {
@private
  BOOL hasPrizeId_:1;
  BOOL hasCreateTime_:1;
  BOOL hasPrizeStatus_:1;
  BOOL hasPrizeName_:1;
  BOOL hasPrizeDesc_:1;
  int64_t prizeId;
  int64_t createTime;
  int32_t prizeStatus;
  NSString* prizeName;
  NSString* prizeDesc;
}
- (BOOL) hasPrizeId;
- (BOOL) hasPrizeName;
- (BOOL) hasPrizeDesc;
- (BOOL) hasCreateTime;
- (BOOL) hasPrizeStatus;
@property (readonly) int64_t prizeId;
@property (readonly, retain) NSString* prizeName;
@property (readonly, retain) NSString* prizeDesc;
@property (readonly) int64_t createTime;
@property (readonly) int32_t prizeStatus;

+ (PrizeInfo*) defaultInstance;
- (PrizeInfo*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (PrizeInfo_Builder*) builder;
+ (PrizeInfo_Builder*) builder;
+ (PrizeInfo_Builder*) builderWithPrototype:(PrizeInfo*) prototype;

+ (PrizeInfo*) parseFromData:(NSData*) data;
+ (PrizeInfo*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PrizeInfo*) parseFromInputStream:(NSInputStream*) input;
+ (PrizeInfo*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PrizeInfo*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (PrizeInfo*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface PrizeInfo_Builder : PBGeneratedMessage_Builder {
@private
  PrizeInfo* result;
}

- (PrizeInfo*) defaultInstance;

- (PrizeInfo_Builder*) clear;
- (PrizeInfo_Builder*) clone;

- (PrizeInfo*) build;
- (PrizeInfo*) buildPartial;

- (PrizeInfo_Builder*) mergeFrom:(PrizeInfo*) other;
- (PrizeInfo_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (PrizeInfo_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasPrizeId;
- (int64_t) prizeId;
- (PrizeInfo_Builder*) setPrizeId:(int64_t) value;
- (PrizeInfo_Builder*) clearPrizeId;

- (BOOL) hasPrizeName;
- (NSString*) prizeName;
- (PrizeInfo_Builder*) setPrizeName:(NSString*) value;
- (PrizeInfo_Builder*) clearPrizeName;

- (BOOL) hasPrizeDesc;
- (NSString*) prizeDesc;
- (PrizeInfo_Builder*) setPrizeDesc:(NSString*) value;
- (PrizeInfo_Builder*) clearPrizeDesc;

- (BOOL) hasCreateTime;
- (int64_t) createTime;
- (PrizeInfo_Builder*) setCreateTime:(int64_t) value;
- (PrizeInfo_Builder*) clearCreateTime;

- (BOOL) hasPrizeStatus;
- (int32_t) prizeStatus;
- (PrizeInfo_Builder*) setPrizeStatus:(int32_t) value;
- (PrizeInfo_Builder*) clearPrizeStatus;
@end

@interface GetPrizeListRes : PBGeneratedMessage {
@private
  NSMutableArray* mutablePrizeInfosList;
}
- (NSArray*) prizeInfosList;
- (PrizeInfo*) prizeInfosAtIndex:(int32_t) index;

+ (GetPrizeListRes*) defaultInstance;
- (GetPrizeListRes*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (GetPrizeListRes_Builder*) builder;
+ (GetPrizeListRes_Builder*) builder;
+ (GetPrizeListRes_Builder*) builderWithPrototype:(GetPrizeListRes*) prototype;

+ (GetPrizeListRes*) parseFromData:(NSData*) data;
+ (GetPrizeListRes*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (GetPrizeListRes*) parseFromInputStream:(NSInputStream*) input;
+ (GetPrizeListRes*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (GetPrizeListRes*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (GetPrizeListRes*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface GetPrizeListRes_Builder : PBGeneratedMessage_Builder {
@private
  GetPrizeListRes* result;
}

- (GetPrizeListRes*) defaultInstance;

- (GetPrizeListRes_Builder*) clear;
- (GetPrizeListRes_Builder*) clone;

- (GetPrizeListRes*) build;
- (GetPrizeListRes*) buildPartial;

- (GetPrizeListRes_Builder*) mergeFrom:(GetPrizeListRes*) other;
- (GetPrizeListRes_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (GetPrizeListRes_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (NSArray*) prizeInfosList;
- (PrizeInfo*) prizeInfosAtIndex:(int32_t) index;
- (GetPrizeListRes_Builder*) replacePrizeInfosAtIndex:(int32_t) index with:(PrizeInfo*) value;
- (GetPrizeListRes_Builder*) addPrizeInfos:(PrizeInfo*) value;
- (GetPrizeListRes_Builder*) addAllPrizeInfos:(NSArray*) values;
- (GetPrizeListRes_Builder*) clearPrizeInfosList;
@end

@interface GetPrizeMethodReq : PBGeneratedMessage {
@private
  BOOL hasPrizeId_:1;
  int64_t prizeId;
}
- (BOOL) hasPrizeId;
@property (readonly) int64_t prizeId;

+ (GetPrizeMethodReq*) defaultInstance;
- (GetPrizeMethodReq*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (GetPrizeMethodReq_Builder*) builder;
+ (GetPrizeMethodReq_Builder*) builder;
+ (GetPrizeMethodReq_Builder*) builderWithPrototype:(GetPrizeMethodReq*) prototype;

+ (GetPrizeMethodReq*) parseFromData:(NSData*) data;
+ (GetPrizeMethodReq*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (GetPrizeMethodReq*) parseFromInputStream:(NSInputStream*) input;
+ (GetPrizeMethodReq*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (GetPrizeMethodReq*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (GetPrizeMethodReq*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface GetPrizeMethodReq_Builder : PBGeneratedMessage_Builder {
@private
  GetPrizeMethodReq* result;
}

- (GetPrizeMethodReq*) defaultInstance;

- (GetPrizeMethodReq_Builder*) clear;
- (GetPrizeMethodReq_Builder*) clone;

- (GetPrizeMethodReq*) build;
- (GetPrizeMethodReq*) buildPartial;

- (GetPrizeMethodReq_Builder*) mergeFrom:(GetPrizeMethodReq*) other;
- (GetPrizeMethodReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (GetPrizeMethodReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasPrizeId;
- (int64_t) prizeId;
- (GetPrizeMethodReq_Builder*) setPrizeId:(int64_t) value;
- (GetPrizeMethodReq_Builder*) clearPrizeId;
@end

@interface PrizeTypeUnit : PBGeneratedMessage {
@private
  BOOL hasType_:1;
  BOOL hasPrizeName_:1;
  int32_t type;
  int32_t prizeName;
}
- (BOOL) hasType;
- (BOOL) hasPrizeName;
@property (readonly) int32_t type;
@property (readonly) int32_t prizeName;

+ (PrizeTypeUnit*) defaultInstance;
- (PrizeTypeUnit*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (PrizeTypeUnit_Builder*) builder;
+ (PrizeTypeUnit_Builder*) builder;
+ (PrizeTypeUnit_Builder*) builderWithPrototype:(PrizeTypeUnit*) prototype;

+ (PrizeTypeUnit*) parseFromData:(NSData*) data;
+ (PrizeTypeUnit*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PrizeTypeUnit*) parseFromInputStream:(NSInputStream*) input;
+ (PrizeTypeUnit*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PrizeTypeUnit*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (PrizeTypeUnit*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface PrizeTypeUnit_Builder : PBGeneratedMessage_Builder {
@private
  PrizeTypeUnit* result;
}

- (PrizeTypeUnit*) defaultInstance;

- (PrizeTypeUnit_Builder*) clear;
- (PrizeTypeUnit_Builder*) clone;

- (PrizeTypeUnit*) build;
- (PrizeTypeUnit*) buildPartial;

- (PrizeTypeUnit_Builder*) mergeFrom:(PrizeTypeUnit*) other;
- (PrizeTypeUnit_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (PrizeTypeUnit_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasType;
- (int32_t) type;
- (PrizeTypeUnit_Builder*) setType:(int32_t) value;
- (PrizeTypeUnit_Builder*) clearType;

- (BOOL) hasPrizeName;
- (int32_t) prizeName;
- (PrizeTypeUnit_Builder*) setPrizeName:(int32_t) value;
- (PrizeTypeUnit_Builder*) clearPrizeName;
@end

@interface GetPrizeMethodRes : PBGeneratedMessage {
@private
  NSMutableArray* mutablePrizeTypeUnitsList;
}
- (NSArray*) prizeTypeUnitsList;
- (PrizeTypeUnit*) prizeTypeUnitsAtIndex:(int32_t) index;

+ (GetPrizeMethodRes*) defaultInstance;
- (GetPrizeMethodRes*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (GetPrizeMethodRes_Builder*) builder;
+ (GetPrizeMethodRes_Builder*) builder;
+ (GetPrizeMethodRes_Builder*) builderWithPrototype:(GetPrizeMethodRes*) prototype;

+ (GetPrizeMethodRes*) parseFromData:(NSData*) data;
+ (GetPrizeMethodRes*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (GetPrizeMethodRes*) parseFromInputStream:(NSInputStream*) input;
+ (GetPrizeMethodRes*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (GetPrizeMethodRes*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (GetPrizeMethodRes*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface GetPrizeMethodRes_Builder : PBGeneratedMessage_Builder {
@private
  GetPrizeMethodRes* result;
}

- (GetPrizeMethodRes*) defaultInstance;

- (GetPrizeMethodRes_Builder*) clear;
- (GetPrizeMethodRes_Builder*) clone;

- (GetPrizeMethodRes*) build;
- (GetPrizeMethodRes*) buildPartial;

- (GetPrizeMethodRes_Builder*) mergeFrom:(GetPrizeMethodRes*) other;
- (GetPrizeMethodRes_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (GetPrizeMethodRes_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (NSArray*) prizeTypeUnitsList;
- (PrizeTypeUnit*) prizeTypeUnitsAtIndex:(int32_t) index;
- (GetPrizeMethodRes_Builder*) replacePrizeTypeUnitsAtIndex:(int32_t) index with:(PrizeTypeUnit*) value;
- (GetPrizeMethodRes_Builder*) addPrizeTypeUnits:(PrizeTypeUnit*) value;
- (GetPrizeMethodRes_Builder*) addAllPrizeTypeUnits:(NSArray*) values;
- (GetPrizeMethodRes_Builder*) clearPrizeTypeUnitsList;
@end

@interface GetPrizeReq : PBGeneratedMessage {
@private
  BOOL hasPrizeId_:1;
  BOOL hasType_:1;
  int64_t prizeId;
  int32_t type;
}
- (BOOL) hasPrizeId;
- (BOOL) hasType;
@property (readonly) int64_t prizeId;
@property (readonly) int32_t type;

+ (GetPrizeReq*) defaultInstance;
- (GetPrizeReq*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (GetPrizeReq_Builder*) builder;
+ (GetPrizeReq_Builder*) builder;
+ (GetPrizeReq_Builder*) builderWithPrototype:(GetPrizeReq*) prototype;

+ (GetPrizeReq*) parseFromData:(NSData*) data;
+ (GetPrizeReq*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (GetPrizeReq*) parseFromInputStream:(NSInputStream*) input;
+ (GetPrizeReq*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (GetPrizeReq*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (GetPrizeReq*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface GetPrizeReq_Builder : PBGeneratedMessage_Builder {
@private
  GetPrizeReq* result;
}

- (GetPrizeReq*) defaultInstance;

- (GetPrizeReq_Builder*) clear;
- (GetPrizeReq_Builder*) clone;

- (GetPrizeReq*) build;
- (GetPrizeReq*) buildPartial;

- (GetPrizeReq_Builder*) mergeFrom:(GetPrizeReq*) other;
- (GetPrizeReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (GetPrizeReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasPrizeId;
- (int64_t) prizeId;
- (GetPrizeReq_Builder*) setPrizeId:(int64_t) value;
- (GetPrizeReq_Builder*) clearPrizeId;

- (BOOL) hasType;
- (int32_t) type;
- (GetPrizeReq_Builder*) setType:(int32_t) value;
- (GetPrizeReq_Builder*) clearType;
@end

@interface GetPrizeRes : PBGeneratedMessage {
@private
  BOOL hasStatus_:1;
  BOOL hasMsg_:1;
  int32_t status;
  NSString* msg;
}
- (BOOL) hasStatus;
- (BOOL) hasMsg;
@property (readonly) int32_t status;
@property (readonly, retain) NSString* msg;

+ (GetPrizeRes*) defaultInstance;
- (GetPrizeRes*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (GetPrizeRes_Builder*) builder;
+ (GetPrizeRes_Builder*) builder;
+ (GetPrizeRes_Builder*) builderWithPrototype:(GetPrizeRes*) prototype;

+ (GetPrizeRes*) parseFromData:(NSData*) data;
+ (GetPrizeRes*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (GetPrizeRes*) parseFromInputStream:(NSInputStream*) input;
+ (GetPrizeRes*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (GetPrizeRes*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (GetPrizeRes*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface GetPrizeRes_Builder : PBGeneratedMessage_Builder {
@private
  GetPrizeRes* result;
}

- (GetPrizeRes*) defaultInstance;

- (GetPrizeRes_Builder*) clear;
- (GetPrizeRes_Builder*) clone;

- (GetPrizeRes*) build;
- (GetPrizeRes*) buildPartial;

- (GetPrizeRes_Builder*) mergeFrom:(GetPrizeRes*) other;
- (GetPrizeRes_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (GetPrizeRes_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasStatus;
- (int32_t) status;
- (GetPrizeRes_Builder*) setStatus:(int32_t) value;
- (GetPrizeRes_Builder*) clearStatus;

- (BOOL) hasMsg;
- (NSString*) msg;
- (GetPrizeRes_Builder*) setMsg:(NSString*) value;
- (GetPrizeRes_Builder*) clearMsg;
@end
