class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.references :winner
      
      t.timestamps
    end
  end
end
