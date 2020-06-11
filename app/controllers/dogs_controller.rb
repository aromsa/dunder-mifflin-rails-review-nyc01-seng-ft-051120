class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end


end

# DONE - For our index page for Dogs, a user should be able to click on a specific dog and 
# take them to the corresponding show page.

# DONE - The Dog show page should have their name, breed, age and the list of 
# Dunder Mifflin Employees they are connected to

# - BONUS: Make an option to sort the dogs on the index page by the number of employees 
# that belong to them.
