#include <stdio.h>
#include "root_node.h"
//#include "node.h"
#include "io.h"
#include <time.h>
#include "nodeops.h"
#include <stdlib.h>
#include "bitops.h"
#include <queue>
#include <queue_node.h>
#define nullptr 0

int Node::B_over_8;
UINT8* Node::dbcode;

int main(int argc, char**argv)
{
	if (argc < 3) {
		printf("Usage:\n\nmih <infile> <outfile> [options]\n\n");
		printf("Options:\n");
		printf(" -N <number>          Set the number of binary codes from the beginning of the dataset file to be used\n");
		printf(" -Q <number>          Set the number of query points to use from <infile>, default all\n");
		printf(" -B <number>          Set the number of bits per code, default autodetect\n");
		printf(" -m <number>          Set the number of chunks to use, default 1\n");
		printf(" -K <number>          Set number of nearest neighbors to be retrieved\n");
		printf(" -R <number>          Set the number of codes (in Millions) to use in computing the optimal bit reordering, default OFF (0)\n");
		printf("\n");
		return 0;
	}

	char *infile = argv[1];
	char *outfile = argv[2];

	UINT32 N = 0;
	UINT32 NQ = 0, Q0 = 0, Q1 = 0;
	int B = 0;
	int m = 1;
	UINT32 K = -1;
	size_t R = 0;

	for (int argnum = 3; argnum < argc; argnum++) {
		if (argv[argnum][0] == '-') {
			switch (argv[argnum][1]) {
			case 'B':
				B = atoi(argv[++argnum]);
				break;
			case 'K':
				K = atoi(argv[++argnum]);
				break;
			case 'N':
				N = atoi(argv[++argnum]);
				break;
			case 'Q':
				Q0 = atoi(argv[++argnum]);
				if (++argnum < argc) {
					if (argv[argnum][0] != '-') {
						Q1 = atof(argv[argnum]);
					} else {
						argnum--;
						Q1 = Q0;
						Q0 = 0;
					}
				}
				NQ = Q1-Q0;
				break;
			case 'm':
				m = atoi(argv[++argnum]);
				break;
			case 'R':
				R = atoi(argv[++argnum])*1000000;
				break;
			default:
				printf("Unrecognized Option or Missing Parameter when parsing: %s\n", argv[argnum]);
				return EXIT_FAILURE;
			}
		} else {
			printf("Invalid Argument: %s\n", argv[argnum]);
			return EXIT_FAILURE;
		}
	}

	if (!NQ) {
		printf("-Q is required.\n");
		return EXIT_FAILURE;
	}

	if (B % 8 != 0) {		// in case of B == 0 this should be fine
		printf("Non-multiple of 8 code lengths are not currently supported.\n");
		return EXIT_FAILURE;
	}

	if (R > N) {
		printf("R was greater than N, R will now be equal to N.\n");
		R = N;
	}

	if (K < 1 || K > N) {
		printf("A valid K is not provided.\n");
		return EXIT_FAILURE;
	}

	int B_over_8 = B/8;

	UINT8 *codes_db;
	int dim1codes;
	UINT8 *codes_query;
	int dim1queries;

	clock_t start0, end0;
	time_t start1, end1;

	printf("Loading codes... ");
	fflush(stdout);

	codes_db = (UINT8*)malloc((size_t)N * (B/8) * sizeof(UINT8));

	load_bin_codes(infile, "B", codes_db, &N, &B_over_8);

	//RootNode root = RootNode(B);

	start1 = time(NULL);
	start0 = clock();
	//	for(UINT32 i=0;i<N;i++)
	//	{
	//		if(i%500000==0)
	//			printf("%d items are load\n",i);
	//		root.insert(codes_db+i*B_over_8,i);
	//	}
	int capacity = 1000;
	Node* curr_node;
	UINT8* ccode;
	int tree_lvl = 0;
	int max_tree_lvl = 0;
	RootNode *root = new RootNode(B,capacity);
	Node::B_over_8 = B_over_8;
	Node::dbcode = codes_db;
	int max_lvl = log2(B);
	int expansions=0;
	//UINT8* subnroms = (UINT8*)malloc((B*2-1)*sizeof(UINT8)); //all possible norms of a binary string with B
	printf("Started creating tree\n");
	for(UINT32 i=0;i<N;i++)
	{
		if(i==37805)
			printf("i = %d\n",i);
		tree_lvl = 0;
		//printf("%d items are load\n",i);
		ccode = codes_db + i*B_over_8;
		root->insert(ccode,curr_node);
		tree_lvl++;

		while(true){
			if(curr_node->isleaf) {

				curr_node->push_to_node(ccode,i);
				if(curr_node->size == capacity && tree_lvl<max_lvl){
					curr_node->expand();
					expansions++;
					if(tree_lvl==6)
						printf("depth not supported\n");
				}
				break;
			}
			else{
				UINT8 subnorms[(int)pow(2,tree_lvl)];
				norm_chunks(subnorms,tree_lvl,ccode,B_over_8);
				curr_node = curr_node->find_the_child(ccode,subnorms);
			//	if(tree_lvl>=5)
								//	printf("i = %d\n",i);
			}
			//	curr_node == root;
			tree_lvl++;
		}
		if(tree_lvl>max_tree_lvl)
			max_tree_lvl = tree_lvl;
		if(i%500000==0)
		{
			printf("%d items are loaded\n",i);
			fflush(stdout);
		}


	}

	end0 = clock();
	end1 = time(NULL);
	double cput = (double)(end0-start0) / (CLOCKS_PER_SEC) ;
	double wt = (double)(end1-start1) ;
	printf("cput = %f, wt = %f\n",cput,wt);
	printf("Done Loading\n");
	delete root;
	printf("max tree level = %d\n",max_tree_lvl);
	printf("expansions = %d\n",expansions);
	printf("Done\n");
	printf("Searching started...\n");
	std::queue<Node *> node_queue;
	node_queue.push(root_node);
	UINT32 hamm_radius = 0;
	
	UINT32 num_found;
	queue_node start_traversed.ptr = root_node;
	star_traversed.next = nullptr;
	
	queue_node* tailptr = &start_traversed;
	queue_node* curr = &start_traversed

	
	for(UINT32 i=0;i<NQ;i++) {
		num_found = 0;
		while(hamm_radius<max_radius && num_found<K) {
			while(curr->next != nullptr) {
				//check the appropriate child and brute force search among leaf nodes
				check_leaves_and_add_to_list(tailptr,query_subnorms,curr,hamm_radius);

			}
			hamm_radius++;
		}
		
	}

}
