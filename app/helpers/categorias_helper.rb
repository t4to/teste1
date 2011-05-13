module CategoriasHelper

	def get_array_current_admin(current_admin)
		admin = Array.new
		return admin  if current_admin == nil

		admin << Admin.find(current_admin.id)
	end
	
	def get_subcateg(categ_id)
		subcateg = Categoria.new
		return subcateg if categ_id == nil
		
		#**************Filtrar por categorias mais baixas na hierarquia
		#subcateg = Array.new
		categ = Categoria.find_all_by_admin_id(current_admin.id)
		#categ.each do |cat|
		#	if categoria_eh_pai?(cat.id) == false
		#		subcateg += cat
		#	end
		#end
	end
	
	def get_categorias_from_current_admin(current_admin)
		categ = Categoria.new
		return categ if current_admin == nil

		categ = Categoria.find_all_by_admin_id(current_admin.id)

		#Categoria.where("admin_id == :admin_id AND subcat_id != nill")
	end
	
	#Verificar se categoria de parâmetro é pai de outra categoria
	def categoria_eh_pai?(categ_id)
		if Categoria.find_all_by_subcat_id(categ_id).empty?
			false	#Não é pai
		else
			true	#É pai
		end
	end
end
