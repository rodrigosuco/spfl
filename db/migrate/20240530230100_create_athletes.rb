class CreateAthletes < ActiveRecord::Migration[7.1]
  def change
    create_table :athletes do |t|
      t.string :nome
      t.integer :numero
      t.string :posicao
      t.string :tipo_atleta

      t.timestamps
    end
  end
end
