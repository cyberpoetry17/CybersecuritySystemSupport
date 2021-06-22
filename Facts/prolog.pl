%(attack,weakness,percentage)

attack(cross_zone_scripting).
attributes(cross_zone_scripting, [104, 'medium', 'high']).
mitigation(cross_zone_scripting,['disable_script_execution','input_validation','ensure_proper_html_output']).
weakness(cross_zone_scripting,execution_with_unnecessary_privileges,1).
weakness(cross_zone_scripting,not_using_complete_mediation,1).
weakness(cross_zone_scripting,improper_authorization,1).
weakness(cross_zone_scripting,improper_encoding_or_escaping_of_output,1).
weakness(cross_zone_scripting,improper_input_validation,1).

attack(hijacking_a_privileged_process).
mitigation(hijacking_a_privileged_process, ['disable_script_execution','ensure_proper_html_output','limit_flow_of_untrusted_data']).
attributes(hijacking_a_privileged_process, [234, 'null', 'medium']).
weakness(hijacking_a_privileged_process,incorrect_permission_assignment_for_critical_resource,1).
weakness(hijacking_a_privileged_process,incorrect_use_of_privileged_apis,1).

attack(catching_exception_throw_signal_from_privileged_block).
mitigation(catching_exception_throw_signal_from_privileged_block,['careful_desing_of_callback_signal_and_other_asynchronous_constructs','careful_desing_of_privileged_code_blocks']).
attributes(catching_exception_throw_signal_from_privileged_block, [236, 'low', 'very_high']).
weakness(catching_exception_throw_signal_from_privileged_block,privilege_context_switching_error,1).

attack(signing_malicious_code).
attributes(signing_malicious_code, [206, 'null', 'very_high']).
weakness(signing_malicious_code,incorrect_permission_assignment_for_critical_resource,1).

attack(target_programs_with_elevated_privileges).
mitigation(target_programs_with_elevated_privileges,['principle_of_least_privilege','validate_untrusted_data','apply_latest_patches','protect_logs_from_log_forging','traffic_and_resource_usage_monitoring']).

attributes(target_programs_with_elevated_privileges, [69, 'high', 'very_high']).
weakness(target_programs_with_elevated_privileges,execution_with_unnecessary_privileges,1).
weakness(target_programs_with_elevated_privileges,permissions_privileges_and_access_controls,1).
weakness(target_programs_with_elevated_privileges,external_control_of_system_or_configuration_setting,1).

attack(restful_privilege_elevation).
mitigation(restful_privilege_elevation,['ensure_get_methods_only_retrieve_state']).
attributes(restful_privilege_elevation, [58, 'high', 'high']).
weakness(restful_privilege_elevation,privilege_defined_with_unsafe_actions,1).
weakness(restful_privilege_elevation,improper_privilege_management,1).
weakness(restful_privilege_elevation,permissions_privileges_and_access_controls,1).

attack(create_files_with_the_same_name_as_files_protected_with_a_higher_classification).
attributes(create_files_with_the_same_name_as_files_protected_with_a_higher_classification, [177, 'null', 'very_high']).
weakness(create_files_with_the_same_name_as_files_protected_with_a_higher_classification,use_of_incorrectly-resolved_name_or_reference,1).

attack(force_use_of_corrupted_files).
attributes(force_use_of_corrupted_files, [263, 'null', 'medium']).
weakness(force_use_of_corrupted_files,inclusion_of_functionality_from_untrusted_control_sphere,1).

attack(modify_shared_file).
mitigation(modify_shared_file,['disallow_shared_content','minimize_users_with_shared_access']).
attributes(modify_shared_file, [562, 'null', 'null']).
weakness(modify_shared_file,improper_access_control,1).

attack(add_malicious_file_to_shared_webroot).
mitigation(add_malicious_file_to_shared_webroot,['ensure_permission_on_accessible_directories','disallow_remote_access','disable_execution_on_directories_withing_web_root']).
attributes(add_malicious_file_to_shared_webroot, [563, 'null', 'null']).
weakness(add_malicious_file_to_shared_webroot,improper_access_control,1).

attack(replace_binaries).
mitigation(replace_binaries,['ensure_commonly_used_binaries_have_correct_permission','restrict_privilege_elevation_of_non_admins']).
attributes(replace_binaries, [642, 'null', 'high']).
weakness(replace_binaries,incorrect_permission_assignment_for_critical_resource,1).

