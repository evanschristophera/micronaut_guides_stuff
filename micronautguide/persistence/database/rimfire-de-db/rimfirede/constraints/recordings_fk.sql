ALTER TABLE rimfirede.RECORDINGS ADD
    CONSTRAINT RECORDINGS_COMPOSITIONID$FK
        FOREIGN KEY (COMPOSITION_ID)
            REFERENCES rimfirede.COMPOSITIONS (COMPOSITION_ID)
                ON DELETE CASCADE
;
ALTER TABLE rimfirede.RECORDINGS ADD
    CONSTRAINT RECORDINGS_RECTYPEID$FK
        FOREIGN KEY (RECORDING_TYPE_ID)
            REFERENCES rimfirede.VT_RECORDING_TYPES (RECORDING_TYPE_ID)

;