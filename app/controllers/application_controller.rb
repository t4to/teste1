class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def get_categorias_from_current_admin(current_admin)
	categ = Categoria.new
	return categ if current_admin == nil
	
	categ = Categoria.find_all_by_admin_id(current_admin.id)
	#Categoria.where("admin_id == :admin_id AND subcat_id != nil")
  end
  
  def get_perfis_from_current_admin(current_admin) 
	perf = Perfil.new
	return perf if current_admin == nil
	
	categ = Categoria.find_all_by_admin_id(current_admin)
	categ.each do |cat|
		if !categoria_eh_pai?(cat.id)
			perf += Perfil.find_by_cat_id(cat.id)
		end
	end
  end

  #Verificar se categoria de parâmetro é pai de outra categoria
  def categoria_eh_pai?(categ_id)
	if Categoria.find_all_by_subcat_id(categ_id) != nil
		true	#É pai
	else
		false	#Não é pai
	end
  end
end
