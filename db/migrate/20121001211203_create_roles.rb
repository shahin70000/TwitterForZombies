class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.string :string
      t.string :level
      t.string :rank

      t.timestamps
    end
  end
end
