% weakness(attack, weakness, percentage).
% attributes(attack_name, [id, likelihood of attack, typical severity]).


% Using Meta-characters in E-mail Headers to Inject Malicious Payloads.
attack(using_meta_characters_in_email_headers_to_inject_malicious_payloads).
attributes(using_meta_characters_in_email_headers_to_inject_malicious_payloads, [41, 'high', 'high']).
weakness(using_meta_characters_in_email_headers_to_inject_malicious_payloads, 
improper_neutralization_of_escape_meta_or_control_sequences, 1).
weakness(using_meta_characters_in_email_headers_to_inject_malicious_payloads, 
improper_neutralization_of_argument_delimiters_in_a_command, 1).
weakness(using_meta_characters_in_email_headers_to_inject_malicious_payloads, 
incorrect_comparison, 1).
weakness(using_meta_characters_in_email_headers_to_inject_malicious_payloads, 
owasp_top_ten_2007_category_a2_injection_flaws, 1).


% Format string injection
attack(format_string_injection).
attributes(format_string_injection, [135, 'high', 'high']).
weakness(format_string_injection,
use_of_externally_controlled_format_string, 1).
weakness(format_string_injection,
improper_input_validation, 1).
weakness(format_string_injection,
improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component, 1).
weakness(format_string_injection,
string_errors, 1).


% Reflection Injection
attack(injection).
attributes(injection, [138, 'null', 'very_high']).
%No weaknesses --skip

% HTTP Parameter Pollution (HPP).
attack(http_parameter_pollution_hpp).
attributes(http_parameter_pollution_hpp, [460, 'null', 'medium']).
weakness(http_parameter_pollution_hpp, 
improper_neutralization_of_argument_delimiters_in_a_command, 1).
weakness(http_parameter_pollution_hpp, 
improper_neutralization_of_input_terminators, 1).
weakness(http_parameter_pollution_hpp, 
improper_handling_of_extra_parameters, 1).

% Flash Parameter Injection
attack(flash_parameter_injection).
attributes(flash_parameter_injection, [174, 'high', 'medium']).
weakness(flash_parameter_injection,
improper_neutralization_of_argument_delimiters_in_a_command, 1).

% Cross-Site Flashing
attack(cross_site_flashing).
attributes(cross_site_flashing, [178, 'medium', 'medium']).
%No weaknesses --skip

% Argument Injection
attack(argument_injection).
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


% PHP Local File Inclusion
attack(php_local_file_inclusion).
attributes(php_local_file_inclusion, [252, 'null', 'medium']).
weakness(php_local_file_inclusion, 
inclusion_of_functionality_from_untrusted_control_sphere, 1).

% Inclusion of Code in Existing Process
attack(inclusion_of_code_in_existing_process).
attributes(inclusion_of_code_in_existing_process, [640, 'low', 'high']).
%No weaknesses --skip

% Root Jailbreak Detection Evasion via Hooking
attack(root_jailbreak_detection_evasion_via_hooking).
attributes(root_jailbreak_detection_evasion_via_hooking, [660, 'medium', 'very_high']).
weakness(root_jailbreak_detection_evasion_via_hooking, 
inclusion_of_functionality_from_untrusted_control_sphere, 1).

% Server Side Include (SSI). Injection
attack(server_side_include_ssi_injection).
attributes(server_side_include_ssi_injection, [101, 'high', 'high']).
weakness(server_side_include_ssi_injection,
improper_neutralization_of_server_side_includes_ssi_within_a_web_page, 1).
weakness(server_side_include_ssi_injection,
improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component, 1).
weakness(server_side_include_ssi_injection,
improper_input_validation, 1).
weakness(server_side_include_ssi_injection,
owasp_top_ten_2007_category_a2_injection_flaws, 1).

% PHP Remote File Inclusion
attack(php_remote_file_inclusion).
attributes(php_remote_file_inclusion, [193, 'high', 'high']).
weakness(php_remote_file_inclusion,
improper_control_of_filename_for_include_require_statement_in_php_program, 1).
weakness(php_remote_file_inclusion,
improper_neutralization_of_script_related_html_tags_in_a_web_page, 1).
weakness(php_remote_file_inclusion,
owasp_top_ten_2007_category_a3_malicious_file_execution, 1).

% WebView Injection
attack(webview_injection).
attributes(webview_injection, [500, 'null', 'null']).
%No weaknesses --skip

