class AddFilesToQuestions < ActiveRecord::Migration[5.0]
    def change
     add_attachment :questions, :image_one
     add_attachment :questions, :image_two
    end

end
