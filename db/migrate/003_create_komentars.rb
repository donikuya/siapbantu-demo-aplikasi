class CreateKomentars < ActiveRecord::Migration
  def self.up
    create_table :komentars do |t|
      t.references :info
      t.text :komentar
      t.string :nama
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :komentars
  end
end
