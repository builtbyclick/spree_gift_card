# add custom rake tasks here

namespace :gift_cards do

  desc 'Delivers giftcards due for delivery'
  task :deliver => :environment do
    Spree::GiftCard.awaiting_delivery.find_each do |gc|
      gc.email_to_recipient
    end
  end

end