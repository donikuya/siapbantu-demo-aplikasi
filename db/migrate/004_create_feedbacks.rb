class CreateFeedbacks < ActiveRecord::Migration
  def self.up
    create_table :feedbacks do |t|
	  t.string :nama
	  t.string :email
	  t.text :saran
      
    end
  end

  def self.down
    drop_table :feedbacks
  end
end
