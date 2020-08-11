require 'faker'
User.destroy_all
Event.destroy_all
Attendance.destroy_all


10.times do
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Movies::VForVendetta.quote)

  user.update(email:"#{user.first_name.downcase}.#{user.last_name.downcase}@yopmail.com")
end

10.times do
  Event.create(start_date: Faker::Date.between(from: '2020-09-23', to: '2022-09-25'), title: Faker::Hipster.word, duration: Faker::Number.within(range: 10..120), description: Faker::Movies::VForVendetta.quote, price: Faker::Number.within(range: 10..120),location: Faker::Address.city)
end

10.times do
  Attendance.create(stripe_customer_id: Faker::Stripe.valid_card, user: User.all.sample, event: Event.all.sample)
end
