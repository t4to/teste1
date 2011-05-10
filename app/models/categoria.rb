class Categoria < ActiveRecord::Base
	belongs_to :admin, :foreign_key => 'admin_id'
	#belongs_to :categoria, :foreign_key => 'categoria_id', :class_name => 'Categoria'
	has_many :categorias, :foreign_key => 'subcat_id', :class_name => 'Categoria', :dependent => :destroy

	validates_presence_of :admin_id, :message => ' deve ser preenchido!'
	validates_presence_of :descricao, :message => ' deve ser preenchida!'	
	#validates_presence_of :subcat_id, :message => ' deve ser preenchida!'
	
	validates_presence_of :admin, :message => ' inválida!'
	validates_associated :admin
	
	#validates_presence_of :categorias, :if => :testarfk? , :message => ' inválida!'
	#validates_associated :categorias
	
	def testarfk?
		if :admin_id != nil 
			true
		else
			false
		end
	end
end