attack(upload_a_web_shell_to_a_web_server).
mitigation(upload_a_web_shell_to_a_web_server,['apply_latest_patches','principle_of_least_privilege']).
attributes(upload_a_web_shell_to_a_web_server, [650, 'null', 'high']).
weakness(upload_a_web_shell_to_a_web_server,improper_authentication,1).
weakness(upload_a_web_shell_to_a_web_server,command_shell_in_externally_accessible_directory,1).

attack(data_serialization_external_entities_blowup).
mitigation(data_serialization_external_entities_blowup,['tweak_xml_parser_to_not_resolve_external_entities','implement_xmlresolver_with_request_timeout','tweak_serialized_data_parser_to_not_resolve_external_entities']).
attributes(data_serialization_external_entities_blowup, [221, 'null', 'null']).
weakness(data_serialization_external_entities_blowup,improper_restriction_of_xml_external_entity_reference,1).

attack(webview_exposure).
mitigation(webview_exposure,['limit_permission','verify_origion_of_web_content']).
attributes(webview_exposure, [503, 'null', 'null']).
weakness(webview_exposure,improper_access_control,1).

attack(xml_routing_detour_attacks).
mitigation(xml_routing_detour_attacks,['use_ssl_for_connections_between_all_parties_with_mutual_authentication']).
attributes(xml_routing_detour_attacks, [219, 'high', 'medium']).
weakness(xml_routing_detour_attacks,unintended_proxy_or_intermediary,1).
weakness(xml_routing_detour_attacks,externally_controlled_reference_to_a_resource_in_another_sphere,1).	

attack(transaction_or_event_tampering_via_application_api_manipulation).
attributes(transaction_or_event_tampering_via_application_api_manipulation, [385, 'null', 'medium']).
weakness(transaction_or_event_tampering_via_application_api_manipulation,modification_of_assumed_immutable_data,1).
weakness(transaction_or_event_tampering_via_application_api_manipulation,insufficient_verification_of_data_authenticity,1).
weakness(transaction_or_event_tampering_via_application_api_manipulation,origin_validation_error,1).
weakness(transaction_or_event_tampering_via_application_api_manipulation,client_side_enforcement_of_server_side_security,1).
weakness(transaction_or_event_tampering_via_application_api_manipulation,missing_encryption_of_sensitive_data,1).

attack(content_spoofing_via_application_api_manipulation).
attributes(content_spoofing_via_application_api_manipulation, [389, 'null', 'low']).
weakness(content_spoofing_via_application_api_manipulation,missing_support_for_integrity_check,1).

attack(navigation_remapping_to_propagate_malicious_content).
attributes(navigation_remapping_to_propagate_malicious_content, [387, 'null', 'medium']).
weakness(navigation_remapping_to_propagate_malicious_content,modification_of_assumed_immutable_data,1).
weakness(navigation_remapping_to_propagate_malicious_content,insufficient_verification_of_data_authenticity,1).
weakness(navigation_remapping_to_propagate_malicious_content,origin_validation_error,1).
weakness(navigation_remapping_to_propagate_malicious_content,client_side_enforcement_of_server_side_security,1).
weakness(navigation_remapping_to_propagate_malicious_content,missing_encryption_of_sensitive_data,1).

attack(application_api_button_hijacking).
attributes(application_api_button_hijacking, [388, 'null', 'medium']).
weakness(application_api_button_hijacking,modification_of_assumed_immutable_data,1).
weakness(application_api_button_hijacking,insufficient_verification_of_data_authenticity,1).
weakness(application_api_button_hijacking,origin_validation_error,1).
weakness(application_api_button_hijacking,client_side_enforcement_of_server_side_security,1).
weakness(application_api_button_hijacking,missing_encryption_of_sensitive_data,1).

attack(leveraging_active_man_in_the_middle_attacks_to_bypass_same_origin_policy).
attributes(leveraging_active_man_in_the_middle_attacks_to_bypass_same_origin_policy, [466, 'null', 'medium']).
weakness(leveraging_active_man_in_the_middle_attacks_to_bypass_same_origin_policy,channel_accessible_by_non-endpoint,1).

attack(reflection_attack_in_authentication_protocol).
attributes(reflection_attack_in_authentication_protocol, [90, 'high', 'high']).
weakness(reflection_attack_in_authentication_protocol,reflection_attack_in_an_authentication_protocol,1).
weakness(reflection_attack_in_authentication_protocol,incorrect_implementation_of_authentication_algorithm,1).
weakness(reflection_attack_in_authentication_protocol,owasp_top_ten_2007_category_a7_broken_authentication_and_session_management,1).

