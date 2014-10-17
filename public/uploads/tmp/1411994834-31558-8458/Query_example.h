#include <iostream>
#include <vector>

#ifndef _QUERY_EXAMPLE_H
#define _QUERY_EXAMPLE_H

using namespace std;
using namespace mongo;

class Reaction 

{

    public:

        Reaction();

 
        void setID(string reactionID){ id = reactionID;}

        void setLeftMetabolite(string lMetabolite) { left = lMetabolite; }

        void setRightMetabolite(string rMetabolite) { right = rMetabolite; }
        
		void setconversionDirection(string conversionDirection) { direction = conversionDirection; }
		
        void printReactionInfo();

         

    private:

        string id;
		string left;
		string right;
		string direction;

};


#endif;