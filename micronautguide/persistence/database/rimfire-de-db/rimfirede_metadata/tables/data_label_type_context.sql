create table rimfirede_metadata.data_label_type_context
(
    context_id                  uuid         default uuid_generate_v4()     not null
        constraint data_label_type_context_pk
            primary key,
    context_description text check ( upper( context_description ) = context_description )
);

