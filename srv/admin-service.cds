using app.citizen.admin as admin from '../db/admin-models';
service CatalogService {

 entity Developments
	as projection on admin.Developments;

 entity Reviews
	as projection on  admin.Reviews;

}
