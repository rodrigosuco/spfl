class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.string :nome
      t.string :endereco
      t.references :athletes, null: false, foreign_key: true
      t.text :historia
      t.text :infos
      t.string :titulo
      t.string :titulo2
      t.string :titulo3
      t.string :titulo4
      t.string :titulo5

      t.timestamps
    end
  end
end
