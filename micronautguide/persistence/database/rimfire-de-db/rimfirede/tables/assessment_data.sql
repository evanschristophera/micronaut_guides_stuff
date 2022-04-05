CREATE TABLE rimfirede.assessment_data
(
    assessment_data_id                   uuid         default uuid_generate_v4()
        not null constraint assessment_data_pk primary key,
    parent_assessment_data_id           uuid,
    assessment_id                       uuid,
    media_id                             uuid,
    assessment_to_system_data_label_xref uuid,
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



