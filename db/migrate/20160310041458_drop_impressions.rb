class DropImpressions < ActiveRecord::Migration
  def change
  	drop_table :impressions do |t|
	    t.string   :impressionable_type
	    t.integer  :impressionable_id
	    t.integer  :user_id
	    t.string   :controller_name
	    t.string   :action_name
	    t.string   :view_name
	    t.string   :request_hash
	    t.string   :ip_address
	    t.string   :session_hash
	    t.text     :message
	    t.text     :referrer
	    t.datetime :created_at
	    t.datetime :updated_at
    end
  end
end
