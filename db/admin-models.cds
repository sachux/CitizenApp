namespace app.citizen.admin;

using {Country} from '@sap/cds/common';

type BusinessKey : String(10);
type SDate : DateTime;
type LText : String(1024);


entity Developments {
    key UUID               : UUID;
        REVIEWS            : Composition of many Reviews
                                 on REVIEWS.DEVELOPMENT = $self;
        PARTNER            : BusinessKey;
        LOG_DATE           : SDate;
        COUNTRY            : Country;
        TITLE              : String(100);
        DESC               : LText;
        PROPOSED_COML_DATE : String(100);
        COMPLETION_DATE    : String(100);

};

entity Reviews {

    key DEVELOPMENT : Association to Developments;
    key UUID        : UUID;
        LANGU       : String(2);
        Comment     : LText;

};
