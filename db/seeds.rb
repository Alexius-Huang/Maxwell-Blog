RAILS_PROJECT = 'my_blog'
puts "This is the seed file for Rails project called : #{RAILS_PROJECT}"
puts "=" * 100
puts "Processing seed file ..."
print "Seed file generating 10 articles ... "

article_title_sample = ["My First Article", "Test Article", "Awesome Markdown"]
article_description_sample = [
	%Q{ 
# First Article
This is my *first article*
It is very fun to use **markdown**
Visit me on [FaceBook](https://www.facebook.com/dragon.maximilian)},

	%Q{ 
### Test Article
Here is the sample for *Ruby* code :

``` ruby
class Animal
	def make_noise
	end

	def sleep
		"\#{self.Class} is sleeping"
	end
end

class Cat < Animal
	def make_noise
	  "Meow ~"
	end
end

class Wolf < Animal
	def make_noise
		"Woof!"
	end
end
```

},	
	
	%Q{ 
### Markdown is awesome!!!!!
Visit the 'redcarpet' gem on [github](https://github.com/vmg/redcarpet)!
}
]
should_generate_three_articles = article_title_sample.zip(article_description_sample).each do |title, description|
	Article.create(title: title, description: description)
end

should_generate_other_articles = (1..7).each do |number|
	Article.create(title: "The #{number} Article", description: "This is the #{number} article!")
end

puts "Complete!"

print "Seed file generating author admin account..."

should_generate_author_admin_account = Admin.create(
	email: "123@123.com",
	password: "1234567890",
	password_confirmation: "1234567890"
)

puts "Complete!"

puts "Seed file process complete, enjoy!"




