class CustumersController <:: ApplicationController

      def index
         @customers = Custumer.filters(customer_params)
         render json: @customers
      end

      def customer_params
         params.slice(:name, :email, :company)
      end

end
