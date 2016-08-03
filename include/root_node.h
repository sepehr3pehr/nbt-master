/*
 * root_node.h
 *
 *  Created on: 2016-03-09
 *      Author: s2eghbal
 */

#ifndef ROOT_NODE_H_
#define ROOT_NODE_H_

#include "node.h"

class RootNode {
private:
	Node** children;
	int capacity;
	int B;
	int B_over_8;

public:

	RootNode(int B, int _capacity);

	~RootNode();

	bool insert(UINT8* code, Node* &curr_node);

	void query(UINT8* q                                                                                                                                                                );

};




#endif /* ROOT_NODE_H_ */
