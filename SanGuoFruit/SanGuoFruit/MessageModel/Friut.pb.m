// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "Friut.pb.h"

@implementation FriutRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [FriutRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = [registry retain];
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface FruitMessageProto ()
@property (retain) NSString* header;
@property int32_t msgId;
@property (retain) NSString* version;
@property (retain) NSData* content;
@property int32_t userId;
@end

@implementation FruitMessageProto

- (BOOL) hasHeader {
  return !!hasHeader_;
}
- (void) setHasHeader:(BOOL) value {
  hasHeader_ = !!value;
}
@synthesize header;
- (BOOL) hasMsgId {
  return !!hasMsgId_;
}
- (void) setHasMsgId:(BOOL) value {
  hasMsgId_ = !!value;
}
@synthesize msgId;
- (BOOL) hasVersion {
  return !!hasVersion_;
}
- (void) setHasVersion:(BOOL) value {
  hasVersion_ = !!value;
}
@synthesize version;
- (BOOL) hasContent {
  return !!hasContent_;
}
- (void) setHasContent:(BOOL) value {
  hasContent_ = !!value;
}
@synthesize content;
- (BOOL) hasUserId {
  return !!hasUserId_;
}
- (void) setHasUserId:(BOOL) value {
  hasUserId_ = !!value;
}
@synthesize userId;
- (void) dealloc {
  self.header = nil;
  self.version = nil;
  self.content = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.header = @"";
    self.msgId = 0;
    self.version = @"";
    self.content = [NSData data];
    self.userId = 0;
  }
  return self;
}
static FruitMessageProto* defaultFruitMessageProtoInstance = nil;
+ (void) initialize {
  if (self == [FruitMessageProto class]) {
    defaultFruitMessageProtoInstance = [[FruitMessageProto alloc] init];
  }
}
+ (FruitMessageProto*) defaultInstance {
  return defaultFruitMessageProtoInstance;
}
- (FruitMessageProto*) defaultInstance {
  return defaultFruitMessageProtoInstance;
}
- (BOOL) isInitialized {
  if (!self.hasHeader) {
    return NO;
  }
  if (!self.hasMsgId) {
    return NO;
  }
  if (!self.hasVersion) {
    return NO;
  }
  if (!self.hasContent) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasHeader) {
    [output writeString:1 value:self.header];
  }
  if (self.hasMsgId) {
    [output writeInt32:2 value:self.msgId];
  }
  if (self.hasVersion) {
    [output writeString:3 value:self.version];
  }
  if (self.hasContent) {
    [output writeData:4 value:self.content];
  }
  if (self.hasUserId) {
    [output writeInt32:5 value:self.userId];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasHeader) {
    size += computeStringSize(1, self.header);
  }
  if (self.hasMsgId) {
    size += computeInt32Size(2, self.msgId);
  }
  if (self.hasVersion) {
    size += computeStringSize(3, self.version);
  }
  if (self.hasContent) {
    size += computeDataSize(4, self.content);
  }
  if (self.hasUserId) {
    size += computeInt32Size(5, self.userId);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (FruitMessageProto*) parseFromData:(NSData*) data {
  return (FruitMessageProto*)[[[FruitMessageProto builder] mergeFromData:data] build];
}
+ (FruitMessageProto*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FruitMessageProto*)[[[FruitMessageProto builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (FruitMessageProto*) parseFromInputStream:(NSInputStream*) input {
  return (FruitMessageProto*)[[[FruitMessageProto builder] mergeFromInputStream:input] build];
}
+ (FruitMessageProto*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FruitMessageProto*)[[[FruitMessageProto builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FruitMessageProto*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (FruitMessageProto*)[[[FruitMessageProto builder] mergeFromCodedInputStream:input] build];
}
+ (FruitMessageProto*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FruitMessageProto*)[[[FruitMessageProto builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FruitMessageProto_Builder*) builder {
  return [[[FruitMessageProto_Builder alloc] init] autorelease];
}
+ (FruitMessageProto_Builder*) builderWithPrototype:(FruitMessageProto*) prototype {
  return [[FruitMessageProto builder] mergeFrom:prototype];
}
- (FruitMessageProto_Builder*) builder {
  return [FruitMessageProto builder];
}
@end

@interface FruitMessageProto_Builder()
@property (retain) FruitMessageProto* result;
@end

@implementation FruitMessageProto_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[FruitMessageProto alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (FruitMessageProto_Builder*) clear {
  self.result = [[[FruitMessageProto alloc] init] autorelease];
  return self;
}
- (FruitMessageProto_Builder*) clone {
  return [FruitMessageProto builderWithPrototype:result];
}
- (FruitMessageProto*) defaultInstance {
  return [FruitMessageProto defaultInstance];
}
- (FruitMessageProto*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (FruitMessageProto*) buildPartial {
  FruitMessageProto* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (FruitMessageProto_Builder*) mergeFrom:(FruitMessageProto*) other {
  if (other == [FruitMessageProto defaultInstance]) {
    return self;
  }
  if (other.hasHeader) {
    [self setHeader:other.header];
  }
  if (other.hasMsgId) {
    [self setMsgId:other.msgId];
  }
  if (other.hasVersion) {
    [self setVersion:other.version];
  }
  if (other.hasContent) {
    [self setContent:other.content];
  }
  if (other.hasUserId) {
    [self setUserId:other.userId];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (FruitMessageProto_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (FruitMessageProto_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
      case 10: {
        [self setHeader:[input readString]];
        break;
      }
      case 16: {
        [self setMsgId:[input readInt32]];
        break;
      }
      case 26: {
        [self setVersion:[input readString]];
        break;
      }
      case 34: {
        [self setContent:[input readData]];
        break;
      }
      case 40: {
        [self setUserId:[input readInt32]];
        break;
      }
    }
  }
}
- (BOOL) hasHeader {
  return result.hasHeader;
}
- (NSString*) header {
  return result.header;
}
- (FruitMessageProto_Builder*) setHeader:(NSString*) value {
  result.hasHeader = YES;
  result.header = value;
  return self;
}
- (FruitMessageProto_Builder*) clearHeader {
  result.hasHeader = NO;
  result.header = @"";
  return self;
}
- (BOOL) hasMsgId {
  return result.hasMsgId;
}
- (int32_t) msgId {
  return result.msgId;
}
- (FruitMessageProto_Builder*) setMsgId:(int32_t) value {
  result.hasMsgId = YES;
  result.msgId = value;
  return self;
}
- (FruitMessageProto_Builder*) clearMsgId {
  result.hasMsgId = NO;
  result.msgId = 0;
  return self;
}
- (BOOL) hasVersion {
  return result.hasVersion;
}
- (NSString*) version {
  return result.version;
}
- (FruitMessageProto_Builder*) setVersion:(NSString*) value {
  result.hasVersion = YES;
  result.version = value;
  return self;
}
- (FruitMessageProto_Builder*) clearVersion {
  result.hasVersion = NO;
  result.version = @"";
  return self;
}
- (BOOL) hasContent {
  return result.hasContent;
}
- (NSData*) content {
  return result.content;
}
- (FruitMessageProto_Builder*) setContent:(NSData*) value {
  result.hasContent = YES;
  result.content = value;
  return self;
}
- (FruitMessageProto_Builder*) clearContent {
  result.hasContent = NO;
  result.content = [NSData data];
  return self;
}
- (BOOL) hasUserId {
  return result.hasUserId;
}
- (int32_t) userId {
  return result.userId;
}
- (FruitMessageProto_Builder*) setUserId:(int32_t) value {
  result.hasUserId = YES;
  result.userId = value;
  return self;
}
- (FruitMessageProto_Builder*) clearUserId {
  result.hasUserId = NO;
  result.userId = 0;
  return self;
}
@end

