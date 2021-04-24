%(attack,weakness,percentage)

weakness(fuzzing_for_application_mapping,generation_of_error_message_containing_sensitive_information,1).
weakness(fuzzing_for_application_mapping,7pk_-_errors,1).
weakness(fuzzing_for_application_mapping,insertion_of_sensitive_information_into_log_file,1).

weakness(dictionary-based_password_attack,weak_password_requirements,1).
weakness(dictionary-based_password_attack,Not Using Password Aging,1).
weakness(dictionary-based_password_attack,password_aging_with_long_expiration,1).
weakness(dictionary-based_password_attack,reliance_on_a_single_factor_in_a_security_decision,1).
weakness(dictionary-based_password_attack,improper_restriction_of_excessive_authentication_attempts,1).
weakness(dictionary-based_password_attack,use_of_single-factor_authentication,1).
weakness(dictionary-based_password_attack,use_of_password_system_for_primary_authentication,1).

weakness(rainbow_table_password_cracking,weak_encoding_for_password,1).
weakness(rainbow_table_password_cracking,weak_password_requirements,1).
weakness(rainbow_table_password_cracking,not_using_password_aging,1).
weakness(rainbow_table_password_cracking,password_aging_with_long_expiration,1).
weakness(rainbow_table_password_cracking,reliance_on_a_single_factor_in_a_security_decision,1).
weakness(rainbow_table_password_cracking,owasp_top_ten_2007_category_a8_-_insecure_cryptographic_storage,1).
weakness(rainbow_table_password_cracking,use_of_password_hash_with_insufficient_computational_effort,1).
weakness(rainbow_table_password_cracking,use_of_single-factor_authentication,1).
weakness(rainbow_table_password_cracking,use_of_password_system_for_primary_authentication,1).

weakness(password_spraying,weak_password_requirements,1).
weakness(password_spraying,not_using_password_aging,1).
weakness(password_spraying,password_aging_with_long_expiration,1).
weakness(password_spraying,reliance_on_a_single_factor_in_a_security_decision,1).
weakness(password_spraying,improper_restriction_of_excessive_authentication_attempts,1).
weakness(password_spraying,use_of_single-factor_authentication,1).
weakness(password_spraying,use_of_password_system_for_primary_authentication,1).

weakness(try_common_or_default_usernames_and_passwords,weak_password_requirements,1).
weakness(try_common_or_default_usernames_and_passwords,not_using_password_aging,1).
weakness(try_common_or_default_usernames_and_passwords,password_aging_with_long_expiration,1).
weakness(try_common_or_default_usernames_and_passwords,use_of_hard-coded_credentials,1).
weakness(try_common_or_default_usernames_and_passwords,reliance_on_a_single_factor_in_a_security_decision,1).
weakness(try_common_or_default_usernames_and_passwords,use_of_single-factor_authentication,1).
weakness(try_common_or_default_usernames_and_passwords,use_of_password_system_for_primary_authentication,1).

weakness(encryption_brute_forcing,inadequate_encryption_strength,1).
weakness(encryption_brute_forcing,use_of_a_broken_or_risky_cryptographic_algorithm,1).
weakness(encryption_brute_forcing,protection_mechanism_failure,1).
weakness(encryption_brute_forcing,owasp_top_ten_2007_category_a8_-_insecure_cryptographic_storage,1).