attack(web_services_api_signature_forgery_leveraging_hash_function_extension_weakness).
attributes(web_services_api_signature_forgery_leveraging_hash_function_extension_weakness, [461, 'null', 'high']).
weakness(web_services_api_signature_forgery_leveraging_hash_function_extension_weakness,reversible_one_way_hash,1).
weakness(web_services_api_signature_forgery_leveraging_hash_function_extension_weakness,authentication_bypass_by_spoofing,1).

attack(escaping_a_sandbox_by_calling_code_in_another_language).
mitigation(escaping_a_sandbox_by_calling_code_in_another_language,['sanitize_the_code_of_the_standard_libraries_to_make_sure_there_is_no_security_weaknesses_in_them','use_obfuscation_and_other_techniques_to_prevent_reverse_engineering_the_standard_libraries','use_static_analysis_tool_to_do_code_review_and_dynamic_tool_to_do_penetration_test_on_the_standard_library']).
attributes(escaping_a_sandbox_by_calling_code_in_another_language, [237, 'low', 'very_high']).
weakness(escaping_a_sandbox_by_calling_code_in_another_language,protection_mechanism_failure,1).

attack(forceful_browsing).
mitigation(forceful_browsing,['authenticate_request_to_every_resource']).
attributes(forceful_browsing, [87, 'high', 'high']).
weakness(forceful_browsing,direct_request,1).
weakness(forceful_browsing,improper_authorization,1).
weakness(forceful_browsing,protection_mechanism_failure,1).

attack(create_malicious_client).
attributes(create_malicious_client, [202, 'null', 'medium']).
weakness(create_malicious_client,client_side_enforcement_of_server_side_security,1).

attack(accessing_intercepting_modifying_http_cookies).
attributes(accessing_intercepting_modifying_http_cookies, [31, 'high', 'high']).
weakness(accessing_intercepting_modifying_http_cookies,reliance_on_cookies_without_validation_and_integrity_checking,1).
weakness(accessing_intercepting_modifying_http_cookies,authentication_bypass_by_assumed_immutable_data,1).
weakness(accessing_intercepting_modifying_http_cookies,missing_encryption_of_sensitive_data,1).
weakness(accessing_intercepting_modifying_http_cookies,improper_neutralization_of_crlf_sequences_in_http_headers,1).
weakness(accessing_intercepting_modifying_http_cookies,use_of_persistent_cookies_containing_sensitive_information,1).
weakness(accessing_intercepting_modifying_http_cookies,improper_input_validation,1).
weakness(accessing_intercepting_modifying_http_cookies,cleartext_storage_of_sensitive_information_in_a_cookie,1).
weakness(accessing_intercepting_modifying_http_cookies,session_fixation,1).
weakness(accessing_intercepting_modifying_http_cookies,external_control_of_assumed_immutable_web_parameter,1).
weakness(accessing_intercepting_modifying_http_cookies,owasp_top_ten_2004_category_a3_broken_authentication_and_session_management,1).
weakness(accessing_intercepting_modifying_http_cookies,client_side_enforcement_of_server_side_security,1).
weakness(accessing_intercepting_modifying_http_cookies,external_control_of_critical_state_data,1).

attack(subverting_environment_variable_values).
attributes(subverting_environment_variable_values, [13, 'high', 'very_high']).
weakness(subverting_environment_variable_values,missing_support_for_integrity_check,1).
weakness(subverting_environment_variable_values,improper_authorization,1).
weakness(subverting_environment_variable_values,authentication_bypass_by_assumed_immutable_data,1).
weakness(subverting_environment_variable_values,improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component,1).
weakness(subverting_environment_variable_values,external_control_of_system_or_configuration_setting,1).
weakness(subverting_environment_variable_values,external_control_of_file_name_or_path,1).
weakness(subverting_environment_variable_values,improper_input_validation,1).
weakness(subverting_environment_variable_values,exposure_of_sensitive_information_to_an_unauthorized_actor,1).

