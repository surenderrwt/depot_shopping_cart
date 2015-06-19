require 'test_helper'

class ProductTest < ActiveSupport::TestCase
	test "the truth" do
	product = Product.new
	assert product.invalid?
	assert product.errors[:title].any?
	assert product.errors[:description].any?
	assert product.errors[:image_url].any?
	assert product.errors[:price].any?
	end

	test "product price must be positive" do
		product = Product.new(
			title: "My book",
			description: "The best book",
			image_url: "lorem.jpg"
		)
		product.price = -1
		assert product.invalid?
		assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

		product.price = 0
		assert product.invalid?
		 assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

		product.price = 1 
		assert product.valid?
	end

	def new_product(image_url)
			Product.new(
			title: "My book",
			description: "The best book",
			price: 1,
			image_url: image_url
		)
	end
	
	test "image url" do
		ok = %w{ fred.gif fred.jpg fred.png FRED.GIF FRED.JPG FRED.PNG http://a.b.c/x/y/x/fred.gif }
		bad = %w{ fred.doc fred.gfi/more fred.gfi.more}
		ok.each do |name|
			assert new_product(name).valid?, "#{name} should be valid"
		end
		bad.each do |name| 
			assert new_product(name).invalid?, "#{name}, shouldn't be valid}"
		end
	end
end
