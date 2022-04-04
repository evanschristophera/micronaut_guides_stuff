--SET DEFINE OFF;

-- INSERT INTO rimfirede.SYSTEMS (SYSTEM_NAME, DISPLAY_TXT, CLASS_CD, PROJECT_ID)
-- VALUES ( '700', '700 Display', '700 CLASS_CD', 1 );
--
-- --select * from rimfirede.systems where system_name = '700';
--
-- INSERT INTO rimfirede.HIERARCHIES (
--   HIERARCHY_NAME, SYSTEM_ID, PARENT_HIERARCHY_ID, ASSESSABLE_IND, INSPECTION_REQUIRED_IND)
-- VALUES (
-- 'Engine' /* HIERARCHY_NAME */,
-- (select system_id from rimfirede.systems where system_name = '700')/* SYSTEM_ID */,
-- null /* PARENT_HIERARCHY_ID */,
-- 'Y' /* ASSESSABLE_IND */,
-- 'Y' /* INSPECTION_REQUIRED_IND */
-- );
-- INSERT INTO rimfirede.HIERARCHIES (
--   HIERARCHY_NAME, SYSTEM_ID, PARENT_HIERARCHY_ID, ASSESSABLE_IND)
-- VALUES (
-- 'Engine subpart 1' /* HIERARCHY_NAME */,
-- (select system_id from rimfirede.systems where system_name = '700')/* SYSTEM_ID */,
-- (select hierarchy_id from rimfirede.hierarchies where hierarchy_name = 'Engine' and parent_hierarchy_id is null)   /* PARENT_HIERARCHY_ID */,
-- 'Y' /* ASSESSABLE_IND */
-- );
--
-- INSERT INTO rimfirede.HIERARCHIES (
--   HIERARCHY_NAME, SYSTEM_ID, PARENT_HIERARCHY_ID, ASSESSABLE_IND)
-- VALUES (
-- 'Engine subpart 3' /* HIERARCHY_NAME */,
-- (select system_id from rimfirede.systems where system_name = '700')/* SYSTEM_ID */,
-- (select hierarchy_id from rimfirede.hierarchies where hierarchy_name = 'Engine subpart 1')   /* PARENT_HIERARCHY_ID */,
-- 'Y' /* ASSESSABLE_IND */
-- );
--
-- INSERT INTO rimfirede.HIERARCHIES (
--   HIERARCHY_NAME, SYSTEM_ID, PARENT_HIERARCHY_ID, ASSESSABLE_IND)
-- VALUES (
-- 'Engine subpart 2' /* HIERARCHY_NAME */,
-- (select system_id from rimfirede.systems where system_name = '700')/* SYSTEM_ID */,
-- (select hierarchy_id from rimfirede.hierarchies where hierarchy_name = 'Engine' and parent_hierarchy_id is null) /* PARENT_HIERARCHY_ID */,
-- 'N' /* ASSESSABLE_IND */
-- );
-- INSERT INTO rimfirede.HIERARCHIES (
--   HIERARCHY_NAME, SYSTEM_ID, PARENT_HIERARCHY_ID, ASSESSABLE_IND)
-- VALUES (
-- 'Engine 2' /* HIERARCHY_NAME */,
-- (select system_id from rimfirede.systems where system_name = '700')/* SYSTEM_ID */,
-- null /* PARENT_HIERARCHY_ID */,
-- 'Y' /* ASSESSABLE_IND */
-- );
-- INSERT INTO rimfirede.HIERARCHIES (
--   HIERARCHY_NAME, SYSTEM_ID, PARENT_HIERARCHY_ID, ASSESSABLE_IND)
-- VALUES (
-- 'Engine subpart 5' /* HIERARCHY_NAME */,
-- (select system_id from rimfirede.systems where system_name = '700')/* SYSTEM_ID */,
-- (select hierarchy_id from rimfirede.hierarchies where hierarchy_name = 'Engine 2' and parent_hierarchy_id is null) /* PARENT_HIERARCHY_ID */,
-- 'Y' /* ASSESSABLE_IND */
-- );
--
-- INSERT INTO rimfirede.PARTS (
--   HIERARCHY_ID, PART_NBR)
-- VALUES (
-- (select hierarchy_id from rimfirede.hierarchies where hierarchy_name = 'Engine')/* HIERARCHY_ID */,
-- 'Part a' /* PART_NBR */
--  );
-- INSERT INTO rimfirede.PARTS (
--   HIERARCHY_ID, PART_NBR)
-- VALUES (
-- (select hierarchy_id from rimfirede.hierarchies where hierarchy_name = 'Engine' and parent_hierarchy_id is null)/* HIERARCHY_ID */,
-- 'Part b' /* PART_NBR */
--  );
--  INSERT INTO rimfirede.PARTS (
--   HIERARCHY_ID, PART_NBR)
-- VALUES (
-- (select hierarchy_id from rimfirede.hierarchies where hierarchy_name = 'Engine subpart 1')/* HIERARCHY_ID */,
-- 'Part 1' /* PART_NBR */
--  );
--  INSERT INTO rimfirede.PARTS (
--   HIERARCHY_ID, PART_NBR)
-- VALUES (
-- (select hierarchy_id from rimfirede.hierarchies where hierarchy_name = 'Engine 2' and parent_hierarchy_id is null)/* HIERARCHY_ID */,
-- 'Part b' /* PART_NBR */
--  );

