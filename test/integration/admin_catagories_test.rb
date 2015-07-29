require "test_helper"

class AdminCatagoriesTest < ActionDispatch::IntegrationTest

  test "logged in admin sees catagory index" do
    admin = User.create(username: "admin",
                        password: "password",
                        role: 1)
    ApplicationController.any_instance.stubs(:current_user).returns(admin)
    visit admin_catagories_path
    asser page.has_content?("All Catagories")
  end

end
