RAILS_PROJECT = 'my_blog'
puts "This is the seed file for Rails project called : #{RAILS_PROJECT}"
puts "=" * 100
puts "Processing seed file ..."
print "Seed file generating 3 articles ... "

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

puts "Complete!"
puts "Seed file process complete, enjoy!"




