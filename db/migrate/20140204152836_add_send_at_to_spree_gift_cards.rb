class AddSendAtToSpreeGiftCards < ActiveRecord::Migration
  def change
    add_column :spree_gift_cards, :send_at, :datetime
  end
end