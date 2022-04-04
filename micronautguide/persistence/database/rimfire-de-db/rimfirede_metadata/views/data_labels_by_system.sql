
create
or replace view rimfirede_metadata.system_data_labels
            (system_data_labels_id, system_id, system_name, data_label_type_id, data_label_type_name, data_label_id, data_label_txt,
             display_order_num) as
WITH query AS (
    SELECT xstdl.sys_data_label_id,
           s.system_id,
           s.display_txt AS system_name,
           dlt.data_label_type_id,
           dlt.data_label_type_name,
           dl.data_label_id,
           dl.data_label_txt,
           xstdl.display_order
    FROM rimfirede_metadata.xr_system_to_data_labels xstdl
             JOIN rimfirede.systems s ON xstdl.system_id = s.system_id
             JOIN rimfirede_metadata.vt_data_labels dl ON xstdl.data_label_id = dl.data_label_id
             JOIN rimfirede_metadata.vt_data_label_types dlt ON dl.data_label_type_id = dlt.data_label_type_id
)
SELECT query.sys_data_label_id system_data_labels_id,
       query.system_id,
       query.system_name,
       query.data_label_type_id,
       query.data_label_type_name,
       query.data_label_id,
       query.data_label_txt,
       query.display_order AS display_order_by
FROM query
ORDER BY query.system_id, query.data_label_type_name, display_order, query.data_label_txt;

