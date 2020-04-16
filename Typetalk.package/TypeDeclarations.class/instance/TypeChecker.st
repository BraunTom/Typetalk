typetalk
TypeChecker
	
	^ Dictionary newFrom: { 
		#canResolveTypeOf:  =>  {Boolean}.
		#methodType  =>  {Class}.
		#visitAssignmentNode:  =>  {TypeChecker . AssignmentNode}.
		#visitCascadeNode:  =>  {TypeChecker . CascadeNode}.
		#visitMethodNode:  =>  #(#any) 
	}