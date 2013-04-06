class FixUserMembershipAgain < ActiveRecord::Migration
  def change
    remove_column :users, :user_membership_id
  end
end
