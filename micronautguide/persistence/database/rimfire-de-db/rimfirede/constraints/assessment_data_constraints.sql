

alter table rimfirede.assessment_data
add constraint fk_assessment_data_to_assessment foreign key (assessment_id)
references rimfirede.assessments;

alter table rimfirede.assessment_data
add constraint fk_assessment_data_to_parent_assessment_data foreign key (parent_assessment_data_id)
references rimfirede.assessment_data;

alter table rimfirede.assessment_data
add constraint fk_assessment_data_to_xr_system_to_data_labels
    foreign key (assessment_to_system_data_label_xref )
references rimfirede_metadata.xr_system_to_data_labels;

alter table rimfirede.assessment_data
add constraint fk_assessment_data_to_media foreign key (media_id)
references rimfirede.media;