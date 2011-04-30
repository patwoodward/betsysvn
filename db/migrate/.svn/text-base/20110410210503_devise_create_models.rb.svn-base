class DeviseCreateModels < ActiveRecord::Migration
  def self.up
    create_table(:models) do |t|
      t.database_authenticatable :null => false
      t.confirmable
      t.recoverable
      t.rememberable
      t.trackable
      # t.lockable

      t.timestamps
    end

    add_index :models, :email,                :unique => true
    add_index :models, :confirmation_token,   :unique => true
    add_index :models, :reset_password_token, :unique => true
    # add_index :models, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :models
  end
end
