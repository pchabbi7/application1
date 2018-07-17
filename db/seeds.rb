10.times do |blog|
	Blog.create!(
      title: "My Blog Post #{blog}" ,
      body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from 'de Finibus Bonorum et Malorum' by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham."
	)
end 

#Print on the Terminal
p "10 blog posts created."

5.times do |skill|
   Skill.create!(
   	title: "Rails #{skill}" ,
   	percent_utilized: 15
   	)
end 

#Print on Terminal
p "5 skills created"

9.times do |portfolio_item|
	 Portfolio.create!(
	 	title: "Portfolio title: #{portfolio_item}",
	 	subtitle: "My great service.",
	 	body: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
	 	main_image: "http://via.placeholder.com/600X400",
	 	thumb_image: "http://via.placeholder.com/350x200"
	 	)
	end 

#Print on Terminal
p "9 Portfolio items created."	