class AddStatusToEvents < ActiveRecord::Migration[7.2]
  def change
    add_column :events, :status, :string
  end
end
