Kernel-Classes
Behavior
	
	^ Dictionary newFrom: { 
		#>>  =>  {CompiledMethod . Symbol}.
		#addObsoleteSubclass:  =>  {Behavior . Class} 
	}