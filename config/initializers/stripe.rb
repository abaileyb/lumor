Rails.configuration.stripe = {
  :publishable_key => ENV['sk_test_4XCGleZHJYcH1X1LGiRN6Ecw'],
  :secret_key      => ENV['pk_test_VlfQg0WLA3O7PZPaNmI4Q4Sa']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]