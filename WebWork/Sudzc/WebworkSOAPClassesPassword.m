/*
	WebworkSOAPClassesPassword.h
	The implementation of properties and methods for the WebworkSOAPClassesPassword object.
	Generated by SudzC.com
*/
#import "WebworkSOAPClassesPassword.h"

@implementation WebworkSOAPClassesPassword
	@synthesize user_id = _user_id;
	@synthesize password = _password;

	- (id) init
	{
		if(self = [super init])
		{
			self.user_id = nil;
			self.password = nil;

		}
		return self;
	}

	+ (WebworkSOAPClassesPassword*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (WebworkSOAPClassesPassword*)[[[WebworkSOAPClassesPassword alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.user_id = [Soap getNodeValue: node withName: @"user_id"];
			self.password = [Soap getNodeValue: node withName: @"password"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"WebworkSOAPClassesPassword"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];
		if (self.user_id != nil) [s appendFormat: @"<user_id>%@</user_id>", [[self.user_id stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.password != nil) [s appendFormat: @"<password>%@</password>", [[self.password stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[WebworkSOAPClassesPassword class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.user_id != nil) { [self.user_id release]; }
		if(self.password != nil) { [self.password release]; }
		[super dealloc];
	}

@end
