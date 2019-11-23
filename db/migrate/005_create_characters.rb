class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |s|
        s.string :name
        s.integer :actor_id
        s.integer :show_id
    end
   end
end

      
    
