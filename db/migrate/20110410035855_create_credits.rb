class CreateCredits < ActiveRecord::Migration
  def self.up
    create_table :credits do |t|
      t.string :role
      t.string :location
      t.text :note
      t.string :project
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :credits
  end
end
