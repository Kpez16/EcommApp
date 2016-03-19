if Rails.env.production?
    Rails.configuration.stripe = {
        :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
        :secret_key => ENV['STRIPE_SECRET_KEY']
        }
else
    Rails.configuration.stripe = {
        :publishable_key => 'pk_test_lHe8PwppBFfNkmBdkkbFmZYB',
        :secret_key => 'sk_test_J2MK0w8GNR2egrf58KrEuUhU'
        }
end