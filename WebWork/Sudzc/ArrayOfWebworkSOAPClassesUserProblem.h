/*
	ArrayOfWebworkSOAPClassesUserProblem.h
	The interface definition of properties and methods for the ArrayOfWebworkSOAPClassesUserProblem object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface ArrayOfWebworkSOAPClassesUserProblem : SoapObject
{
	
}
		

	+ (ArrayOfWebworkSOAPClassesUserProblem*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
