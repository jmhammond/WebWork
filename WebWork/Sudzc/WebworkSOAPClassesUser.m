/*
	WebworkSOAPClassesUser.h
	The implementation of properties and methods for the WebworkSOAPClassesUser object.
	Generated by SudzC.com
*/
#import "WebworkSOAPClassesUser.h"

@implementation WebworkSOAPClassesUser
	@synthesize user_id = _user_id;
	@synthesize first_name = _first_name;
	@synthesize last_name = _last_name;
	@synthesize email_address = _email_address;
	@synthesize student_id = _student_id;
	@synthesize status = _status;
	@synthesize section = _section;
	@synthesize recitation = _recitation;
	@synthesize comment = _comment;

	- (id) init
	{
		if(self = [super init])
		{
			self.user_id = nil;
			self.first_name = nil;
			self.last_name = nil;
			self.email_address = nil;
			self.student_id = nil;
			self.status = nil;
			self.section = nil;
			self.recitation = nil;
			self.comment = nil;

		}
		return self;
	}

	+ (WebworkSOAPClassesUser*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (WebworkSOAPClassesUser*)[[[WebworkSOAPClassesUser alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.user_id = [Soap getNodeValue: node withName: @"user_id"];
			self.first_name = [Soap getNodeValue: node withName: @"first_name"];
			self.last_name = [Soap getNodeValue: node withName: @"last_name"];
			self.email_address = [Soap getNodeValue: node withName: @"email_address"];
			self.student_id = [Soap getNodeValue: node withName: @"student_id"];
			self.status = [Soap getNodeValue: node withName: @"status"];
			self.section = [Soap getNodeValue: node withName: @"section"];
			self.recitation = [Soap getNodeValue: node withName: @"recitation"];
			self.comment = [Soap getNodeValue: node withName: @"comment"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"WebworkSOAPClassesUser"];
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
		if (self.first_name != nil) [s appendFormat: @"<first_name>%@</first_name>", [[self.first_name stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.last_name != nil) [s appendFormat: @"<last_name>%@</last_name>", [[self.last_name stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.email_address != nil) [s appendFormat: @"<email_address>%@</email_address>", [[self.email_address stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.student_id != nil) [s appendFormat: @"<student_id>%@</student_id>", [[self.student_id stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.status != nil) [s appendFormat: @"<status>%@</status>", [[self.status stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.section != nil) [s appendFormat: @"<section>%@</section>", [[self.section stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.recitation != nil) [s appendFormat: @"<recitation>%@</recitation>", [[self.recitation stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.comment != nil) [s appendFormat: @"<comment>%@</comment>", [[self.comment stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[WebworkSOAPClassesUser class]]) {
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
		if(self.first_name != nil) { [self.first_name release]; }
		if(self.last_name != nil) { [self.last_name release]; }
		if(self.email_address != nil) { [self.email_address release]; }
		if(self.student_id != nil) { [self.student_id release]; }
		if(self.status != nil) { [self.status release]; }
		if(self.section != nil) { [self.section release]; }
		if(self.recitation != nil) { [self.recitation release]; }
		if(self.comment != nil) { [self.comment release]; }
		[super dealloc];
	}

@end