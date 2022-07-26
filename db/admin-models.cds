namespace app.citizen.admin;

using {Country} from '@sap/cds/common';

type BusinessKey : String(10);
type SDate : DateTime;
type LText : String(1024);


entity Projects {
    key UUID               : UUID;
        REVIEWS            : Composition of many Reviews
                                 on REVIEWS.PROJECT = $self;
        PROJECT_AUTHORITY            : BusinessKey;
        LOG_DATE           : SDate;
        COUNTRY            : Country;
        TITLE              : String(100);
        DESC               : LText;
        TYPE: String(100);
        COST: Double;
        SECTOR: String(30);
        STATUS: String(30);
        LOCATION: String(50);
        PROPOSED_COML_DATE : String(100);
        COMPLETION_DATE    : String(100);

};

entity Reviews {

    key UUID        : UUID;
     PROJECT : Association to Projects;

        LANGU       : String(2);
        Comment     : LText;

};
