/*
	ArrayOfWebworkSOAPClassesUserSet.h
	The interface definition of properties and methods for the ArrayOfWebworkSOAPClassesUserSet object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface ArrayOfWebworkSOAPClassesUserSet : SoapObject
{
	
}
		

	+ (ArrayOfWebworkSOAPClassesUserSet*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