insert into rimfirede.vt_recording_types (recording_type_code, recording_type_desc) values ('timeSinceLastInstalled', 'Time Since Last Installed (TSLI)');
insert into rimfirede.vt_recording_types (recording_type_code, recording_type_desc) values ('timeSinceNew', 'Time Since New (TSN)');
insert into rimfirede.vt_recording_types (recording_type_code, recording_type_desc) values ('lcf1', 'LCF1');
insert into rimfirede.vt_recording_types (recording_type_code, recording_type_desc) values ('lcf2', 'LCF2');
insert into rimfirede.vt_recording_types (recording_type_code, recording_type_desc) values ('timeToInstall', 'Time To Install (TTI)');

insert into rimfirede.vt_media_types (media_type_code, media_type_desc, display_order_num) values ('JPEG', 'image/jpeg', 1);
insert into rimfirede.vt_media_types (media_type_code, media_type_desc, display_order_num) values ('PNG', 'image/png', 1);
insert into rimfirede.vt_media_types (media_type_code, media_type_desc, display_order_num) values ('PDF', 'application/pdf', 1);
insert into rimfirede.vt_media_types (media_type_code, media_type_desc, display_order_num) values ('WEBM', 'video/webm', 1);
--insert into vt_media_types (media_type_code, media_type_desc, display_order_num) values ('DOC', 'Microsoft Word Document', 1);
--insert into vt_media_types (media_type_code, media_type_desc, display_order_num) values ('PPT', 'Microsoft Power Point', 1);
--insert into vt_media_types (media_type_code, media_type_desc, display_order_num) values ('XLS', 'Microsoft Excel', 1);

COMMIT;

SET session_replication_role = 'replica';

\copy rimfirede.users  (user_id,username,last_name,first_name,organization_id,email_addr,phone_nbr,phone_ext,type_ind,psw_salt,psw_hash,psw_new_dtm,last_login_dtm,psw_change_ind,trans_create_dtm,status_ind,login_failure_cnt,login_failure_dtm,division_id,iaa_dt,pki_expire_dt,approved_by_name,car_name,car_phone_nbr,inspector_sw,trans_create_userid,inspector_activation_dtm,trans_db_dtm,trans_db_userid,trans_create_by_rfuser,trans_by_rfuser ) from '/docker-entrypoint-initdb.d/data_reference/users.csv' delimiter ',' CSV HEADER
\copy rimfirede.systems  (system_id,system_name,display_txt,status_ind,filter_txt,seqnbr_prefix,class_cd,default_ind,display_order_num,project_id,project_system_role_suffix ) from '/docker-entrypoint-initdb.d/data_reference/systems_uuid_query.csv' delimiter ',' CSV HEADER
\copy rimfirede.hierarchies  ( HIERARCHY_ID, HIERARCHY_NAME, SYSTEM_ID, PARENT_HIERARCHY_ID ,ASSESSABLE_IND ,INSPECTION_REQUIRED_IND ,PHOTOS_REQUIRED_IND ,ROW_STATUS_IND, PHYSICAL_ITEM_IND, INSPECTION_RECORDING_IND  ) from '/docker-entrypoint-initdb.d/data_reference/hierarchy_uuid_query.csv' delimiter ',' CSV HEADER
\copy rimfirede.parts ( part_id, hierarchy_id, part_nbr, row_status_ind  ) from '/docker-entrypoint-initdb.d/data_reference/hierarchy_part_number_uuid.csv' delimiter ',' CSV HEADER
\copy rimfirede.vt_condition_codes ( condition_code_id, condition_code_txt, detail_code_txt, row_status_ind  ) from '/docker-entrypoint-initdb.d/data_reference/conditions_codes_uuid_query.csv' delimiter ',' CSV HEADER

\copy rimfirede.vt_code_types ( code_type_id, code_type_text, code_type_description  ) from '/docker-entrypoint-initdb.d/data_reference/code_types_uuid_query.csv' delimiter ',' CSV HEADER
\copy rimfirede.vt_all_codes ( CODE_TYPE_ID,code_id,CODE_TXT,DETAIL_CODE_TXT,DISPLAY_ORDER_NUM,OVERRIDE_CODE_TXT,ROW_STATUS_IND ) from '/docker-entrypoint-initdb.d/data_reference/big_codes_file.csv' delimiter ',' CSV HEADER


\copy rimfirede_metadata.vt_data_label_types ( data_label_type_id, data_label_type_name ) from '/docker-entrypoint-initdb.d/data_reference/data_label_types.csv' delimiter ',' CSV HEADER
\copy rimfirede_metadata.vt_data_labels ( data_label_id, data_label_type_id, data_label_txt, detail_label_text, overried_label_text, unit_of_measure_ind, uom_short_txt, uom_long_txt, format_txt) from '/docker-entrypoint-initdb.d/data_reference/data_labels.csv' delimiter ',' CSV HEADER

\copy rimfirede.assessments ( ASSESSMENT_ID,SYSTEM_ID,ASSESSMENT_HIERARCHY_ID,ASSESSMENT_NAME,ASSESSMENT_DT,BOARD_STATE_IND ) from '/docker-entrypoint-initdb.d/data_reference/inductions_to_assessments.csv' delimiter ',' CSV HEADER

SET session_replication_role = 'origin';