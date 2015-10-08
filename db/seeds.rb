include RandomData

  50.times do 
    Post.create!(
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
  puts "#{Post.count} posts created"
  puts "#{Comment.count} comments created"
  puts "#{Advertisement.count} advertisements created"


