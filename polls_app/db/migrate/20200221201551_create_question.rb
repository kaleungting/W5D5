class CreateQuestion < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question, null: false
    end

    add_index(:questions,:question)
  end
end