attack(manipulating_hidden_fields).
attributes(manipulating_hidden_fields, [162, 'null', 'high']).
mitigation(use_of_captured_hashes,['monitor_system_and_domain_logs_for_abnormal_credential_access','create_a_strong_password_policy','apply_patch_kb2871997_to_windows_7_and_higher_systems','prevent_the_use_of_lan_man_and_nt_lan_man_authentication_on_severs']).
weakness(manipulating_hidden_fields,client_side_enforcement_of_server_side_security,1).
weakness(use_of_captured_hashes_(pass_the_hash),insufficiently_protected_credentials,1).
weakness(use_of_captured_hashes_(pass_the_hash),use_of_password_hash_instead_of_password_for_authentication,1).
weakness(use_of_captured_hashes_(pass_the_hash),use_of_single_factor_authentication,1).
weakness(use_of_captured_hashes_(pass_the_hash),authentication_bypass_by_capture_replay,1).
weakness(use_of_captured_hashes_(pass_the_hash),use_of_single_factor_authentication,1).

attack(windows_admin_shares_with_stolen_credentials).
mitigation(windows_admin_shares_with_stolen_credentials,['do_not_reuse_local_administrator_account_credentials_across_systems','deny_remote_use_of_local_admin_credentials_to_log_into_domain_systems','do_not_allow_accounts_to_be_a_local_administrator_on_more_than_one_system']).
attributes(windows_admin_shares_with_stolen_credentials, [561, 'null', 'null']).
weakness(windows_admin_shares_with_stolen_credentials,insufficiently_protected_credentials,1).
weakness(windows_admin_shares_with_stolen_credentials,use_of_single_factor_authentication,1).
weakness(windows_admin_shares_with_stolen_credentials,use_of_password_system_for_primary_authentication,1).
weakness(windows_admin_shares_with_stolen_credentials,authentication_bypass_by_capture_replay,1).
weakness(windows_admin_shares_with_stolen_credentials,password_aging_with_long_expiration,1).
weakness(windows_admin_shares_with_stolen_credentials,not_using_password_aging,1).
weakness(windows_admin_shares_with_stolen_credentials,weak_password_requirements,1).

attack(use_of_captured_tickets).
attributes(use_of_captured_tickets, [645, 'low', 'high']).
weakness(use_of_captured_tickets,insufficiently_protected_credentials,1).
weakness(use_of_captured_tickets,authentication_bypass_by_capture_replay,1).
weakness(use_of_captured_tickets,use_of_single-factor_authentication,1).

attack(kerberoasting).
mitigation(kerberoasting,['monitor_system_and_domain_logs_for_abnormal_access','employ_a_robust_password_policy_for_service_accounts','employ_the_principle_of_least_privilege','enable_aes_kerberos_encryption']).
attributes(kerberoasting, [509, 'null', 'high']).
weakness(kerberoasting,insufficiently_protected_credentials,1).
weakness(kerberoasting,use_of_single_factor_authentication,1).
weakness(kerberoasting,use_of_password_system_for_primary_authentication,1).
weakness(kerberoasting,authentication_bypass_by_capture_replay,1).
weakness(kerberoasting,password_aging_with_long_expiration,1).
weakness(kerberoasting,not_using_password_aging,1).
weakness(kerberoasting,weak_password_requirements,1).

attack(credential_stuffing).
mitigation(credential_stuffing,['create_a_strong_password_policy','do_not_reuse_local_administrator_account_credentials_across_systems','deny_remote_use_of_local_admin_credentials_to_log_into_domain_systems','do_not_allow_accounts_to_be_a_local_administrator_on_more_than_one_system']).
attributes(credential_stuffing, [600, 'high', 'high']).
weakness(credential_stuffing,insufficiently_protected_credentials,1).
weakness(credential_stuffing,improper_restriction_of_excessive_authentication_attempts,1).
weakness(credential_stuffing,use_of_single_factor_authentication,1).
weakness(credential_stuffing,use_of_password_system_for_primary_authentication,1).
weakness(credential_stuffing,not_using_password_aging,1).
weakness(credential_stuffing,password_aging_with_long_expiration,1).
weakness(credential_stuffing,reliance_on_a_single_factor_in_a_security_decision,1).

attack(remote_services_with_stolen_credentials).
mitigation(remote_services_with_stolen_credentials,['disable_rdp','disable_ssh','disable_telnet','enable_firewall_rules']).
attributes(remote_services_with_stolen_credentials, [555, 'null', 'very_high']).
weakness(remote_services_with_stolen_credentials,insufficiently_protected_credentials,1).
weakness(remote_services_with_stolen_credentials,use_of_single_factor_authentication,1).
weakness(remote_services_with_stolen_credentials,use_of_password_system_for_primary_authentication,1).
weakness(remote_services_with_stolen_credentials,authentication_bypass_by_capture_replay,1).
weakness(remote_services_with_stolen_credentials,password_aging_with_long_expiration,1).
weakness(remote_services_with_stolen_credentials,not_using_password_aging,1).
weakness(remote_services_with_stolen_credentials,weak_password_requirements,1).

