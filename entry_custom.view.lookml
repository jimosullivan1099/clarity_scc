- view: entry_custom
  sql_table_name: |
    client_program_data
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: ref_client_program_demographics
    type: int
    sql: ${TABLE}.ref_client_program_demographics

  - dimension: c_sccvi_primary_language
    label: "Primary Language"
    type: string
    sql:  fn_getPicklistValueName('c_sccvi_primary_language',COLUMN_GET(${TABLE}.custom_data,'c_sccvi_primary_language' AS INTEGER))

  - dimension: c_sccvi_years_homeless
    label: "How many total years have you been homeless?"
    type: string
    sql:  fn_getPicklistValueName('c_sccvi_years_homeless',COLUMN_GET(${TABLE}.custom_data,'c_sccvi_years_homeless' AS INTEGER))

  - dimension: c_zipcode
    label: "Zip Code of Last Address"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_zipcode' AS CHAR(255))

  - dimension: c_p_4_2
    label: "No meaningful family time together "
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_p_4_2' AS INTEGER)

  - dimension: c_uplift_receiving_case_management
    label: "UPLIFT Client receiving case management (OLD)"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_uplift_receiving_case_management' AS INTEGER)

  - dimension: c_uplift_homeless_lack_transportation
    label: "UPLIFT Client homeless due to lack of transportation (OLD)"
    type: string
    sql:  fn_getPicklistValueName('c_uplift_homeless_lack_transportation',COLUMN_GET(${TABLE}.custom_data,'c_uplift_homeless_lack_transportation' AS CHAR(255)))

  - dimension: c_uplift_transit_pass_type
    label: "UPLIFT Transit Pass Type"
    type: string
    sql:  fn_getPicklistValueName('c_uplift_transit_pass_type',COLUMN_GET(${TABLE}.custom_data,'c_uplift_transit_pass_type' AS CHAR(255)))

  - dimension: c_uplift_period_valid
    label: "UPLIFT What quarter is the pass for?"
    type: string
    sql:  fn_getPicklistValueName('c_uplift_period_valid',COLUMN_GET(${TABLE}.custom_data,'c_uplift_period_valid' AS CHAR(255)))

  - dimension: c_uplift_receiving_case_management_v2
    label: "UPLIFT Client receiving case management"
    type: string
    sql:  fn_getPicklistValueName('c_uplift_receiving_case_management_v2',COLUMN_GET(${TABLE}.custom_data,'c_uplift_receiving_case_management_v2' AS CHAR(255)))

  - dimension: c_uplift_homeless_lack_transportation_v2
    label: "UPLIFT Client homeless due to lack of transportation"
    type: string
    sql:  fn_getPicklistValueName('c_uplift_homeless_lack_transportation_v2',COLUMN_GET(${TABLE}.custom_data,'c_uplift_homeless_lack_transportation_v2' AS CHAR(255)))

  - dimension: c_VHHP_Hospitals
    label: "[VHHP] Hospitals"
    type: string
    sql:  fn_getPicklistValueName('c_VHHP_Hospitals',COLUMN_GET(${TABLE}.custom_data,'c_VHHP_Hospitals' AS CHAR(255)))

  - dimension: c_medical_respite_status
    label: "[VHHP] Medical Respite Status"
    type: string
    sql:  fn_getPicklistValueName('c_medical_respite_status',COLUMN_GET(${TABLE}.custom_data,'c_medical_respite_status' AS CHAR(255)))

  - dimension: c_hospital_admission_Diagnosis
    label: "[VHHP] Hospital Admission Diagnosis"
    type: string
    sql:  fn_getPicklistValueName('c_hospital_admission_Diagnosis',COLUMN_GET(${TABLE}.custom_data,'c_hospital_admission_Diagnosis' AS CHAR(255)))

  - dimension: c_respite_discharge_status
    label: "[VHHP] VHHP Respite Discharge Status"
    type: string
    sql:  fn_getPicklistValueName('c_respite_discharge_status',COLUMN_GET(${TABLE}.custom_data,'c_respite_discharge_status' AS CHAR(255)))

  - dimension: c_VHHP_hospital_type
    label: "[VHHP] Hospital Type"
    type: string
    sql:  fn_getPicklistValueName('c_VHHP_hospital_type',COLUMN_GET(${TABLE}.custom_data,'c_VHHP_hospital_type' AS CHAR(255)))

  - dimension: c_VHHP_healthcare_utilization
    label: "[VHHP] Healthcare Utilization"
    type: string
    sql:  fn_getPicklistValueName('c_VHHP_healthcare_utilization',COLUMN_GET(${TABLE}.custom_data,'c_VHHP_healthcare_utilization' AS CHAR(255)))

  - dimension: c_rrh_transition_in_place
    label: "Did the client stay in the same rental unit at exit (transition in place)?"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_rrh_transition_in_place' AS INTEGER)

  - dimension: c_VHHP_seen_by_psychologist
    label: "[VHHP] Seen by VHHP Psychologist?"
    type: string
    sql:  fn_getPicklistValueName('c_VHHP_seen_by_psychologist',COLUMN_GET(${TABLE}.custom_data,'c_VHHP_seen_by_psychologist' AS CHAR(255)))

  - dimension: c_VHHP_seen_by_psychiatrist
    label: "[VHHP] Seen by VHHP Psychiatrist?"
    type: string
    sql:  fn_getPicklistValueName('c_VHHP_seen_by_psychiatrist',COLUMN_GET(${TABLE}.custom_data,'c_VHHP_seen_by_psychiatrist' AS CHAR(255)))

  - dimension: c_VHHP_seen_by_DADSCounselor
    label: "[VHHP] Seen by DADS Counselor?"
    type: string
    sql:  fn_getPicklistValueName('c_VHHP_seen_by_DADSCounselor',COLUMN_GET(${TABLE}.custom_data,'c_VHHP_seen_by_DADSCounselor' AS CHAR(255)))

  - dimension: c_HomeFirst_primary_language
    label: "Primary Language?"
    type: string
    sql:  fn_getPicklistValueName('c_HomeFirst_primary_language',COLUMN_GET(${TABLE}.custom_data,'c_HomeFirst_primary_language' AS CHAR(255)))



  sets:
      entry_custom_fields:
      - c_sccvi_primary_language       
      - c_sccvi_years_homeless       
      - c_zipcode       
      - c_p_4_2       
      - c_uplift_receiving_case_management       
      - c_uplift_homeless_lack_transportation       
      - c_uplift_transit_pass_type       
      - c_uplift_period_valid       
      - c_uplift_receiving_case_management_v2       
      - c_uplift_homeless_lack_transportation_v2       
      - c_VHHP_Hospitals       
      - c_medical_respite_status       
      - c_hospital_admission_Diagnosis       
      - c_respite_discharge_status       
      - c_VHHP_hospital_type       
      - c_VHHP_healthcare_utilization       
      - c_rrh_transition_in_place       
      - c_VHHP_seen_by_psychologist       
      - c_VHHP_seen_by_psychiatrist       
      - c_VHHP_seen_by_DADSCounselor       
      - c_HomeFirst_primary_language       