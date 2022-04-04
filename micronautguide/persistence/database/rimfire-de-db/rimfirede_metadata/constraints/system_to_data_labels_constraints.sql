alter table rimfirede_metadata.xr_system_to_data_labels add constraint
    fk_system_to_data_labels_to_systems foreign key (system_id ) references rimfirede.systems;

alter table rimfirede_metadata.xr_system_to_data_labels add constraint
    fk_system_to_data_labels_to_data_labels foreign key ( data_label_id ) references rimfirede_metadata.vt_data_labels;

