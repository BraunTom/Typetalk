typetalk
TypeCue
	
	^ Dictionary newFrom: { 
		#getClass  =>  {Class}.
		#method  =>  {String}.
		#method:  =>  {TypeCue . String}.
		#methodType  =>  {Class}.
		#methodType:  =>  {TypeCue . Class}.
		#setClass:  =>  {TypeCue . Class} 
	}