
# Comment.create!([
#   {likes: nil, title: nil, text: "These look dope!!!!!", idea_id: 1, user_id: 3},
#   {likes: nil, title: nil, text: "Yea they do!!!!!!!!!!!", idea_id: 2, user_id: 3},
#   {likes: nil, title: nil, text: "Even I approve", idea_id: 2, user_id: 2},
#   {likes: nil, title: nil, text: "I think it is a really good idea to go to the park because it is fun and adventurous and we would all have a good time - bai", idea_id: 2, user_id: 1}
# ])
# Idea.create!([
#   {likes: 0, description: "Slightly expensive because of great quality ", user_id: 1, name: "Aviator Nation Hoodies", price: 40},
#   {likes: 0, description: "Perfect for the gym, I'm looking at you Rief", user_id: 1, name: "AEPi Custom Duffle Bag ", price: 10},
#   {likes: 0, description: "Luck of the jewish", user_id: 1, name: "Saint Patty's Tanks", price: 17},
#   {likes: 0, description: "vote for your favorite one", user_id: 1, name: "Puerta Vallarta Tanks #1", price: 20},
#   {likes: 0, description: "vote for your favorite one", user_id: 1, name: "Puerta Vallarta Tanks #2", price: 20},
#   {likes: 0, description: "vote for your favorite one", user_id: 3, name: "Puerta Vallarta Tanks #3", price: 20},
#   {likes: 0, description: "We are looking to do this on July 13th, if we get 20 likes by the 7th it will push to store for purchase. The price is for the room reservation", user_id: 2, name: "Windsor Weekend", price: 50}
# ])
# Item.create!([
#   {name: "AEPi Winterfest Demo", price: 70, description: "Custom name and number for these guys, sexy af", idea_id: nil, user_id: 1}
# ])
# Photo.create!([
#   {image_file_name: "11411200_10154823900163647_7097581429687149843_o.jpg", image_content_type: "image/jpeg", image_file_size: 340160, image_updated_at: "2015-06-11 19:52:39", idea_id: 2, item_id: nil},
#   {image_file_name: "bpl.png", image_content_type: "image/png", image_file_size: 71230, image_updated_at: "2015-06-11 22:24:33", idea_id: 4, item_id: nil},
#   {image_file_name: "aviator_nat.jpg", image_content_type: "image/jpeg", image_file_size: 12064, image_updated_at: "2015-06-11 22:36:38", idea_id: 6, item_id: nil},
#   {image_file_name: "duffle.png", image_content_type: "image/png", image_file_size: 217096, image_updated_at: "2015-06-11 22:39:08", idea_id: 7, item_id: nil},
#   {image_file_name: "jersey.jpg", image_content_type: "image/jpeg", image_file_size: 81719, image_updated_at: "2015-06-12 07:47:49", idea_id: 8, item_id: 2},
#   {image_file_name: "spt.jpg", image_content_type: "image/jpeg", image_file_size: 74074, image_updated_at: "2015-06-12 07:49:44", idea_id: 9, item_id: nil},
#   {image_file_name: "pv.jpg", image_content_type: "image/jpeg", image_file_size: 10316, image_updated_at: "2015-06-12 07:50:44", idea_id: 10, item_id: nil},
#   {image_file_name: "pv2.jpg", image_content_type: "image/jpeg", image_file_size: 9169, image_updated_at: "2015-06-12 07:51:16", idea_id: 11, item_id: nil},
#   {image_file_name: "pv3.jpg", image_content_type: "image/jpeg", image_file_size: 28997, image_updated_at: "2015-06-12 07:53:07", idea_id: 12, item_id: nil},
#   {image_file_name: "casino.jpeg", image_content_type: "image/jpeg", image_file_size: 314316, image_updated_at: "2015-06-12 08:05:32", idea_id: 13, item_id: nil}
# ])


# User.create!([
#   {email: "blakealtman123@gmail.com", encrypted_password: "$2a$10$QInLlVXa1Ntl8gERPb7O8OLn1tDfTY8t7qJ0f0KucgDFbtM30Xrxm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-06-11 20:16:26", last_sign_in_at: "2015-06-11 19:42:09", current_sign_in_ip: "::1", last_sign_in_ip: "::1", first_name: "Blake", last_name: "Altman", year: nil, role: 0},
#   {email: "bailey@baileyberro.com", encrypted_password: "$2a$10$aImfqCoeyBtfahnVLYreOe7zVBqmELUSHvy8niptitTTHVEAf4Mbi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2015-06-12 08:00:59", last_sign_in_at: "2015-06-11 20:12:32", current_sign_in_ip: "::1", last_sign_in_ip: "::1", first_name: "Bailey", last_name: "Berro", year: nil, role: 1},
#   {email: "rief@umich.com", encrypted_password: "$2a$10$ICtnOmnE6o9kxtuVHBwAG.8rPaWX6wzyLhLS3gZbKeDq8c6LBNOR2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2015-06-12 07:52:06", last_sign_in_at: "2015-06-11 20:04:14", current_sign_in_ip: "::1", last_sign_in_ip: "::1", first_name: "Austin", last_name: "Rief", year: nil, role: 0}
# ])