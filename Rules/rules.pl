% find mitigations for given attack

retrieve_mitigations(Attack_name, Mitigations) :- attack(Attack_name), mitigation(Attack_name, M), append([], M, Mitigations).

retrieve_weaknesses(Attack_name,Weakness):-attack(Attack_name),weakness(Attack_name,W,P),append([],W,Weakness).

retrieve_attributes(Attack_name,Attribute):-attack(Attack_name),attributes(Attack_name,A),append([],A,Attribute).

retrieve_attributes_for_attack(C,X):- retrieve_mitigations(C,X);retrieve_weaknesses(C,X);retrieve_attributes(C,X).

retrieve_measure_for_gathered(X1,X2,X3,M):-retrieve_mitigations(X1,M),retrieve_weaknesses(X2,M),retrieve_attributes(X3,M).
