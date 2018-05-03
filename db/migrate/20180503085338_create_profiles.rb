class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :state
      t.string :suburb
      t.string :postcode
      t.text :qualifications
      t.text :work_experience
      t.string :facebook_account
      t.string :twitter_account
      t.string :status

      t.timestamps
    end
  end
end
