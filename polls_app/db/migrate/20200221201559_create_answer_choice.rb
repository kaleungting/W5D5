class CreateAnswerChoice < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.string :answer, null:false
    end
    
    add_index(:answer_choices,:answer)
  end
end
