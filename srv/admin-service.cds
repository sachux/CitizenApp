using app.citizen.admin as admin from '../db/admin-models';
service CatalogService {

 entity Projects
	as projection on admin.Projects;

 entity Reviews
	as projection on  admin.Reviews;

}
