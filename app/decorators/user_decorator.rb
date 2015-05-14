class UserDecorator < Draper::Decorator
  delegate_all

  def info
  	"#{user.firstname} #{user.lastname}"
  end

end
