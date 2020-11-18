<<<<<<< HEAD
class RidesController < ApplicationController
    def create
        @ride = Ride.create(user_id: current_user.id, attraction_id: params[:attraction_id])
        @message = @ride.take_ride
        redirect_to user_path(@ride.user, message: @message)
      end
    end
=======
class RidesController < ApplicationController
  def create
    ride = Ride.create(ride_params)
    message = ride.take_ride
    redirect_to user_path(ride.user), flash: { message:message }
  end

  private
  def ride_params
    params.require(:ride).permit(
      :user_id,
      :attraction_id
      )
  end
end
>>>>>>> b4f61e3f557b1abea4b72f0069efd9c696d74495
