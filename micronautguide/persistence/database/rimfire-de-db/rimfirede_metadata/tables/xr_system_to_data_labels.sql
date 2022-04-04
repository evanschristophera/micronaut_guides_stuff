create table rimfirede_metadata.xr_system_to_data_labels
(
    sys_data_label_id    uuid not null  default uuid_generate_v4() constraint xr_system_to_data_labels_pk primary key,
    system_id uuid not null ,
    data_label_id uuid not null ,
    display_order int not null default 9999,
    trans_create_dtm           timestamp(6) default CURRENT_TIMESTAMP  ,
    trans_create_userid        varchar(30) ,
    trans_db_dtm               timestamp(6) default CURRENT_TIMESTAMP  ,
    trans_db_userid            varchar(30)
);