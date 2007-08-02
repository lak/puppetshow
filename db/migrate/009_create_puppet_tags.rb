class CreatePuppetTags < ActiveRecord::Migration
  def self.up
    create_table :puppet_tags do |t|
      t.column :name, :string
      t.column :updated_at, :datetime
    end
    add_index :puppet_tags, :id, :integer => true
  end

  def self.down
    drop_table :puppet_tags
  end
end
