class DeviseCreateViews < ActiveRecord::Migration
  def self.up
    create_table(:views) do |t|
      t.database_authenticatable :null => false
      t.confirmable
      t.recoverable
      t.rememberable
      t.trackable
      # t.lockable

      t.timestamps
    end

    add_index :views, :email,                :unique => true
    add_index :views, :confirmation_token,   :unique => true
    add_index :views, :reset_password_token, :unique => true
    # add_index :views, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :views
  end
end
