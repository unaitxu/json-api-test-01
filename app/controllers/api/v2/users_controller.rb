module Api
  module V2
    # Users controller for the v2
    class UsersController < ApiController
      def index
        render json: test_data
      end

      def test_data
        return User.superhero.sample(10) if User.superhero.count > 99
        data = []
        10.times do
          data << FactoryGirl.create(:superhero)
        end
        data
      end
    end
  end
end
