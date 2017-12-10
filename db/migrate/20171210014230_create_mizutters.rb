class CreateMizutters < ActiveRecord::Migration[5.1]
  def change
    create_table :mizutters do |t|
      t.text "content"
    end
  end
end
