class CreateWrongs < ActiveRecord::Migration
  def change
    create_table :wrongs do |t|
      t.text :url

      t.timestamps
    end
  end
end
