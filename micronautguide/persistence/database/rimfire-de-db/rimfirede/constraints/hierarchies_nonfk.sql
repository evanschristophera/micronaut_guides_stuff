ALTER TABLE rimfirede.HIERARCHIES ADD
  CONSTRAINT HIERARCHIES_ROWSTATIND$CK
  CHECK (ROW_STATUS_IND IN ('A', 'I', 'D'))
;
ALTER TABLE rimfirede.HIERARCHIES ADD
  CONSTRAINT HIER_ASSESSABLE_IND$CK
  CHECK (ASSESSABLE_IND IN('N','Y'))
;
ALTER TABLE rimfirede.HIERARCHIES ADD
    CONSTRAINT HIER_INSP_RECORDING_IND$CK
  CHECK (INSPECTION_RECORDING_IND IN('N','Y'))
;
ALTER TABLE rimfirede.HIERARCHIES ADD
    CONSTRAINT HIER_INSP_MANDATORY_IND$CK
  CHECK (INSPECTION_REQUIRED_IND IN('N','Y'))
;
ALTER TABLE rimfirede.HIERARCHIES ADD
    CONSTRAINT HIER_PHYSICAL_ITEM_IND$CK
  CHECK (PHYSICAL_ITEM_IND IN('N','Y'))
;