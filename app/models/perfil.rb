class Perfil < ActiveRecord::Base
	belongs_to :categoria
	
	validates_presence_of :categoria_id, :message => ' deve ser preenchida!'
	validates_presence_of :nome, :message => ' deve ser preenchido!'
	validates_presence_of :url, :message => ' deve ser preenchida!'
	
	validates_presence_of :categoria, :message => ' inválida!'
	validates_associated :categoria
end
