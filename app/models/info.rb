class Info < ActiveRecord::Base
	validates_presence_of :judul,:message =>"Field tidak boleh kosong"
	validates_presence_of :isi, :message =>"Field tidak boleh kosong"
	validates_presence_of :tanggal,:message =>"tanggal harus di isi"
	validates_presence_of :author,:message =>"Field tidak boleh kosong"
	
	has_many :komentars
end
