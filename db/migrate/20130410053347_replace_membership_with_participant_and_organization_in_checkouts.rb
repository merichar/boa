class ReplaceMembershipWithParticipantAndOrganizationInCheckouts < ActiveRecord::Migration
  def change
    add_column :checkouts, :participant_id, :integer
    add_column :checkouts, :organization_id, :integer
    remove_column :checkouts, :membership_id
  end
end
