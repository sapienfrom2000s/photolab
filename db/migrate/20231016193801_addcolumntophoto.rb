class Addcolumntophoto < ActiveRecord::Migration[7.1]
  def change
    add_column(:photos, :title, :string)
  end
end
