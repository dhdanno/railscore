require 'test_helper'

class UserTest < ActiveSupport::TestCase

	test "a user should enter a first name" do
		user = User.new
		assert !user.save
		assert !user.errors[:first_name].empty?
	end

	test "a user should enter a last name" do
		user = User.new
		assert !user.save
		assert !user.errors[:last_name].empty?
	end

	test "a user should enter a profile name" do
		user = User.new
		assert !user.save
		assert !user.errors[:profile_name].empty?
	end

	test "a user should have a unique profile name" do
		user = User.new
		user.profile_name = users(:dan).profile_name

		assert !user.save
		puts.user.errors.inspect
		assert !user.errors[:profile_name].empty?
	end

	test "a user should have a profile name without spaces" do
		user = User.new
		user.profile_name = "My profile with spaces"

		assert !user.save
		assert !user.errors[:profile_name].empty?
		assert user.errors[:profile_name].include("must be formatted")
	end

	test "a user can have a correctly formatted profile name" do
		user = User.new(first_name: 'bob', last_name: 'green', email: 'bob@bob.com')
		user.password = user.password_confirmation = 'addasfsd'

		user.profile_name = 'bob_1'
		assert user.valid?
	end	
 
end
