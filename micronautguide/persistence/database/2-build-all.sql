\ir ./rimfire-de-db/rimfirede_metadata/tables/data_label_type_context.sql
\ir ./rimfire-de-db/rimfirede_metadata/tables/vt_data_label_types.sql;
\ir ./rimfire-de-db/rimfirede_metadata/tables/vt_data_labels.sql;
\ir ./rimfire-de-db/rimfirede_metadata/tables/xr_system_to_data_labels.sql;

\ir ./rimfire-de-db/rimfirede/tables/systems.sql;
\ir ./rimfire-de-db/rimfirede/tables/hierarchies.sql;
\ir ./rimfire-de-db/rimfirede/tables/parts.sql;
\ir ./rimfire-de-db/rimfirede/tables/assessments.sql;
\ir ./rimfire-de-db/rimfirede/tables/compositions.sql;
-- \ir ./rimfire-de-db/rimfirede/tables/recordings.sql;
\ir ./rimfire-de-db/rimfirede/tables/media.sql;
\ir ./rimfire-de-db/rimfirede/tables/users.sql;
\ir ./rimfire-de-db/rimfirede/tables/vt_recording_types.sql;
\ir ./rimfire-de-db/rimfirede/tables/vt_media_types.sql;
\ir ./rimfire-de-db/rimfirede/tables/xr_system_recordingtype.sql;
\ir ./rimfire-de-db/rimfirede/tables/vt_condition_codes.sql;
\ir ./rimfire-de-db/rimfirede/tables/vt_code_types.sql;
\ir ./rimfire-de-db/rimfirede/tables/vt_all_codes.sql;
\ir ./rimfire-de-db/rimfirede/tables/assessment_data.sql;
\ir ./rimfire-de-db/rimfirede/tables/composition_data.sql;


\ir ./rimfire-de-db/rimfirede/indexes/assessments_assessdt_ix.sql;
\ir ./rimfire-de-db/rimfirede/indexes/assessments_hierarchyid_fk.sql;
\ir ./rimfire-de-db/rimfirede/indexes/assessments_name_uix.sql;
\ir ./rimfire-de-db/rimfirede/indexes/assessments_systemid_fk.sql;
\ir ./rimfire-de-db/rimfirede/indexes/compositions_assessid_fk.sql;
\ir ./rimfire-de-db/rimfirede/indexes/compositions_hierid_fk.sql;
\ir ./rimfire-de-db/rimfirede/indexes/compositions_partid_fk.sql;
\ir ./rimfire-de-db/rimfirede/indexes/compositions_systemid_fk.sql;
\ir ./rimfire-de-db/rimfirede/indexes/hierarchies_hierid_assessind_uix.sql;
\ir ./rimfire-de-db/rimfirede/indexes/hierarchies_hierid_hiername_ix.sql;
\ir ./rimfire-de-db/rimfirede/indexes/hierarchies_parenthierid_ix.sql;
\ir ./rimfire-de-db/rimfirede/indexes/hierarchies_systemid_fk.sql;
\ir ./rimfire-de-db/rimfirede/indexes/hierarchies_systemid_hiername_ix.sql;
\ir ./rimfire-de-db/rimfirede/indexes/media_assessmentid_fk.sql
\ir ./rimfire-de-db/rimfirede/indexes/media_assessmentid_medianame_uix.sql
\ir ./rimfire-de-db/rimfirede/indexes/media_typeid_fk.sql;
\ir ./rimfire-de-db/rimfirede/indexes/parts_hierid_fk.sql;
\ir ./rimfire-de-db/rimfirede/indexes/parts_hierid_partnbr_uix.sql;
\ir ./rimfire-de-db/rimfirede/indexes/pk_user_id.sql;
-- \ir ./rimfire-de-db/rimfirede/indexes/recordings_compositionid_fk.sql;
-- \ir ./rimfire-de-db/rimfirede/indexes/recordings_rectypid_fk.sql;
\ir ./rimfire-de-db/rimfirede/indexes/systems_statind_ix.sql;
\ir ./rimfire-de-db/rimfirede/indexes/vt_media_types_desc_uix.sql;
-- \ir ./rimfire-de-db/rimfirede/indexes/vt_recording_types_desc_uix.sql;
-- \ir ./rimfire-de-db/rimfirede/indexes/xr_system_recording_rtid_fk.sql;
-- \ir ./rimfire-de-db/rimfirede/indexes/xr_system_recording_sysid_fk.sql;



\ir ./rimfire-de-db/rimfirede/constraints/assessments_fk.sql
\ir ./rimfire-de-db/rimfirede/constraints/assessment_data_constraints.sql
\ir ./rimfire-de-db/rimfirede/constraints/compositions_fk.sql
\ir ./rimfire-de-db/rimfirede/constraints/compositions_nonfk.sql
\ir ./rimfire-de-db/rimfirede/constraints/hierarchies_fk.sql
\ir ./rimfire-de-db/rimfirede/constraints/hierarchies_nonfk.sql
\ir ./rimfire-de-db/rimfirede/constraints/media_fk.sql
\ir ./rimfire-de-db/rimfirede/constraints/parts_fk.sql
\ir ./rimfire-de-db/rimfirede/constraints/parts_nonfk.sql
-- \ir ./rimfire-de-db/rimfirede/constraints/recordings_fk.sql
\ir ./rimfire-de-db/rimfirede/constraints/systems_nonfk.sql
\ir ./rimfire-de-db/rimfirede/constraints/users_nonfk.sql
\ir ./rimfire-de-db/rimfirede/constraints/xr_system_recording_types_fk.sql
\ir ./rimfire-de-db/rimfirede_metadata/constraints/system_to_data_labels_constraints.sql
\ir ./rimfire-de-db/rimfirede_metadata/constraints/xr_system_to_data_labels_constraints.sql
\ir ./rimfire-de-db/rimfirede/constraints/composition_data_constraints.sql

\ir ./data_reference/load_base_data.sql;

\ir ./rimfire-de-db/rimfirede_metadata/views/data_labels_by_system.sql

insert into rimfirede_metadata.xr_system_to_data_labels (sys_data_label_id, system_id, data_label_id )  (
    with xr_system_to_data_labels as (
    select uuid_generate_v4() sys_data_label_id, s.system_id, dl.data_label_id
    from rimfirede_metadata.vt_data_labels dl
    cross join rimfirede.systems s
    )
    select *
    from xr_system_to_data_labels
);

commit;