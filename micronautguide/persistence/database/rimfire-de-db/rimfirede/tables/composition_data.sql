CREATE TABLE rimfirede.COMPOSITION_DATA
(
    composition_data_id                   uuid   default uuid_generate_v4()     not null
        constraint COMPOSITION_DATA_pk
            primary key,
    parent_composition_data_id           uuid,
    composition_id                       uuid                                        not null,
    media_id                             uuid,
    composition_data_to_system_data_label_xref uuid                                        not null,
--         constraint compostion_to_system_data_label_xref$fk
--             references rimfirede_metadata.xr_system_to_data_labels,
    rec_value_num                        numeric,
    text_value                           text,
    row_status_ind                       varchar(2)   default 'A'::character varying not null
        constraint recordings_row_status_ind_check
            check ((row_status_ind)::text = ANY
                   (ARRAY [('A'::character varying)::text, ('I'::character varying)::text])),
    trans_create_by_uid                  numeric,
    trans_create_dtm                     timestamp(6) default CURRENT_TIMESTAMP      not null,
    trans_by_uid                         numeric,
    trans_db_dtm                         timestamp(6) default CURRENT_TIMESTAMP      not null,
    trans_db_userid                      varchar(30)  default USER                   not null,
    trans_create_userid                  varchar(30)  default USER                   not null,
    trans_by_rfuser                      varchar(512),
    trans_create_by_rfuser               varchar(512)
);



