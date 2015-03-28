class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :body
      t.string :subject

      t.timestamps null: false
    end
  end
end