% Cellular Data Injection
attack(cellular_data_injection).
attributes(cellular_data_injection, [610, 'null', 'high']).
% No weaknesses --skip

% Embedding Scripts within Scripts
attack(embedding_scripts_within_scripts).
attributes(embedding_scripts_within_scripts, [19, 'high', 'high']).
weakness(embedding_scripts_within_scripts,
improper_access_control, 1).

% Overflow Binary Resource File
attack(overflow_binary_resource_file).
attributes(overflow_binary_resource_file, [44, 'high', 'very_high']).
weakness(overflow_binary_resource_file,
buffer_copy_without_checking_size_of_input, 1).
weakness(overflow_binary_resource_file,
improper_restriction_of_operations_within_the_bounds_of_a_memory_buffer, 1).
weakness(overflow_binary_resource_file,
incorrect_comparison, 1).
weakness(overflow_binary_resource_file,
owasp_top_ten_2007_category_a2_injection_flaws, 1).

% Using Meta-characters in E-mail Headers to Inject Malicious Payloads
attack(using_meta_characters_in_e_mail_headers_to_inject_malicious_payloads).
attributes(using_meta_characters_in_e_mail_headers_to_inject_malicious_payloads, [41, 'high', 'high']).
weakness(using_meta_characters_in_e_mail_headers_to_inject_malicious_payloads,
improper_neutralization_of_escape_meta_or_control_sequences, 1).
weakness(using_meta_characters_in_e_mail_headers_to_inject_malicious_payloads,
improper_neutralization_of_argument_delimiters_in_a_command, 1).
weakness(using_meta_characters_in_e_mail_headers_to_inject_malicious_payloads,
incorrect_comparison, 1).
weakness(using_meta_characters_in_e_mail_headers_to_inject_malicious_payloads,
owasp_top_ten_2007_category_a2_injection_flaws, 1).

% Generic Cross-Browser Cross-Domain Theft
attack(generic_cross_browser_cross_domain_theft).
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
attributes(dom_based_xss, [588, 'high', 'very_high']).
weakness(dom_based_xss,
improper_neutralization_of_input_during_web_page_generation, 1).
weakness(dom_based_xss,
improper_input_validation, 1).
weakness(dom_based_xss,
improper_neutralization_of_script_in_attributes_in_a_web_page, 1).

% Reflected XSS
attack(reflected_xss).
attributes(reflected_xss, [591, 'high', 'very_high']).
weakness(reflected_xss,
improper_neutralization_of_input_during_web_page_generation, 1).

% Stored XSS
attack(stored_xss).
attributes(stored_xss, [592, 'high', 'very_high']).
weakness(stored_xss,
improper_neutralization_of_input_during_web_page_generation, 1).

% LDAP Injection
attack(ldap_injection).
attributes(ldap_injection, [136, 'high', 'high']).
weakness(ldap_injection,
improper_neutralization_of_special_elements_used_in_a_command, 1).
weakness(ldap_injection,
improper_neutralization_of_special_elements_used_in_an_ldap_query, 1).
weakness(ldap_injection,
improper_input_validation, 1).

%IMAP/SMTP Command Injection
attack(imap_smtp_command_injection).
attributes(imap_smtp_command_injection, [183, 'null', 'medium']).
weakness(imap_smtp_command_injection,
improper_neutralization_of_special_elements_used_in_a_command, 1).

% DTD Injection
attack(dtd_injection).
attributes(dtd_injection, [228, 'null', 'medium']).
weakness(dtd_injection,
inclusion_of_functionality_from_untrusted_control_sphere, 1).

%XPath Injection
attack(xpath_injection).
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
attributes(xquery_injection, [84, 'high', 'very_high']).
weakness(xquery_injection,
improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component, 1).
weakness(xquery_injection,
owasp_top_ten_2007_category_a2_injection_flaws, 1).
weakness(xquery_injection,
improper_neutralization, 1).

%Manipulating Writeable Terminal Devices
attack(manipulating_writeable_terminal_devices).
attributes(manipulating_writeable_terminal_devices, [40, 'high', 'very_high']).
weakness(manipulating_writeable_terminal_devices,
improper_neutralization_of_special_elements_used_in_a_command, 1).

