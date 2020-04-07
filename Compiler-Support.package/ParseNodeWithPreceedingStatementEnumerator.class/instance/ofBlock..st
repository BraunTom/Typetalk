initialize-release
ofBlock: aBlock
	"N.B. This enumerator visits a node before any of the node's children.
	 Hence, when enumewrating statements in a block, we can ensure that
	 the second argument to the block, the preceeding statement, is non-nil
	 only for top-level statements in the block by nilling out preceedingStatement
	 once the block is evaluated. Perhaps stronger would be to capture its value
	 in a temporary and nil it before evaluating, but this is good enough."
	theBlock := [:node|
				aBlock value: node value: preceedingStatement.
				preceedingStatement := nil]