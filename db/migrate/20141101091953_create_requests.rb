class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :picture_to_describe_style
      t.text :text_to_describe_style
      t.text :like_colors_materials_fabrics
      t.text :dislike_colors_materials_fabrics
      t.text :furniture
      t.text :occupants_of_house
      t.text :cannot_be_missed
      t.text :hate_at_other_appartments
      t.integer :budget
      t.date :furniture_needed_by
      t.text :additional_information

      t.timestamps
    end
  end
end
