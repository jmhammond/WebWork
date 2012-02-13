/*
	WebworkSOAPClassesGlobalProblem.h
	The implementation of properties and methods for the WebworkSOAPClassesGlobalProblem object.
	Generated by SudzC.com
*/
#import "WebworkSOAPClassesGlobalProblem.h"

@implementation WebworkSOAPClassesGlobalProblem
	@synthesize set_id = _set_id;
	@synthesize problem_id = _problem_id;
	@synthesize source_file = _source_file;
	@synthesize value = _value;
	@synthesize max_attempts = _max_attempts;

	- (id) init
	{
		if(self = [super init])
		{
			self.set_id = nil;
			self.problem_id = nil;
			self.source_file = nil;
			self.value = nil;
			self.max_attempts = nil;

		}
		return self;
	}

	+ (WebworkSOAPClassesGlobalProblem*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (WebworkSOAPClassesGlobalProblem*)[[[WebworkSOAPClassesGlobalProblem alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.set_id = [Soap getNodeValue: node withName: @"set_id"];
			self.problem_id = [Soap getNodeValue: node withName: @"problem_id"];
			self.source_file = [Soap getNodeValue: node withName: @"source_file"];
			self.value = [Soap getNodeValue: node withName: @"value"];
			self.max_attempts = [Soap getNodeValue: node withName: @"max_attempts"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"WebworkSOAPClassesGlobalProblem"];
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
		if (self.set_id != nil) [s appendFormat: @"<set_id>%@</set_id>", [[self.set_id stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.problem_id != nil) [s appendFormat: @"<problem_id>%@</problem_id>", [[self.problem_id stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.source_file != nil) [s appendFormat: @"<source_file>%@</source_file>", [[self.source_file stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.value != nil) [s appendFormat: @"<value>%@</value>", [[self.value stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.max_attempts != nil) [s appendFormat: @"<max_attempts>%@</max_attempts>", [[self.max_attempts stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[WebworkSOAPClassesGlobalProblem class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		if(self.set_id != nil) { [self.set_id release]; }
		if(self.problem_id != nil) { [self.problem_id release]; }
		if(self.source_file != nil) { [self.source_file release]; }
		if(self.value != nil) { [self.value release]; }
		if(self.max_attempts != nil) { [self.max_attempts release]; }
		[super dealloc];
	}

@end