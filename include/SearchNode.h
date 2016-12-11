#include "types.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>



class SearchNode {
private:
	UINT32 B_over_8;
	UINT32 num_found = 0;
	UINT8* query;
	UINT8* code;
	int B;
	int hamm_radius = 0;
	UINT8 numres;
	UINT32* query_normchunks;
	UINT32* num_res;
	int max_lvl;
	int K;
	
public:
	void HNN_search();
	SearchNode(UINT8*,UINT8*,UINT32, int, int);
	void search_with_radius(Node*, int);
	int lower_bound_distance(Node*, int);
	

};

SearchNode::SearchNode(UINT8* _code,UINT8* _query,UINT32 _B_over_8, int _max_lvl, int _K) {
	max_lvl = _max_lvl;
	B_over_8 = _B_over_8;
	query = _query;
	code = _code;
	K = _K;
	
	
	int B = B_over_8 * 8;
	num_res = (UINT32*) malloc((B+1) * sizeof(UINT32));
	memset(num_res, 0, (B+1)*sizeof(*num_res));
	num_found = 0;

	query_normchunks = (UINT32*) malloc(pow(2,max_lvl+1) * sizeof(UINT32));
	UINT8* c_query_normchunks = query_normchunks;	 
	for(int i=0;i<max_lvl;i++) {
		norm_chunks(c_query_normchunks,i,query,B_over_8);
		c_query_normchunks += pow(2,i);
	}
}

void SearchNode::HNN_search() {
	int depth = 0;
	while(true) {
		search_with_radius(node, depth);
		if(num_found + num_res[hamm_radius+1] >= K)
			return;
		hamm_radius++;
	}
	
	
}

int SearchNode::lower_bound_distance(Node* node, int depth) {
	int s_index = pow(2,depth);
	int e_index = pow(2,depth+1);
	UINT8* c_norm_chunk = query_normchunks + s_index;
	int range = e_index - s_index;
	int sum_diff = 0;
	for(int i=0;i<range;i++)
		sum_diff += abs(node->subnorm[i] - c_cnorm_chunk[i]);
	return sum_diff;
}

void SearchNode::search_with_radius(Node* node, int depth) {
	int hammd;
	if(node->isleaf) {
		if(lower_bound_distance(node,depth) == hamm_radius)
			LL_node* curr = node->head_list_codes;
			while(curr!=nullptr) {
				hammd = match(query,code+ (UINT64)curr->indexindex*(B_over_8));
				if(hammd<=D && res[hammd] < K)
					num_res[hammd]++;
				if(hamm == hamm_radius) {				
					num_found++;
					if(num_found == K)
						break;
				}
			}
		num_
		return;
	}
	update_numfound()
	if(numfound >= K) {
		cout << "Found the nodes";
		return;
	 }

	for ( auto it = node->children.begin(); it != node->children.end(); ++it ) {
		if(lower_bound_distance(it->second, depth+1) <= hamm_radius)
			search_with_radius(it->second, depth+1)
		if(numfound >= K)
			break;
	}
}

void linear_search_candidate(node)
