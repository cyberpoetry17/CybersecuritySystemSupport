% weakness(attack, weakness, percentage).
% attributes(attack_name, [id, likelihood of attack, typical severity]).

%Fuzzing for application mapping
attack(fuzzing_for_application_mapping).
mitigation(fuzzing_for_application_mapping,['obfuscate_server_fields_of_http_response','hide_inner_ordering_of_http_response_header','customizing_http_error_codes','hide_http_response_information','hide_cookies']).
attributes(fuzzing_for_application_mapping, [215, 'high', 'low']).
weakness(fuzzing_for_application_mapping,generation_of_error_message_containing_sensitive_information,1).
weakness(fuzzing_for_application_mapping,pk_errors,1).
weakness(fuzzing_for_application_mapping,insertion_of_sensitive_information_into_log_file,1).


%Dictionary-based Password Attack
attack(dictionary_based_password_attack).
mitigation(dictionary-based_password_attack,['create_strong_passwords','implement_intelligent_password_throttling_mechanism','multi_factor_authentication']).
attributes(dictionary_based_password_attack, [16, 'medium', 'high']).
weakness(dictionary_based_password_attack,weak_password_requirements,1).
weakness(dictionary_based_password_attack,not_using_password_aging,1).
weakness(dictionary_based_password_attack,password_aging_with_long_expiration,1).
weakness(dictionary_based_password_attack,reliance_on_a_single_factor_in_a_security_decision,1).
weakness(dictionary_based_password_attack,improper_restriction_of_excessive_authentication_attempts,1).
weakness(dictionary_based_password_attack,use_of_single_factor_authentication,1).
weakness(dictionary_based_password_attack,use_of_password_system_for_primary_authentication,1).

%Rainbow Table Password Cracking
attack(rainbow_table_password_cracking,weak_encoding_for_password).
mitigation(rainbow_table_password_cracking,['use_salt_when_hashing_passwords']).
attributes(rainbow_table_password_cracking,weak_encoding_for_password, [55, 'medium', 'medium']).
weakness(rainbow_table_password_cracking,weak_encoding_for_password,1).
weakness(rainbow_table_password_cracking,weak_password_requirements,1).
weakness(rainbow_table_password_cracking,not_using_password_aging,1).
weakness(rainbow_table_password_cracking,password_aging_with_long_expiration,1).
weakness(rainbow_table_password_cracking,reliance_on_a_single_factor_in_a_security_decision,1).
weakness(rainbow_table_password_cracking,owasp_top_ten_2007_category_a8_insecure_cryptographic_storage,1).
weakness(rainbow_table_password_cracking,use_of_password_hash_with_insufficient_computational_effort,1).
weakness(rainbow_table_password_cracking,use_of_single_factor_authentication,1).
weakness(rainbow_table_password_cracking,use_of_password_system_for_primary_authentication,1).

%Password Spraying
attack(password_spraying).
mitigation(password_spraying,['create_strong_passwords','implement_intelligent_password_throttling_mechanism','multi_factor_authentication']).
attributes(password_spraying, [565, 'high', 'high']).
weakness(password_spraying,weak_password_requirements,1).
weakness(password_spraying,not_using_password_aging,1).
weakness(password_spraying,password_aging_with_long_expiration,1).
weakness(password_spraying,reliance_on_a_single_factor_in_a_security_decision,1).
weakness(password_spraying,improper_restriction_of_excessive_authentication_attempts,1).
weakness(password_spraying,use_of_single_factor_authentication,1).
weakness(password_spraying,use_of_password_system_for_primary_authentication,1).

%Try Common or Default Usernames and Passwords
attack(try_common_or_default_usernames_and_passwords).
mitigation(try_common_or_default_usernames_and_passwords,['delete_default_account_credentials','implement_intelligent_password_throttling_mechanism','create_strong_passwords','password_recycling']).
attributes(try_common_or_default_usernames_and_passwords, [70, 'medium', 'high']).
weakness(try_common_or_default_usernames_and_passwords,weak_password_requirements,1).
weakness(try_common_or_default_usernames_and_passwords,not_using_password_aging,1).
weakness(try_common_or_default_usernames_and_passwords,password_aging_with_long_expiration,1).
weakness(try_common_or_default_usernames_and_passwords,use_of_hard_coded_credentials,1).
weakness(try_common_or_default_usernames_and_passwords,reliance_on_a_single_factor_in_a_security_decision,1).
weakness(try_common_or_default_usernames_and_passwords,use_of_single_factor_authentication,1).
weakness(try_common_or_default_usernames_and_passwords,use_of_password_system_for_primary_authentication,1).


%Encryption Brute Forcing
attack(encryption_brute_forcing).
mitigation(encryption_brute_forcing,['use_commonly_accepted_algorithms','moores_law']).
attributes(encryption_brute_forcing, [20, 'low', 'low']).
weakness(encryption_brute_forcing,inadequate_encryption_strength,1).
weakness(encryption_brute_forcing,use_of_a_broken_or_risky_cryptographic_algorithm,1).
weakness(encryption_brute_forcing,protection_mechanism_failure,1).
weakness(encryption_brute_forcing,owasp_top_ten_2007_category_a8_insecure_cryptographic_storage,1).
