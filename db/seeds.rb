

Comment.create!([
  {likes: nil, title: nil, text: "I'd look huge in this, this one hundo p!", idea_id: 6, user_id: 3},
  {likes: nil, title: nil, text: "Rief your so small though...", idea_id: 6, user_id: 1},
  {likes: nil, title: nil, text: "you're* ^", idea_id: 6, user_id: 2}
])
Idea.create!([
  {likes: 0, description: "Price is for the hotel reservation. Lets do it on July 13th it will be legendary! 20 likes by the 7th and it will push", user_id: 3, name: "Windsor Weekend", price: 50},
  {likes: 0, description: "The luck of the Jew! (we like pots of gold)", user_id: 3, name: "Saint Patty's Tanks", price: 15},
  {likes: 0, description: "Perfect for all you gym necessities, I'm looking at you Rief! ", user_id: 1, name: "AEPi Duffle Bag", price: 10},
  {likes: 0, description: "PV humor!", user_id: 1, name: "AEPi Visor", price: 15},
  {likes: 0, description: "Vote for your favorite version, whatever has the most likes by July 1st will be pushed", user_id: 2, name: "Puerta Vallarta Tanks #1", price: 20},
  {likes: 0, description: "Vote for your favorite version, whatever has the most likes by July 1st will be pushed", user_id: 2, name: "Puerta Vallarta Tanks #2", price: 20},
  {likes: 0, description: "Vote for your favorite version, whatever has the most likes by July 1st will be pushed", user_id: 2, name: "Puerta Vallarta Tanks #3", price: 20}
])
Item.create!([
  {name: "AEPi Bucket Hat", price: 15, description: "This logo with a white bucket hat, use your imagination", idea_id: nil, user_id: 3}
])
Photo.create!([
  {image_file_name: "casino.jpeg", image_content_type: "image/jpeg", image_file_size: 314316, image_updated_at: "2015-06-12 11:28:53", idea_id: 1, item_id: nil},
  {image_file_name: "spt.jpg", image_content_type: "image/jpeg", image_file_size: 74074, image_updated_at: "2015-06-12 11:30:16", idea_id: 2, item_id: nil},
  {image_file_name: "duffle.png", image_content_type: "image/png", image_file_size: 217096, image_updated_at: "2015-06-12 11:33:32", idea_id: 3, item_id: nil},
  {image_file_name: "visor.jpg", image_content_type: "image/jpeg", image_file_size: 50407, image_updated_at: "2015-06-12 11:34:45", idea_id: 4, item_id: nil},
  {image_file_name: "pv.jpg", image_content_type: "image/jpeg", image_file_size: 10316, image_updated_at: "2015-06-12 11:36:55", idea_id: 5, item_id: nil},
  {image_file_name: "pv2.jpg", image_content_type: "image/jpeg", image_file_size: 9169, image_updated_at: "2015-06-12 11:37:22", idea_id: 6, item_id: nil},
  {image_file_name: "pv3.jpg", image_content_type: "image/jpeg", image_file_size: 28997, image_updated_at: "2015-06-12 11:39:10", idea_id: 7, item_id: nil},
  {image_file_name: "bucket_hat.jpg", image_content_type: "image/jpeg", image_file_size: 65603, image_updated_at: "2015-06-12 11:44:35", idea_id: 8, item_id: 1}
])

