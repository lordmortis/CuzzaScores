class CreateContentBlocks < ActiveRecord::Migration
	def self.up
    create_table :content_blocks do |t|
			t.string :title, :null => true
			t.text :summary, :null => true
			t.text :bodytext, :null => true
			t.boolean :autosummarize, :null => false, :default => false
			t.integer :editor_id, :null => true
			t.integer :author_id, :null => true
			t.boolean :published, :null => false, :default => false
			t.integer :tweet_id, :null => true, :default => nil, :length => 20
			t.string :short_url, :null => true, :default => nil			
			t.boolean :preview, :null => false, :default => true
      t.timestamps
    end

		add_index(:content_blocks, :author_id)
		add_index(:content_blocks, :editor_id)		
	end

	def self.down
    drop_table :content_blocks
	end
end