/*
	WebworkSOAPClassesUserProblem.h
	The implementation of properties and methods for the WebworkSOAPClassesUserProblem object.
	Generated by SudzC.com
*/
#import "WebworkSOAPClassesUserProblem.h"

@implementation WebworkSOAPClassesUserProblem
	@synthesize user_id = _user_id;
	@synthesize set_id = _set_id;
	@synthesize problem_id = _problem_id;
	@synthesize source_file = _source_file;
	@synthesize value = _value;
	@synthesize max_attempts = _max_attempts;
	@synthesize problem_seed = _problem_seed;
	@synthesize status = _status;
	@synthesize attempted = _attempted;
	@synthesize last_answer = _last_answer;
	@synthesize num_correct = _num_correct;
	@synthesize num_incorrect = _num_incorrect;

	- (id) init
	{
		if(self = [super init])
		{
			self.user_id = nil;
			self.set_id = nil;
			self.problem_id = nil;
			self.source_file = nil;
			self.value = nil;
			self.max_attempts = nil;
			self.problem_seed = nil;
			self.status = nil;
			self.attempted = nil;
			self.last_answer = nil;
			self.num_correct = nil;
			self.num_incorrect = nil;

		}
		return self;
	}

	+ (WebworkSOAPClassesUserProblem*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (WebworkSOAPClassesUserProblem*)[[[WebworkSOAPClassesUserProblem alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.user_id = [Soap getNodeValue: node withName: @"user_id"];
			self.set_id = [Soap getNodeValue: node withName: @"set_id"];
			self.problem_id = [Soap getNodeValue: node withName: @"problem_id"];
			self.source_file = [Soap getNodeValue: node withName: @"source_file"];
			self.value = [Soap getNodeValue: node withName: @"value"];
			self.max_attempts = [Soap getNodeValue: node withName: @"max_attempts"];
			self.problem_seed = [Soap getNodeValue: node withName: @"problem_seed"];
			self.status = [Soap getNodeValue: node withName: @"status"];
			self.attempted = [Soap getNodeValue: node withName: @"attempted"];
			self.last_answer = [Soap getNodeValue: node withName: @"last_answer"];
			self.num_correct = [Soap getNodeValue: node withName: @"num_correct"];
			self.num_incorrect = [Soap getNodeValue: node withName: @"num_incorrect"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"WebworkSOAPClassesUserProblem"];
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
		if (self.set_id != nil) [s appendFormat: @"<set_id>%@</set_id>", [[self.set_id stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.problem_id != nil) [s appendFormat: @"<problem_id>%@</problem_id>", [[self.problem_id stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.source_file != nil) [s appendFormat: @"<source_file>%@</source_file>", [[self.source_file stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.value != nil) [s appendFormat: @"<value>%@</value>", [[self.value stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.max_attempts != nil) [s appendFormat: @"<max_attempts>%@</max_attempts>", [[self.max_attempts stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.problem_seed != nil) [s appendFormat: @"<problem_seed>%@</problem_seed>", [[self.problem_seed stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.status != nil) [s appendFormat: @"<status>%@</status>", [[self.status stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.attempted != nil) [s appendFormat: @"<attempted>%@</attempted>", [[self.attempted stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.last_answer != nil) [s appendFormat: @"<last_answer>%@</last_answer>", [[self.last_answer stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.num_correct != nil) [s appendFormat: @"<num_correct>%@</num_correct>", [[self.num_correct stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.num_incorrect != nil) [s appendFormat: @"<num_incorrect>%@</num_incorrect>", [[self.num_incorrect stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[WebworkSOAPClassesUserProblem class]]) {
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
		if(self.set_id != nil) { [self.set_id release]; }
		if(self.problem_id != nil) { [self.problem_id release]; }
		if(self.source_file != nil) { [self.source_file release]; }
		if(self.value != nil) { [self.value release]; }
		if(self.max_attempts != nil) { [self.max_attempts release]; }
		if(self.problem_seed != nil) { [self.problem_seed release]; }
		if(self.status != nil) { [self.status release]; }
		if(self.attempted != nil) { [self.attempted release]; }
		if(self.last_answer != nil) { [self.last_answer release]; }
		if(self.num_correct != nil) { [self.num_correct release]; }
		if(self.num_incorrect != nil) { [self.num_incorrect release]; }
		[super dealloc];
	}

@end