attack(session_credential_falsification_through_manipulation).
attributes(session_credential_falsification_through_manipulation, [226, 'null', 'medium']).
weakness(session_credential_falsification_through_manipulation,reliance_on_cookies_without_validation_and_integrity_checking,1).
weakness(session_credential_falsification_through_manipulation,external_control_of_assumed_immutable_web_parameter,1).


attack(session_credential_falsification_through_prediction).
attributes(session_credential_falsification_through_prediction, [59, 'high', 'high']).
weakness(session_credential_falsification_through_prediction,authentication_bypass_by_spoofing,1).
weakness(session_credential_falsification_through_prediction,use_of_insufficiently_random_values,1).
weakness(session_credential_falsification_through_prediction,insufficient_entropy,1).
weakness(session_credential_falsification_through_prediction,origin_validation_error,1).
weakness(session_credential_falsification_through_prediction,exposure_of_data_element_to_wrong_session,1).
weakness(session_credential_falsification_through_prediction,use_of_persistent_cookies_containing_sensitive_information,1).
weakness(session_credential_falsification_through_prediction,exposure_of_sensitive_information_to_an_unauthorized_actor,1).
weakness(session_credential_falsification_through_prediction,j2ee_misconfiguration:_insufficient_session_id_length,1).
weakness(session_credential_falsification_through_prediction,improper_authorization,1).
weakness(session_credential_falsification_through_prediction,session_fixation,1).
weakness(session_credential_falsification_through_prediction,protection_mechanism_failure,1).
weakness(session_credential_falsification_through_prediction,owasp_top_ten_2007_category_a8_insecure_cryptographic_storage,1).

attack(saas_user_request_forgery).
attributes(saas_user_request_forgery, [510, 'high', 'medium']).
weakness(saas_user_request_forgery,origin_validation_error,1).

attack(session_sidejacking).
attributes(session_sidejacking, [102, 'high', 'high']).
weakness(session_sidejacking,authentication_bypass_by_capture_replay,1).
weakness(session_sidejacking,insufficiently_protected_credentials,1).
weakness(session_sidejacking,unprotected_transport_of_credentials,1).
weakness(session_sidejacking,cleartext_transmission_of_sensitive_information,1).
weakness(session_sidejacking,sensitive_cookie_in_https_session_without_secure_attribute,1).

attack(cross_site_tracing).
mitigation(cross_site_tracing,['disable_support_for_http_trace','patch_web_browser_against_known_exploits']).
attributes(cross_site_tracing, [107, 'medium', 'very_high']).
weakness(cross_site_tracing,protection_mechanism_failure,1).
weakness(cross_site_tracing,incorrect_use_of_privileged_apis,1).

attack(reusing_session_ids).
attributes(reusing_session_ids, [60, 'high', 'high']).
weakness(reusing_session_ids,authentication_bypass_by_capture_replay,1).
weakness(reusing_session_ids,authentication_bypass_by_spoofing,1).
weakness(reusing_session_ids,origin_validation_error,1).
weakness(reusing_session_ids,session_fixation,1).
weakness(reusing_session_ids,exposure_of_data_element_to_wrong_session,1).
weakness(reusing_session_ids,use_of_persistent_cookies_containing_sensitive_information,1).
weakness(reusing_session_ids,exposure_of_sensitive_information_to_an_unauthorized_actor,1).
weakness(reusing_session_ids,improper_authorization,1).
weakness(reusing_session_ids,improper_control_of_a_resource_through_its_lifetime,1).
weakness(reusing_session_ids,incorrect_permission_assignment_for_critical_resource,1).

attack(session_fixation).
attributes(session_fixation, [61, 'medium', 'high']).
weakness(session_fixation,session_fixation,1).
weakness(session_fixation,seven_pk_time_and_state,1).
weakness(session_fixation,improper_control_of_a_resource_through_its_lifetime,1).
weakness(session_fixation,incorrect_permission_assignment_for_critical_resource,1).

attack(cross_site_identification).
mitigation(cross_site_identification,['log_out_from_social_networks_when_not_using','dont_open_other_tabs_while_on_social_networks']).
attributes(cross_site_identification, [467, 'null', 'low']).
weakness(cross_site_identification,cross_site_request_forgery,1).
weakness(cross_site_identification,exposure_of_private_personal_information_to_an_unauthorized_actor,1).

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

