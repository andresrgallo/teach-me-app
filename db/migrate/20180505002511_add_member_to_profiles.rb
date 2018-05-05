class AddMemberToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_reference :profiles, :member, foreign_key: true
  end
end
