require 'test_helper'

class OrganizationCategoryTest < ActiveSupport::TestCase
  # Relationships
  should have_many(:organizations)

  # Validations


  context "With a proper context, " do
    setup do
      create_context
    end

    teardown do
      #remove_context
    end

    should "show that all factories are properly created" do
      assert_equal 4, OrganizationCategory.all.size
    end

    # Scopes
  
    # Methods

  end
end