% Format string injection
attack(format_string_injection).
mitigation(format_string_injection,['limit_usage_of_formatting_string_functions','strong_input_validation']).
attributes(format_string_injection, [135, 'high', 'high']).
weakness(format_string_injection,
use_of_externally_controlled_format_string, 1).
weakness(format_string_injection,
improper_input_validation, 1).
weakness(format_string_injection,
improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component, 1).
weakness(format_string_injection,
string_errors, 1).

% HTTP Parameter Pollution (HPP).
attack(http_parameter_pollution_hpp).
mitigation(http_parameter_pollution,['use_strict_regular_expressions_in_url_rewriting','attention_on_multiple_occurences_of_parameter_in_a_query_string']).
attributes(http_parameter_pollution_hpp, [460, 'null', 'medium']).
weakness(http_parameter_pollution_hpp, 
improper_neutralization_of_argument_delimiters_in_a_command, 1).
weakness(http_parameter_pollution_hpp, 
improper_neutralization_of_input_terminators, 1).
weakness(http_parameter_pollution_hpp, 
improper_handling_of_extra_parameters, 1).

% Cross-Site Flashing
attack(cross_site_flashing).
mitigation(cross_site_flashing,['only_allow_known_url_as_remote_flash_movies_in_flash_application']).
attributes(cross_site_flashing, [178, 'medium', 'medium']).
%No weaknesses --skip

% Argument Injection
attack(argument_injection).
mitigation(argument_injection,['implement_audit_log_written_by_separate_host']).
attributes(argument_injection, [6, 'high', 'high']).
weakness(argument_injection, 
improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component, 1).
weakness(argument_injection, 
improper_neutralization_of_expression_command_delimiters, 1).
weakness(argument_injection, 
incomplete_list_of_disallowed_inputs, 1).
weakness(argument_injection, 
improper_neutralization_of_special_elements_used_in_an_os_command, 1).
weakness(argument_injection, 
incorrect_regular_expression, 1).
weakness(argument_injection, 
owasp_top_ten_2007_category_a2_injection_flaws, 1).
weakness(argument_injection, 
incorrect_comparison, 1).

% Inclusion of Code in Existing Process
attack(inclusion_of_code_in_existing_process).
mitigation(inclusion_of_code_in_existing_process,['use_allow_list_policy', 'restrict_software_location', 'monitor_processes_and_command_line_arguments']).
attributes(inclusion_of_code_in_existing_process, [640, 'low', 'high']).
%No weaknesses --skip

% PHP Remote File Inclusion
attack(php_remote_file_inclusion).
mitigation(php_remote_file_inclusion,['input_validation', 'allow_only_whitelisted_files']).
attributes(php_remote_file_inclusion, [193, 'high', 'high']).
weakness(php_remote_file_inclusion,
improper_control_of_filename_for_include_require_statement_in_php_program, 1).
weakness(php_remote_file_inclusion,
improper_neutralization_of_script_related_html_tags_in_a_web_page, 1).
weakness(php_remote_file_inclusion,
owasp_top_ten_2007_category_a3_malicious_file_execution, 1).

% Cellular Data Injection
attack(cellular_data_injection).
mitigation(cellular_data_injection,['commercial_defensive_technology']).
attributes(cellular_data_injection, [610, 'null', 'high']).
% No weaknesses --skip

% Embedding Scripts within Scripts
attack(embedding_scripts_within_scripts).
mitigation(embedding_scripts_within_scripts,['use_browser_technology_with_anti_scripting', 'input_validation', 'output_validation', 'session_tokens_for_specific_host']).
attributes(embedding_scripts_within_scripts, [19, 'high', 'high']).
weakness(embedding_scripts_within_scripts,
improper_access_control, 1).

% Generic Cross-Browser Cross-Domain Theft
attack(generic_cross_browser_cross_domain_theft).
mitigation(generic_cross_browser_cross_domain_theft,['perform_proper_html_encoding_and_escaping']).
attributes(generic_cross_browser_cross_domain_theft, [468, 'null', 'medium']).
weakness(generic_cross_browser_cross_domain_theft,
improper_neutralization, 1).
weakness(generic_cross_browser_cross_domain_theft,
improper_neutralization_of_quoting_syntax, 1).
weakness(generic_cross_browser_cross_domain_theft,
improper_handling_of_url_encoding, 1).
weakness(generic_cross_browser_cross_domain_theft,
inappropriate_encoding_for_output_context, 1).

