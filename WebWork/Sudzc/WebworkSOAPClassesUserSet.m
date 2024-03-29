/*
	WebworkSOAPClassesUserSet.h
	The implementation of properties and methods for the WebworkSOAPClassesUserSet object.
	Generated by SudzC.com
*/
#import "WebworkSOAPClassesUserSet.h"

@implementation WebworkSOAPClassesUserSet
	@synthesize user_id = _user_id;
	@synthesize set_id = _set_id;
	@synthesize psvn = _psvn;
	@synthesize set_header = _set_header;
	@synthesize hardcopy_header = _hardcopy_header;
	@synthesize open_date = _open_date;
	@synthesize due_date = _due_date;
	@synthesize answer_date = _answer_date;
	@synthesize visible = _visible;
	@synthesize enable_reduced_scoring = _enable_reduced_scoring;
	@synthesize assignment_type = _assignment_type;
	@synthesize attempts_per_version = _attempts_per_version;
	@synthesize time_interval = _time_interval;
	@synthesize versions_per_interval = _versions_per_interval;
	@synthesize version_time_limit = _version_time_limit;
	@synthesize version_creation_time = _version_creation_time;
	@synthesize problem_randorder = _problem_randorder;
	@synthesize version_last_attempt_time = _version_last_attempt_time;
	@synthesize problems_per_page = _problems_per_page;

	- (id) init
	{
		if(self = [super init])
		{
			self.user_id = nil;
			self.set_id = nil;
			self.psvn = nil;
			self.set_header = nil;
			self.hardcopy_header = nil;
			self.open_date = nil;
			self.due_date = nil;
			self.answer_date = nil;
			self.visible = nil;
			self.enable_reduced_scoring = nil;
			self.assignment_type = nil;
			self.attempts_per_version = nil;
			self.time_interval = nil;
			self.versions_per_interval = nil;
			self.version_time_limit = nil;
			self.version_creation_time = nil;
			self.problem_randorder = nil;
			self.version_last_attempt_time = nil;
			self.problems_per_page = nil;

		}
		return self;
	}

	+ (WebworkSOAPClassesUserSet*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (WebworkSOAPClassesUserSet*)[[[WebworkSOAPClassesUserSet alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.user_id = [Soap getNodeValue: node withName: @"user_id"];
			self.set_id = [Soap getNodeValue: node withName: @"set_id"];
			self.psvn = [Soap getNodeValue: node withName: @"psvn"];
			self.set_header = [Soap getNodeValue: node withName: @"set_header"];
			self.hardcopy_header = [Soap getNodeValue: node withName: @"hardcopy_header"];
			self.open_date = [Soap getNodeValue: node withName: @"open_date"];
			self.due_date = [Soap getNodeValue: node withName: @"due_date"];
			self.answer_date = [Soap getNodeValue: node withName: @"answer_date"];
			self.visible = [Soap getNodeValue: node withName: @"visible"];
			self.enable_reduced_scoring = [Soap getNodeValue: node withName: @"enable_reduced_scoring"];
			self.assignment_type = [Soap getNodeValue: node withName: @"assignment_type"];
			self.attempts_per_version = [Soap getNodeValue: node withName: @"attempts_per_version"];
			self.time_interval = [Soap getNodeValue: node withName: @"time_interval"];
			self.versions_per_interval = [Soap getNodeValue: node withName: @"versions_per_interval"];
			self.version_time_limit = [Soap getNodeValue: node withName: @"version_time_limit"];
			self.version_creation_time = [Soap getNodeValue: node withName: @"version_creation_time"];
			self.problem_randorder = [Soap getNodeValue: node withName: @"problem_randorder"];
			self.version_last_attempt_time = [Soap getNodeValue: node withName: @"version_last_attempt_time"];
			self.problems_per_page = [Soap getNodeValue: node withName: @"problems_per_page"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"WebworkSOAPClassesUserSet"];
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
		if (self.psvn != nil) [s appendFormat: @"<psvn>%@</psvn>", [[self.psvn stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.set_header != nil) [s appendFormat: @"<set_header>%@</set_header>", [[self.set_header stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.hardcopy_header != nil) [s appendFormat: @"<hardcopy_header>%@</hardcopy_header>", [[self.hardcopy_header stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.open_date != nil) [s appendFormat: @"<open_date>%@</open_date>", [[self.open_date stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.due_date != nil) [s appendFormat: @"<due_date>%@</due_date>", [[self.due_date stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.answer_date != nil) [s appendFormat: @"<answer_date>%@</answer_date>", [[self.answer_date stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.visible != nil) [s appendFormat: @"<visible>%@</visible>", [[self.visible stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.enable_reduced_scoring != nil) [s appendFormat: @"<enable_reduced_scoring>%@</enable_reduced_scoring>", [[self.enable_reduced_scoring stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.assignment_type != nil) [s appendFormat: @"<assignment_type>%@</assignment_type>", [[self.assignment_type stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.attempts_per_version != nil) [s appendFormat: @"<attempts_per_version>%@</attempts_per_version>", [[self.attempts_per_version stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.time_interval != nil) [s appendFormat: @"<time_interval>%@</time_interval>", [[self.time_interval stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.versions_per_interval != nil) [s appendFormat: @"<versions_per_interval>%@</versions_per_interval>", [[self.versions_per_interval stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.version_time_limit != nil) [s appendFormat: @"<version_time_limit>%@</version_time_limit>", [[self.version_time_limit stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.version_creation_time != nil) [s appendFormat: @"<version_creation_time>%@</version_creation_time>", [[self.version_creation_time stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.problem_randorder != nil) [s appendFormat: @"<problem_randorder>%@</problem_randorder>", [[self.problem_randorder stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.version_last_attempt_time != nil) [s appendFormat: @"<version_last_attempt_time>%@</version_last_attempt_time>", [[self.version_last_attempt_time stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.problems_per_page != nil) [s appendFormat: @"<problems_per_page>%@</problems_per_page>", [[self.problems_per_page stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[WebworkSOAPClassesUserSet class]]) {
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
		if(self.psvn != nil) { [self.psvn release]; }
		if(self.set_header != nil) { [self.set_header release]; }
		if(self.hardcopy_header != nil) { [self.hardcopy_header release]; }
		if(self.open_date != nil) { [self.open_date release]; }
		if(self.due_date != nil) { [self.due_date release]; }
		if(self.answer_date != nil) { [self.answer_date release]; }
		if(self.visible != nil) { [self.visible release]; }
		if(self.enable_reduced_scoring != nil) { [self.enable_reduced_scoring release]; }
		if(self.assignment_type != nil) { [self.assignment_type release]; }
		if(self.attempts_per_version != nil) { [self.attempts_per_version release]; }
		if(self.time_interval != nil) { [self.time_interval release]; }
		if(self.versions_per_interval != nil) { [self.versions_per_interval release]; }
		if(self.version_time_limit != nil) { [self.version_time_limit release]; }
		if(self.version_creation_time != nil) { [self.version_creation_time release]; }
		if(self.problem_randorder != nil) { [self.problem_randorder release]; }
		if(self.version_last_attempt_time != nil) { [self.version_last_attempt_time release]; }
		if(self.problems_per_page != nil) { [self.problems_per_page release]; }
		[super dealloc];
	}

@end
