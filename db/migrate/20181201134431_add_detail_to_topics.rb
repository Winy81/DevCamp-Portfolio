class AddDetailToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :detail, :string
  end
end
