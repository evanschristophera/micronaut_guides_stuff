alter table composition_data add constraint parent_composition_data_fk foreign key
    ( parent_composition_data_id ) references rimfirede.composition_data;

alter table composition_data add constraint composition_id_fk foreign key
   (    composition_id ) references rimfirede.compositions;

alter table composition_data add constraint media_id_fk foreign key
    (    media_id ) references rimfirede.media;

alter table composition_data add constraint c_d_to_data_label_xref foreign key
    (    composition_data_to_system_data_label_xref ) references rimfirede_metadata.xr_system_to_data_labels;
