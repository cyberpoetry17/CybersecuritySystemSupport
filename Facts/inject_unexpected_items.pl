%(attack, weakness, percentage).

%Using Meta-characters in E-mail Headers to Inject Malicious Payloads - (41).
weakness(using_meta_characters_in_email_headers_to_inject_malicious_payloads, 
improper_neutralization_of_escape_meta_or_control_sequences, 1).
weakness(using_meta_characters_in_email_headers_to_inject_malicious_payloads, 
improper_neutralization_of_argument_delimiters_in_a_command, 1).
weakness(using_meta_characters_in_email_headers_to_inject_malicious_payloads, 
incorrect_comparison, 1).
weakness(using_meta_characters_in_email_headers_to_inject_malicious_payloads, 
owasp_top_ten_2007_category_a2_injection_flaws, 1).


%Format string injection
weakness(format_string_injection,
use_of_externally_controlled_format_string, 1).
weakness(format_string_injection,
improper_input_validation, 1).
weakness(format_string_injection,
improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component, 1).
weakness(format_string_injection,
string_errors, 1).


%Reflection Injection
%No weaknesses --skip

%HTTP Parameter Pollution (HPP).
weakness(http_parameter_pollution_hpp, 
improper_neutralization_of_argument_delimiters_in_a_command, 1).
weakness(http_parameter_pollution_hpp, 
improper_neutralization_of_input_terminators, 1).
weakness(http_parameter_pollution_hpp, 
improper_handling_of_extra_parameters, 1).

%Flash Parameter Injection
weakness(flash_parameter_injection,
improper_neutralization_of_argument_delimiters_in_a_command, 1).

%Cross-Site Flashing
%No weaknesses --skip

%Argument Injection
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


%PHP Local File Inclusion
weakness(php_local_file_inclusion, 
inclusion_of_functionality_from_untrusted_control_sphere, 1).

%Inclusion of Code in Existing Process
%No weaknesses --skip

%Root Jailbreak Detection Evasion via Hooking
weakness(root_jailbreak_detection_evasion_via_hooking, 
inclusion_of_functionality_from_untrusted_control_sphere, 1).

%Server Side Include (SSI). Injection
weakness(server_side_include_ssi_injection,
improper_neutralization_of_server_side_includes_ssi_within_a_web_page, 1).
weakness(server_side_include_ssi_injection,
improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component, 1).
weakness(server_side_include_ssi_injection,
improper_input_validation, 1).
weakness(server_side_include_ssi_injection,
owasp_top_ten_2007_category_a2_injection_flaws, 1).

%PHP Remote File Inclusion
weakness(php_remote_file_inclusion,
improper_control_of_filename_for_include_require_statement_in_php_program, 1).
weakness(php_remote_file_inclusion,
improper_neutralization_of_script_related_html_tags_in_a_web_page, 1).
weakness(php_remote_file_inclusion,
owasp_top_ten_2007_category_a3_malicious_file_execution, 1).

%WebView Injection
%No weaknesses --skip

%Cellular Data Injection
%No weaknesses --skip

%Embedding Scripts within Scripts
weakness(embedding_scripts_within_scripts,
improper_access_control, 1).

%Overflow Binary Resource File
weakness(overflow_binary_resource_file,
buffer_copy_without_checking_size_of_input, 1).
weakness(overflow_binary_resource_file,
improper_restriction_of_operations_within_the_bounds_of_a_memory_buffer, 1).
weakness(overflow_binary_resource_file,
incorrect_comparison, 1).
weakness(overflow_binary_resource_file,
owasp_top_ten_2007_category_a2_injection_flaws, 1).

%Using Meta-characters in E-mail Headers to Inject Malicious Payloads
weakness(using_meta_characters_in_e_mail_headers_to_inject_malicious_payloads,
improper_neutralization_of_escape_meta_or_control_sequences, 1).
weakness(using_meta_characters_in_e_mail_headers_to_inject_malicious_payloads,
improper_neutralization_of_argument_delimiters_in_a_command, 1).
weakness(using_meta_characters_in_e_mail_headers_to_inject_malicious_payloads,
incorrect_comparison, 1).
weakness(using_meta_characters_in_e_mail_headers_to_inject_malicious_payloads,
owasp_top_ten_2007_category_a2_injection_flaws, 1).

