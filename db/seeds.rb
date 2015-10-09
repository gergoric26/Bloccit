include RandomData
  
  15.times do
  Topic.create!(
    name: RandomData.random_sentence,
    description: RandomData.random_paragraph
  )
  end
  topics = Topic.all
  
  50.times do 
    Post.create!(
      topic: topics.sample,
      title: RandomData.random_sentence,
      body: RandomData.random_paragraph
      )
  end

  50.times do 
    Advertisement.create!(
      title: RandomData.random_sentence,
      copy: RandomData.random_paragraph,
      price: RandomData.random_number
      )
  end

  posts = Post.all
  advertisements = Advertisement.all


  100.times do 
    Comment.create!(
      post: posts.sample,
      body: RandomData.random_paragraph
      )
  end

  puts "#{Post.count}"
  Post.find_or_create_by(title: "Unique title", body: "Unique body")
  puts "#{Post.count}"

  puts "Seed finished"
  puts "#{Topic.count} topics created"
  puts "#{Post.count} posts created"
  puts "#{Comment.count} comments created"
  puts "#{Advertisement.count} advertisements created"


