class Addcolumntocard < ActiveRecord::Migration[7.1]
  def change
    add_column(:cards, :title, :string)
  end
end
