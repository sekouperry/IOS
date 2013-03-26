// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "Rank.pb.h"

@implementation RankRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [RankRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = [registry retain];
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface GetRankListReq ()
@property int32_t rank;
@property int32_t count;
@end

@implementation GetRankListReq

- (BOOL) hasRank {
  return !!hasRank_;
}
- (void) setHasRank:(BOOL) value {
  hasRank_ = !!value;
}
@synthesize rank;
- (BOOL) hasCount {
  return !!hasCount_;
}
- (void) setHasCount:(BOOL) value {
  hasCount_ = !!value;
}
@synthesize count;
- (void) dealloc {
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.rank = 0;
    self.count = 0;
  }
  return self;
}
static GetRankListReq* defaultGetRankListReqInstance = nil;
+ (void) initialize {
  if (self == [GetRankListReq class]) {
    defaultGetRankListReqInstance = [[GetRankListReq alloc] init];
  }
}
+ (GetRankListReq*) defaultInstance {
  return defaultGetRankListReqInstance;
}
- (GetRankListReq*) defaultInstance {
  return defaultGetRankListReqInstance;
}
- (BOOL) isInitialized {
  if (!self.hasRank) {
    return NO;
  }
  if (!self.hasCount) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasRank) {
    [output writeInt32:1 value:self.rank];
  }
  if (self.hasCount) {
    [output writeInt32:2 value:self.count];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasRank) {
    size += computeInt32Size(1, self.rank);
  }
  if (self.hasCount) {
    size += computeInt32Size(2, self.count);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (GetRankListReq*) parseFromData:(NSData*) data {
  return (GetRankListReq*)[[[GetRankListReq builder] mergeFromData:data] build];
}
+ (GetRankListReq*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetRankListReq*)[[[GetRankListReq builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (GetRankListReq*) parseFromInputStream:(NSInputStream*) input {
  return (GetRankListReq*)[[[GetRankListReq builder] mergeFromInputStream:input] build];
}
+ (GetRankListReq*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetRankListReq*)[[[GetRankListReq builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (GetRankListReq*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (GetRankListReq*)[[[GetRankListReq builder] mergeFromCodedInputStream:input] build];
}
+ (GetRankListReq*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetRankListReq*)[[[GetRankListReq builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (GetRankListReq_Builder*) builder {
  return [[[GetRankListReq_Builder alloc] init] autorelease];
}
+ (GetRankListReq_Builder*) builderWithPrototype:(GetRankListReq*) prototype {
  return [[GetRankListReq builder] mergeFrom:prototype];
}
- (GetRankListReq_Builder*) builder {
  return [GetRankListReq builder];
}
@end

@interface GetRankListReq_Builder()
@property (retain) GetRankListReq* result;
@end

@implementation GetRankListReq_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[GetRankListReq alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (GetRankListReq_Builder*) clear {
  self.result = [[[GetRankListReq alloc] init] autorelease];
  return self;
}
- (GetRankListReq_Builder*) clone {
  return [GetRankListReq builderWithPrototype:result];
}
- (GetRankListReq*) defaultInstance {
  return [GetRankListReq defaultInstance];
}
- (GetRankListReq*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (GetRankListReq*) buildPartial {
  GetRankListReq* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (GetRankListReq_Builder*) mergeFrom:(GetRankListReq*) other {
  if (other == [GetRankListReq defaultInstance]) {
    return self;
  }
  if (other.hasRank) {
    [self setRank:other.rank];
  }
  if (other.hasCount) {
    [self setCount:other.count];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (GetRankListReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (GetRankListReq_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setRank:[input readInt32]];
        break;
      }
      case 16: {
        [self setCount:[input readInt32]];
        break;
      }
    }
  }
}
- (BOOL) hasRank {
  return result.hasRank;
}
- (int32_t) rank {
  return result.rank;
}
- (GetRankListReq_Builder*) setRank:(int32_t) value {
  result.hasRank = YES;
  result.rank = value;
  return self;
}
- (GetRankListReq_Builder*) clearRank {
  result.hasRank = NO;
  result.rank = 0;
  return self;
}
- (BOOL) hasCount {
  return result.hasCount;
}
- (int32_t) count {
  return result.count;
}
- (GetRankListReq_Builder*) setCount:(int32_t) value {
  result.hasCount = YES;
  result.count = value;
  return self;
}
- (GetRankListReq_Builder*) clearCount {
  result.hasCount = NO;
  result.count = 0;
  return self;
}
@end

@interface RankInfo ()
@property int32_t userId;
@property (retain) NSString* userName;
@property int32_t userRank;
@property int32_t coin;
@property int32_t rank;
@end

@implementation RankInfo

- (BOOL) hasUserId {
  return !!hasUserId_;
}
- (void) setHasUserId:(BOOL) value {
  hasUserId_ = !!value;
}
@synthesize userId;
- (BOOL) hasUserName {
  return !!hasUserName_;
}
- (void) setHasUserName:(BOOL) value {
  hasUserName_ = !!value;
}
@synthesize userName;
- (BOOL) hasUserRank {
  return !!hasUserRank_;
}
- (void) setHasUserRank:(BOOL) value {
  hasUserRank_ = !!value;
}
@synthesize userRank;
- (BOOL) hasCoin {
  return !!hasCoin_;
}
- (void) setHasCoin:(BOOL) value {
  hasCoin_ = !!value;
}
@synthesize coin;
- (BOOL) hasRank {
  return !!hasRank_;
}
- (void) setHasRank:(BOOL) value {
  hasRank_ = !!value;
}
@synthesize rank;
- (void) dealloc {
  self.userName = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.userId = 0;
    self.userName = @"";
    self.userRank = 0;
    self.coin = 0;
    self.rank = 0;
  }
  return self;
}
static RankInfo* defaultRankInfoInstance = nil;
+ (void) initialize {
  if (self == [RankInfo class]) {
    defaultRankInfoInstance = [[RankInfo alloc] init];
  }
}
+ (RankInfo*) defaultInstance {
  return defaultRankInfoInstance;
}
- (RankInfo*) defaultInstance {
  return defaultRankInfoInstance;
}
- (BOOL) isInitialized {
  if (!self.hasUserId) {
    return NO;
  }
  if (!self.hasUserName) {
    return NO;
  }
  if (!self.hasUserRank) {
    return NO;
  }
  if (!self.hasCoin) {
    return NO;
  }
  if (!self.hasRank) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasUserId) {
    [output writeInt32:1 value:self.userId];
  }
  if (self.hasUserName) {
    [output writeString:2 value:self.userName];
  }
  if (self.hasUserRank) {
    [output writeInt32:3 value:self.userRank];
  }
  if (self.hasCoin) {
    [output writeInt32:4 value:self.coin];
  }
  if (self.hasRank) {
    [output writeInt32:5 value:self.rank];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasUserId) {
    size += computeInt32Size(1, self.userId);
  }
  if (self.hasUserName) {
    size += computeStringSize(2, self.userName);
  }
  if (self.hasUserRank) {
    size += computeInt32Size(3, self.userRank);
  }
  if (self.hasCoin) {
    size += computeInt32Size(4, self.coin);
  }
  if (self.hasRank) {
    size += computeInt32Size(5, self.rank);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (RankInfo*) parseFromData:(NSData*) data {
  return (RankInfo*)[[[RankInfo builder] mergeFromData:data] build];
}
+ (RankInfo*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (RankInfo*)[[[RankInfo builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (RankInfo*) parseFromInputStream:(NSInputStream*) input {
  return (RankInfo*)[[[RankInfo builder] mergeFromInputStream:input] build];
}
+ (RankInfo*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (RankInfo*)[[[RankInfo builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (RankInfo*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (RankInfo*)[[[RankInfo builder] mergeFromCodedInputStream:input] build];
}
+ (RankInfo*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (RankInfo*)[[[RankInfo builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (RankInfo_Builder*) builder {
  return [[[RankInfo_Builder alloc] init] autorelease];
}
+ (RankInfo_Builder*) builderWithPrototype:(RankInfo*) prototype {
  return [[RankInfo builder] mergeFrom:prototype];
}
- (RankInfo_Builder*) builder {
  return [RankInfo builder];
}
@end

@interface RankInfo_Builder()
@property (retain) RankInfo* result;
@end

@implementation RankInfo_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[RankInfo alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (RankInfo_Builder*) clear {
  self.result = [[[RankInfo alloc] init] autorelease];
  return self;
}
- (RankInfo_Builder*) clone {
  return [RankInfo builderWithPrototype:result];
}
- (RankInfo*) defaultInstance {
  return [RankInfo defaultInstance];
}
- (RankInfo*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (RankInfo*) buildPartial {
  RankInfo* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (RankInfo_Builder*) mergeFrom:(RankInfo*) other {
  if (other == [RankInfo defaultInstance]) {
    return self;
  }
  if (other.hasUserId) {
    [self setUserId:other.userId];
  }
  if (other.hasUserName) {
    [self setUserName:other.userName];
  }
  if (other.hasUserRank) {
    [self setUserRank:other.userRank];
  }
  if (other.hasCoin) {
    [self setCoin:other.coin];
  }
  if (other.hasRank) {
    [self setRank:other.rank];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (RankInfo_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (RankInfo_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setUserId:[input readInt32]];
        break;
      }
      case 18: {
        [self setUserName:[input readString]];
        break;
      }
      case 24: {
        [self setUserRank:[input readInt32]];
        break;
      }
      case 32: {
        [self setCoin:[input readInt32]];
        break;
      }
      case 40: {
        [self setRank:[input readInt32]];
        break;
      }
    }
  }
}
- (BOOL) hasUserId {
  return result.hasUserId;
}
- (int32_t) userId {
  return result.userId;
}
- (RankInfo_Builder*) setUserId:(int32_t) value {
  result.hasUserId = YES;
  result.userId = value;
  return self;
}
- (RankInfo_Builder*) clearUserId {
  result.hasUserId = NO;
  result.userId = 0;
  return self;
}
- (BOOL) hasUserName {
  return result.hasUserName;
}
- (NSString*) userName {
  return result.userName;
}
- (RankInfo_Builder*) setUserName:(NSString*) value {
  result.hasUserName = YES;
  result.userName = value;
  return self;
}
- (RankInfo_Builder*) clearUserName {
  result.hasUserName = NO;
  result.userName = @"";
  return self;
}
- (BOOL) hasUserRank {
  return result.hasUserRank;
}
- (int32_t) userRank {
  return result.userRank;
}
- (RankInfo_Builder*) setUserRank:(int32_t) value {
  result.hasUserRank = YES;
  result.userRank = value;
  return self;
}
- (RankInfo_Builder*) clearUserRank {
  result.hasUserRank = NO;
  result.userRank = 0;
  return self;
}
- (BOOL) hasCoin {
  return result.hasCoin;
}
- (int32_t) coin {
  return result.coin;
}
- (RankInfo_Builder*) setCoin:(int32_t) value {
  result.hasCoin = YES;
  result.coin = value;
  return self;
}
- (RankInfo_Builder*) clearCoin {
  result.hasCoin = NO;
  result.coin = 0;
  return self;
}
- (BOOL) hasRank {
  return result.hasRank;
}
- (int32_t) rank {
  return result.rank;
}
- (RankInfo_Builder*) setRank:(int32_t) value {
  result.hasRank = YES;
  result.rank = value;
  return self;
}
- (RankInfo_Builder*) clearRank {
  result.hasRank = NO;
  result.rank = 0;
  return self;
}
@end

@interface GetRankListRes ()
@property int32_t selfRank;
@property (retain) NSMutableArray* mutableRankInfosList;
@end

@implementation GetRankListRes

- (BOOL) hasSelfRank {
  return !!hasSelfRank_;
}
- (void) setHasSelfRank:(BOOL) value {
  hasSelfRank_ = !!value;
}
@synthesize selfRank;
@synthesize mutableRankInfosList;
- (void) dealloc {
  self.mutableRankInfosList = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.selfRank = 0;
  }
  return self;
}
static GetRankListRes* defaultGetRankListResInstance = nil;
+ (void) initialize {
  if (self == [GetRankListRes class]) {
    defaultGetRankListResInstance = [[GetRankListRes alloc] init];
  }
}
+ (GetRankListRes*) defaultInstance {
  return defaultGetRankListResInstance;
}
- (GetRankListRes*) defaultInstance {
  return defaultGetRankListResInstance;
}
- (NSArray*) rankInfosList {
  return mutableRankInfosList;
}
- (RankInfo*) rankInfosAtIndex:(int32_t) index {
  id value = [mutableRankInfosList objectAtIndex:index];
  return value;
}
- (BOOL) isInitialized {
  if (!self.hasSelfRank) {
    return NO;
  }
  for (RankInfo* element in self.rankInfosList) {
    if (!element.isInitialized) {
      return NO;
    }
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasSelfRank) {
    [output writeInt32:1 value:self.selfRank];
  }
  for (RankInfo* element in self.rankInfosList) {
    [output writeMessage:2 value:element];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasSelfRank) {
    size += computeInt32Size(1, self.selfRank);
  }
  for (RankInfo* element in self.rankInfosList) {
    size += computeMessageSize(2, element);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (GetRankListRes*) parseFromData:(NSData*) data {
  return (GetRankListRes*)[[[GetRankListRes builder] mergeFromData:data] build];
}
+ (GetRankListRes*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetRankListRes*)[[[GetRankListRes builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (GetRankListRes*) parseFromInputStream:(NSInputStream*) input {
  return (GetRankListRes*)[[[GetRankListRes builder] mergeFromInputStream:input] build];
}
+ (GetRankListRes*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetRankListRes*)[[[GetRankListRes builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (GetRankListRes*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (GetRankListRes*)[[[GetRankListRes builder] mergeFromCodedInputStream:input] build];
}
+ (GetRankListRes*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (GetRankListRes*)[[[GetRankListRes builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (GetRankListRes_Builder*) builder {
  return [[[GetRankListRes_Builder alloc] init] autorelease];
}
+ (GetRankListRes_Builder*) builderWithPrototype:(GetRankListRes*) prototype {
  return [[GetRankListRes builder] mergeFrom:prototype];
}
- (GetRankListRes_Builder*) builder {
  return [GetRankListRes builder];
}
@end

@interface GetRankListRes_Builder()
@property (retain) GetRankListRes* result;
@end

@implementation GetRankListRes_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[GetRankListRes alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (GetRankListRes_Builder*) clear {
  self.result = [[[GetRankListRes alloc] init] autorelease];
  return self;
}
- (GetRankListRes_Builder*) clone {
  return [GetRankListRes builderWithPrototype:result];
}
- (GetRankListRes*) defaultInstance {
  return [GetRankListRes defaultInstance];
}
- (GetRankListRes*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (GetRankListRes*) buildPartial {
  GetRankListRes* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (GetRankListRes_Builder*) mergeFrom:(GetRankListRes*) other {
  if (other == [GetRankListRes defaultInstance]) {
    return self;
  }
  if (other.hasSelfRank) {
    [self setSelfRank:other.selfRank];
  }
  if (other.mutableRankInfosList.count > 0) {
    if (result.mutableRankInfosList == nil) {
      result.mutableRankInfosList = [NSMutableArray array];
    }
    [result.mutableRankInfosList addObjectsFromArray:other.mutableRankInfosList];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (GetRankListRes_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (GetRankListRes_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setSelfRank:[input readInt32]];
        break;
      }
      case 18: {
        RankInfo_Builder* subBuilder = [RankInfo builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addRankInfos:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (BOOL) hasSelfRank {
  return result.hasSelfRank;
}
- (int32_t) selfRank {
  return result.selfRank;
}
- (GetRankListRes_Builder*) setSelfRank:(int32_t) value {
  result.hasSelfRank = YES;
  result.selfRank = value;
  return self;
}
- (GetRankListRes_Builder*) clearSelfRank {
  result.hasSelfRank = NO;
  result.selfRank = 0;
  return self;
}
- (NSArray*) rankInfosList {
  if (result.mutableRankInfosList == nil) { return [NSArray array]; }
  return result.mutableRankInfosList;
}
- (RankInfo*) rankInfosAtIndex:(int32_t) index {
  return [result rankInfosAtIndex:index];
}
- (GetRankListRes_Builder*) replaceRankInfosAtIndex:(int32_t) index with:(RankInfo*) value {
  [result.mutableRankInfosList replaceObjectAtIndex:index withObject:value];
  return self;
}
- (GetRankListRes_Builder*) addAllRankInfos:(NSArray*) values {
  if (result.mutableRankInfosList == nil) {
    result.mutableRankInfosList = [NSMutableArray array];
  }
  [result.mutableRankInfosList addObjectsFromArray:values];
  return self;
}
- (GetRankListRes_Builder*) clearRankInfosList {
  result.mutableRankInfosList = nil;
  return self;
}
- (GetRankListRes_Builder*) addRankInfos:(RankInfo*) value {
  if (result.mutableRankInfosList == nil) {
    result.mutableRankInfosList = [NSMutableArray array];
  }
  [result.mutableRankInfosList addObject:value];
  return self;
}
@end
