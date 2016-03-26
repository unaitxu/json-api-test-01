module Api
  module V1
    # Users controller for the v1
    class UsersController < ApiController
      def index
        render json: test_data
      end

      def test_data
        return User.starwars.sample(10) if User.starwars.count > 99
        data = []
        10.times do
          data << FactoryGirl.create(:starwars)
        end
        data
      end
    end
  end
end
