% find mitigations for given attack

retrieve_mitigations(Attack_name, Mitigations) :- attack(Attack_name), mitigation(Attack_name, Propositions), append([], Propositions, Mitigations).