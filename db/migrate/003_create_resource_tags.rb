class CreateResourceTags < ActiveRecord::Migration
  def self.up
    create_table :resource_tags do |t|
      t.column :resource_id, :string
      t.column :puppet_tag_id, :integer
      t.column :updated_at, :datetime
    end
    add_index :resource_tags, :id, :integer => true
    add_index :resource_tags, :resource_id, :integer => true
    add_index :resource_tags, :puppet_tag_id, :integer => true
  end

  def self.down
    drop_table :resource_tags
  end
end
