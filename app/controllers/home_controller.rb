class HomeController < AuthenticatedController
  def show
    render :text => "Home Controller"
  end
end