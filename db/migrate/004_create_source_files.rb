class CreateSourceFiles < ActiveRecord::Migration
  def self.up
    create_table :source_files do |t|
      t.column :filename, :string
      t.column :path, :string
      t.column :updated_at, :datetime
    end
    add_index :source_files, :id, :integer => true
    add_index :source_files, :filename
  end

  def self.down
    drop_table :source_files
  end
end
