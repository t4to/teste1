module PerfisHelper

	def get_perfis_from_current_admin(current_admin)
		categs = get_categorias_from_current_admin(current_admin)
		#...
		perf = Perfil.new
		return perf if current_admin == nil

		categs.each do |ct|
			perf << Perfil.find_by_categoria_id(ct.id)
		end
		
		#Esta retornando array?
		return perf
	end
end
