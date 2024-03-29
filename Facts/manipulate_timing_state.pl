% weakness(attack, weakness, percentage).
% attributes(attack_name, [id, likelihood of attack, typical severity]).

%Forced Deadlock
attack(forced_deadlock).
mitigation(forced_deadlock,['use_known_algorithm_to_avoid_deadlock_condition', 'use_well_known_libraries_which_implement_synchronization']).
attributes(forced_deadlock, [25, 'low', 'high']).
weakness(forced_deadlock,unrestricted_externally_accessible_lock,1).
weakness(forced_deadlock,unsynchronized_access_to_shared_data_in_a_multithreaded_context,1).
weakness(forced_deadlock,improper_locking,1). 
weakness(forced_deadlock,deadlock,1).
weakness(forced_deadlock,use_of_blocking_code_in_single_threaded,_non_blocking_context,1).

%Leveraging Race Conditions via Symbolic Links
attack(leveraging_race_condition_via_symbolic_links).
mitigation(leveraging_race_conditions_via_symbolic_links,['use_safe_libraries', 'ensure_good_compartmentalization_in_the_system']).
attributes(leveraging_race_condition_via_symbolic_links, [27, 'medium', 'high']).
weakness(leveraging_race_condition_via_symbolic_links,time_of_check_time_of_use_race_condition,1).
weakness(leveraging_race_condition_via_symbolic_links,unix_symbolic_link_following,1).
weakness(leveraging_race_condition_via_symbolic_links,improper_synchronization,1).
weakness(leveraging_race_condition_via_symbolic_links,permission_race_condition_during_resource_copy,1).
weakness(leveraging_race_condition_via_symbolic_links,improper_locking,1).

% Root Jailbreak Detection Evasion via Hooking
attack(root_jailbreak_detection_evasion_via_hooking).
mitigation(root_jailbreak_detection_evasion_via_hooking,['ensure_correct_mobile_application_signin', 'inspect_the_applications_memory_for_suspicious_artifacts', 'inspect_application_stack_trace']).
attributes(root_jailbreak_detection_evasion_via_hooking, [660, 'medium', 'very_high']).
weakness(root_jailbreak_detection_evasion_via_hooking, 
inclusion_of_functionality_from_untrusted_control_sphere, 1).



%Bypassing of Intermediate Forms in Multiple-Form Sets
attributes(bypassing_of_intermediate_forms_in_multiple_form_sets, [140, 'null', 'medium']).
weakness(bypassing_of_intermediate_forms_in_multiple_form_sets,incomplete_internal_state_distinction,1).