% DOM-Based XSS
attack(dom_based_xss).
mitigation(dom_based_xss,['use_browser_technology_with_anti_scripting', 'ensure_all_user_supplied_input_is_valid']).
attributes(dom_based_xss, [588, 'high', 'very_high']).
weakness(dom_based_xss,
improper_neutralization_of_input_during_web_page_generation, 1).
weakness(dom_based_xss,
improper_input_validation, 1).
weakness(dom_based_xss,
improper_neutralization_of_script_in_attributes_in_a_web_page, 1).

% Reflected XSS
attack(reflected_xss).
mitigation(reflected_xss,['use_browser_technology_with_anti_scripting', 'ensure_all_user_supplied_input_is_valid']).
attributes(reflected_xss, [591, 'high', 'very_high']).
weakness(reflected_xss,
improper_neutralization_of_input_during_web_page_generation, 1).

% DTD Injection
attack(dtd_injection).
mitigation(dtd_injection,['disallow_inclusion_of_dtds', 'use_xml_parsing_tools_against_dtd_attacks']).
attributes(dtd_injection, [228, 'null', 'medium']).
weakness(dtd_injection,
inclusion_of_functionality_from_untrusted_control_sphere, 1).

%XPath Injection
attack(xpath_injection).
mitigation(xpath_injection,['strong_input_validation', 'use_of_parametrized_xpath_queries', 'use_of_custom_error_pages']).
attributes(xpath_injection, 'high', 'high').
weakness(xpath_injection,
xml_injection, 1).
weakness(xpath_injection,
improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component, 1).
weakness(xpath_injection,
improper_input_validation, 1).
weakness(xpath_injection,
owasp_top_ten_2007_category_a2_injection_flaws, 1).
weakness(xpath_injection,
improper_neutralization, 1).

%XQuery Injection
attack(xquery_injection).
mitigation(xquery_injection,['run_xml_parsing_and_query_with_minimal_privileges']).
attributes(xquery_injection, [84, 'high', 'very_high']).
weakness(xquery_injection,
improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component, 1).
weakness(xquery_injection,
owasp_top_ten_2007_category_a2_injection_flaws, 1).
weakness(xquery_injection,
improper_neutralization, 1).

%OS Command Injection
attack(os_command_injection).
mitigation(os_command_injection,['filter_incoming_data_to_escape_or_remove_characters', 'run_applications_with_minimal_privilege']).
attributes(os_command_injection, [88, 'high', 'high']).
weakness(os_command_injection,
improper_neutralization_of_special_elements_used_in_an_os_command, 1).
weakness(os_command_injection,
improper_neutralization_of_argument_delimiters_in_a_command, 1).
weakness(os_command_injection,
improper_input_validation, 1).
weakness(os_command_injection,
incorrect_comparison, 1).
weakness(os_command_injection,
owasp_top_ten_2007_category_a2_injection_flaws, 1).

%Install New Service
attack(install_new_service).
mitigation(install_new_service,['limit_privilege_of_new_accounts']).
attributes(install_new_service, [550, 'null', 'null']).
weakness(install_new_service,
improper_access_control, 1).

%Install Rootkit
attack(install_rootkit).
mitigation(install_rootkit,['prevent_adversary_access_to_privileged_accounts']).
attributes(install_rootkit, [552, 'medium', 'high']).
weakness(install_rootkit,
improper_access_control, 1).

%Run Software at Logon
attack(run_software_at_logon).
mitigation(run_software_at_logon,['restrict_write_access_to_logon_scripts']).
attributes(run_software_at_logon, [564, 'null', 'null']).
weakness(run_software_at_logon,
improper_access_control, 1).

%Object Injection
attack(object_injection).
mitigation(object_injection,['validate_objects_before_deserialization', 'keep_session_state_on_the_server']).
attributes(object_injection, [586, 'medium', 'high']).
weakness(object_injection,
deserialization_of_untrusted_data, 1).

