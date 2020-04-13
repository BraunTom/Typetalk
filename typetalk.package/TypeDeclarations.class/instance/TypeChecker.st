typetalk
TypeChecker
	
	^ Dictionary newFrom: { 
		#visitAssignmentNode:  =>  {TypeChecker . AssignmentNode}.
		#visitCascadeNode:  =>  {TypeChecker . CascadeNode} 
	}