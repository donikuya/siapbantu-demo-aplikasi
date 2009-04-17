class CreateInfos < ActiveRecord::Migration
  def self.up
    create_table :infos do |t|

      t.string :judul
	  t.text :isi
	  t.string :author
	  t.timestamp :tanggal
    end
  end

  def self.down
    drop_table :infos
  end
end
