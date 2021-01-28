class CategoriesController < ApplicationController
  skip_before_action :verified_user, only: :new
end