%Command Line Execution through SQL Injection
attack(command_line_execution_through_sql_injection).
attributes(command_line_execution_through_sql_injection, [108, 'low', 'very_high']).
weakness(command_line_execution_through_sql_injection,
improper_neutralization_of_special_elements_used_in_an_sql_command, 1).
weakness(command_line_execution_through_sql_injection,
improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component, 1).
weakness(command_line_execution_through_sql_injection,
improper_input_validation, 1).
weakness(command_line_execution_through_sql_injection,
improper_neutralization_of_special_elements_used_in_an_os_command, 1).
weakness(command_line_execution_through_sql_injection,
process_control, 1).

%Object Relational Mapping Injection
attack(object_relational_mapping_injection).
attributes(object_relational_mapping_injection, [109, 'low', 'high']).
weakness(object_relational_mapping_injection,
improper_input_validation, 1).
weakness(object_relational_mapping_injection,
improper_neutralization_of_special_elements_used_in_an_sql_command, 1).
weakness(object_relational_mapping_injection,
sql_injection_hibernate, 1).

%SQL Injection through SOAP Parameter Tampering
attack(sql_injection_through_soap_parameter_tampering).
attributes(sql_injection_through_soap_parameter_tampering, [110, 'high', 'very_high']).
weakness(sql_injection_through_soap_parameter_tampering,
improper_neutralization_of_special_elements_used_in_an_sql_command, 1).
weakness(sql_injection_through_soap_parameter_tampering,
improper_input_validation, 1).

%Expanding Control over the Operating System from the Database
attack(expanding_control_over_the_operating_system_from_the_database).
attributes(expanding_control_over_the_operating_system_from_the_database, [470, 'null', 'very_high']).
weakness(expanding_control_over_the_operating_system_from_the_database,
execution_with_unnecessary_privileges, 1).
weakness(expanding_control_over_the_operating_system_from_the_database,
improper_neutralization_of_special_elements_used_in_an_sql_command, 1).

%Blind SQL Injection
attack(blind_sql_injection).
attributes(blind_sql_injection, [7, 'high', 'high']).
weakness(blind_sql_injection,
improper_neutralization_of_special_elements_used_in_an_sql_command, 1).
weakness(blind_sql_injection,
generation_of_error_message_containing_sensitive_information, 1).
weakness(blind_sql_injection,
improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component, 1).
weakness(blind_sql_injection,
improper_input_validation, 1).
weakness(blind_sql_injection,
incorrect_comparison, 1).
weakness(blind_sql_injection,
owasp_top_ten_2007_category_a2_injection_flaws, 1).
weakness(blind_sql_injection,
improper_neutralization, 1).


%OS Command Injection
attack(os_command_injection).
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
attributes(install_new_service, [550, 'null', 'null']).
weakness(install_new_service,
improper_access_control, 1).

%Modify Existing Service
attack(modify_existing_service).
attributes(modify_existing_service, [551, 'null', 'null']).
weakness(modify_existing_service,
improper_access_control, 1).
weakness(modify_existing_service,
insufficiently_protected_credentials, 1).

%Install Rootkit
attack(install_rootkit).
attributes(install_rootkit, [552, 'medium', 'high']).
weakness(install_rootkit,
improper_access_control, 1).


%Replace File Extension Handlers
attack(replace_file_extension_handlers).
attributes(replace_file_extension_handlers, [556, 'null', 'null']).
weakness(replace_file_extension_handlers,
improper_access_control, 1).

%Replace Trusted Executable
attack(replace_trusted_executable).
attributes(replace_trusted_executable, [558, 'low', 'high']).
weakness(replace_trusted_executable, 
improper_access_control, 1).

%Run Software at Logon
attack(run_software_at_logon).
attributes(run_software_at_logon, [564, 'null', 'null']).
weakness(run_software_at_logon,
improper_access_control, 1).

%Replace Winlogon Helper DLL
attack(winlogon_helper_dll).
attributes(winlogon_helper_dll, [579, 'null', 'null']).
%No weaknesses --skip

%TCP RST Injection
attack(tcp_rst_injection).
attributes(tcp_rst_injection, [596, 'null', 'null']).
weakness(tcp_rst_injection, 
improper_verification_of_source_of_a_communication_channel, 1).

%Object Injection
attack(object_injection).
attributes(object_injection, [586, 'medium', 'high']).
weakness(object_injection,
deserialization_of_untrusted_data, 1).
