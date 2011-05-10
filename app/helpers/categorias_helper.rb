module CategoriasHelper

	def get_current_admin(current_admin)
		admin = Array.new
		return admin  if current_admin == nil

		admin << Admin.find(current_admin.id)
	end
	
	#Filtrar por current_admin
	def get_subcateg(categ_id)
		subcateg = Categoria.new
		return subcateg if categ_id == nil
		
		subcateg = Categoria.where("id != :id", {:id => categ_id})
	end
end
