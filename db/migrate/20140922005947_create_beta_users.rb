class CreateBetaUsers < ActiveRecord::Migration
  def change
    create_table :beta_users do |t|
      t.string :email
      t.string :ip

      t.timestamps
    end
  end
end
