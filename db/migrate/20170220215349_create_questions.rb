class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :option_one
      t.string :option_two

      t.timestamps
    end
  end
end
