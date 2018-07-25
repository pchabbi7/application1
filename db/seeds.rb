2.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)
end 


10.times do |blog|
	Blog.create!(
      title: "My Blog Post #{blog}" ,
      body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from 'de Finibus Bonorum et Malorum' by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
      topic_id: Topic.first.id
	)
end 


5.times do |skill|
   Skill.create!(
   	title: "Rails #{skill}" ,
   	percent_utilized: 15
   	)
end 


9.times do |portfolio_item|
	 Portfolio.create!(
	 	title: "Portfolio title: #{portfolio_item}",
	 	subtitle: "Ruby on Rails ",
	 	body: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
	 	main_image: "http://via.placeholder.com/600X400",
	 	thumb_image: "http://via.placeholder.com/350x200"
	 	)
	end 

1.times do |portfolio_item|
	 Portfolio.create!(
	 	title: "Portfolio title: #{portfolio_item}",
	 	subtitle: "Angular",
	 	body: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
	 	main_image: "http://via.placeholder.com/600X400",
	 	thumb_image: "http://via.placeholder.com/350x200"
	 	)
	end 