attack(buffer_overflow_via_environment_variables).
mitigation(buffer_overflow_via_environment_variables,['do_not_expose_environment_variable_to_the_user','do_not_use_untrusted_data_in_your_environment_variables','use_a_language_or_compiler_that_performs_automatic_bounds_checking']).
attributes(buffer_overflow_via_environment_variables , [10, 'high', 'high']).
weakness(buffer_overflow_via_environment_variables, buffer_copy_without_checking_size_of_input, 1).
weakness(buffer_overflow_via_environment_variables, authentication_bypass_by_assumed_immutable_data, 1).
weakness(buffer_overflow_via_environment_variables, incorrect_access_of_indexable_resource, 1).
weakness(buffer_overflow_via_environment_variables, improper_restriction_of_operations_within_the_bounds_of_a_memory_buffer, 1).
weakness(buffer_overflow_via_environment_variables, improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component, 1).
weakness(buffer_overflow_via_environment_variables, improper_control_of_resource_identifiers, 1).
weakness(buffer_overflow_via_environment_variables, improper_input_validation, 1).
weakness(buffer_overflow_via_environment_variables, integer_overflow_to_buffer_overflow, 1).
weakness(buffer_overflow_via_environment_variables, compiler_optimization_removal_or_modification_of_security_critical_code, 1).
weakness(buffer_overflow_via_environment_variables, incorrect_comparison, 1).

attack(string_format_overflow_in_syslog).
mitigation(string_format_overflow_in_syslog,['the_code_should_be_reviewed_for_misuse_of_the_syslog_function_call']).
attributes(string_format_overflow_in_syslog , [67, 'high', 'very_high']).
weakness(string_format_overflow_in_syslog, buffer_copy_without_checking_size_of_input, 1).
weakness(string_format_overflow_in_syslog, use_of_externally_controlled_format_string, 1).
weakness(string_format_overflow_in_syslog, improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component, 1).
weakness(string_format_overflow_in_syslog, improper_input_validation, 1).
weakness(string_format_overflow_in_syslog, integer_overflow_to_buffer_overflow, 1).
weakness(string_format_overflow_in_syslog, incorrect_comparison, 1).

attack(relative_path_traversal).
mitigation(relative_path_traversal,['input_validation','accept_only_known_good','use_indirect_references_instead_of_file_names','use_permission_on_file_access']).
attributes(relative_path_traversal , [139, 'high', 'high']).
weakness(relative_path_traversal, relative_path_traversal, 1).

attack(absolute_path_traversal).
mitigation(absolute_path_traversal,['input_validation','perform_pen_testing_and_vulnerability_scans','use_indirect_references_instead_of_file_names','use_permission_on_file_access']).
attributes(absolute_path_traversal , [597, 'null', 'null']).
weakness(absolute_path_traversal, absolute_path_traversal, 1).

attack(forced_integer_overflow).
mitigation(forced_integer_overflow,['use_abstract_libraries_to_abstract_away_risky_apis','bound_checking_before_consuming_input_data']).
attributes(forced_integer_overflow , [92, 'high', 'high']).
weakness(forced_integer_overflow, integer_overflow_or_wraparound, 1).
weakness(forced_integer_overflow, wrap_around_error, 1).
weakness(forced_integer_overflow, buffer_copy_without_checking_size_of_input, 1).
weakness(forced_integer_overflow, heap_based_buffer_overflow, 1).
weakness(forced_integer_overflow, unsigned_to_signed_conversion_error, 1).
weakness(forced_integer_overflow, integer_overflow_to_buffer_overflow, 1).
weakness(forced_integer_overflow, incorrect_comparison, 1).

attack(embedding_null_bytes).
mitigation(embedding_null_bytes,['properly_handle_null_values']).
attributes(embedding_null_bytes , [52, 'high', 'high']).
weakness(embedding_null_bytes, improper_neutralization_of_null_byte_or_nul_character, 1).
weakness(embedding_null_bytes, encoding_error, 1).
weakness(embedding_null_bytes, improper_handling_of_alternate_encoding, 1).
weakness(embedding_null_bytes, improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component, 1).
weakness(embedding_null_bytes, improper_input_validation, 1).
weakness(embedding_null_bytes, incorrect_comparison, 1).
weakness(embedding_null_bytes, improper_neutralization, 1).

retrieve_mitigations(Attack_name, Mitigations) :- attack(Attack_name), mitigation(Attack_name, M), append([], M, Mitigations).

retrieve_weaknesses(Attack_name,Weakness):-attack(Attack_name),weakness(Attack_name,W,P),append([],W,Weakness).

retrieve_attributes(Attack_name,Attribute):-attack(Attack_name),attributes(Attack_name,A),append([],A,Attribute).

retrieve_attributes_for_attack(C,X):- retrieve_mitigations(C,X);retrieve_weaknesses(C,X);retrieve_attributes(C,X).

retrieve_measure_for_gathered(X1,X2,X3,M):-retrieve_mitigations(X1,M),retrieve_weaknesses(X2,M),retrieve_attributes(X3,M).