class CreateKontaks < ActiveRecord::Migration
  def self.up
    create_table :kontaks do |t|
      t.string :nama
      t.string :email
      t.text :pesan
      t.timestamp :tanggal

      t.timestamps
    end
  end

  def self.down
    drop_table :kontaks
  end
end
