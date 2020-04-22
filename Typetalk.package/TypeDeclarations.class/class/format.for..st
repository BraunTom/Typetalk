as yet unclassified
format: anArray for: aClass

	^ '{1}
	
	^ Dictionary newFrom: \{ 
		{2} 
	\}' 
		format: {
			self methodNameFrom: aClass name. 
			((anArray 
				sorted: [:a :b | a key <= b key]) 
				collect: [:each | self stringFrom: each])
				reduce: [:a :b | a , $. , Character cr, Character tab , Character tab , b]
		}