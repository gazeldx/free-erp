class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :passwd
      t.boolean :active

      t.timestamps
    end

    add_index :users, :username
  end
end
