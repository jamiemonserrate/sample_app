class AddStateToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :state, :integer
  end
end
