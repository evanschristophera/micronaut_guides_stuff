alter table rimfirede_metadata.xr_system_to_data_labels
    add constraint xr_data_labels_to_systems_fk foreign key (system_id) references rimfirede.systems;

alter table rimfirede_metadata.xr_system_to_data_labels
    add constraint xr_data_labels_to_data_labels_fk foreign key (data_label_id) references rimfirede_metadata.vt_data_labels;