%Generic Cross-Browser Cross-Domain Theft
weakness(generic_cross_browser_cross_domain_theft,
improper_neutralization, 1).
weakness(generic_cross_browser_cross_domain_theft,
improper_neutralization_of_quoting_syntax, 1).
weakness(generic_cross_browser_cross_domain_theft,
improper_handling_of_url_encoding, 1).
weakness(generic_cross_browser_cross_domain_theft,
inappropriate_encoding_for_output_context, 1).

%DOM-Based XSS
weakness(dom_based_xss,
improper_neutralization_of_input_during_web_page_generation, 1).
weakness(dom_based_xss,
improper_input_validation, 1).
weakness(dom_based_xss,
improper_neutralization_of_script_in_attributes_in_a_web_page, 1).

%Reflected XSS
weakness(reflected_xss,
improper_neutralization_of_input_during_web_page_generation, 1).

%Stored XSS
weakness(stored_xss,
improper_neutralization_of_input_during_web_page_generation, 1).

%LDAP Injection
weakness(ldap_injection,
improper_neutralization_of_special_elements_used_in_a_command, 1).
weakness(ldap_injection,
improper_neutralization_of_special_elements_used_in_an_ldap_query, 1).
weakness(ldap_injection,
improper_input_validation, 1).

%IMAP/SMTP Command Injection
weakness(imap_smtp_command_injection,
improper_neutralization_of_special_elements_used_in_a_command, 1).

%DTD Injection
weakness(dtd_injection,
inclusion_of_functionality_from_untrusted_control_sphere, 1).

%XPath Injection
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
weakness(xquery_injection,
improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component, 1).
weakness(xquery_injection,
owasp_top_ten_2007_category_a2_injection_flaws, 1).
weakness(xquery_injection,
improper_neutralization, 1).

%Manipulating Writeable Terminal Devices
weakness(manipulating_writeable_terminal_devices,
improper_neutralization_of_special_elements_used_in_a_command, 1).

%Command Line Execution through SQL Injection
weakness(command_line_execution_through_sql_injection,
improper_neutralization_of_special_elements_used_in_an_sql_command, 1).
weakness(command_line_execution_through_sql_injection,
improper_neutralization_of_special_elements_in_output_used_by_a_downstream_component, 1).
weakness(command_line_execution_through_sql_injection,
improper_input_validation, 1).
weakness(command_line_execution_through_sql_injection,
improper_neutralization_of_special_elements_used_in_an_os_command, 1).
weakness(command_line_execution_through_sql_injection,
process_control, 1).;

%Object Relational Mapping Injection
weakness(object_relational_mapping_injection,
improper_input_validation, 1).
weakness(object_relational_mapping_injection,
improper_neutralization_of_special_elements_used_in_an_sql_command, 1).
weakness(object_relational_mapping_injection,
sql_injection_hibernate, 1).

%SQL Injection through SOAP Parameter Tampering
weakness(sql_injection_through_soap_parameter_tampering,
improper_neutralization_of_special_elements_used_in_an_sql_command, 1).
weakness(sql_injection_through_soap_parameter_tampering,
improper_input_validation, 1).

%Expanding Control over the Operating System from the Database
weakness(expanding_control_over_the_operating_system_from_the_database,
execution_with_unnecessary_privileges, 1).
weakness(expanding_control_over_the_operating_system_from_the_database,
improper_neutralization_of_special_elements_used_in_an_sql_command, 1).

%Blind SQL Injection
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
weakness(install_new_service,
improper_access_control, 1).

%Modify Existing Service
weakness(modify_existing_service,
improper_access_control, 1).
weakness(modify_existing_service,
insufficiently_protected_credentials, 1).

%Install Rootkit
weakness(install_rootkit,
improper_access_control, 1).


%Replace File Extension Handlers
weakness(replace_file_extension_handlers,
improper_access_control, 1).

%Replace Trusted Executable
weakness(replace_trusted_executable, 
improper_access_control, 1).

%Run Software at Logon
weakness(run_software_at_logon,
improper_access_control, 1).

%Replace Winlogon Helper DLL
%No weaknesses --skip

%Mobile Device Fault Injection
%No weaknesses --skip

%TCP RST Injection
weakness(tcp_rst_injection, 
improper_verification_of_source_of_a_communication_channel, 1).

%Object Injection
weakness(object_injection,
deserialization_of_untrusted_data, 1).