% find mitigations for given attack

retrieve_mitigations(Attack_name, Mitigations) :- attack(Attack_name), mitigation(Attack_name, M), append([], M, Mitigations).

retrieve_weaknesses(Attack_name,Weakness):-attack(Attack_name),weakness(Attack_name,W,P),append([],W,Weakness).

retrieve_attributes(Attack_name,Attribute):-attack(Attack_name),attributes(Attack_name,A),append([],A,Attribute).
