ALTER TABLE rimfirede.HIERARCHIES ADD
  CONSTRAINT HIERARCHIES_SYSTEMID$FK 
  FOREIGN KEY (SYSTEM_ID) 
  REFERENCES rimfirede.SYSTEMS (SYSTEM_ID)
;
ALTER TABLE rimfirede.HIERARCHIES ADD
  CONSTRAINT HIER_PHIER$FK
  FOREIGN KEY (PARENT_HIERARCHY_ID) 
  REFERENCES rimfirede.HIERARCHIES (HIERARCHY_ID)
  ON DELETE CASCADE
;