class AddressesController < ApplicationController
    before_action :set_address, only:[:show, :update, :destroy]

    def index
    end

    def show
        respond_to do |format|
            format.json { render json: @address}
        end
    end

    def create
        @address = Address.new(address_params)
        respond_to do |format|
            if @address.save
                format.json { render json: {message: t('active_record.messages.created', model: Address.model_name.human)}}
            else
                format.json { render json: {errors: @address.model.errors, status: :unprocessable_entity} }
            end
        end
    end

    def update
        respond_to do |format|
            if @address.update(address_params)
                format.json { render json: {message: t('messages.updated', model: Address.model_name.human)}}
            else
                format.json { render json: {errors: @address.model.errors, status: :unprocessable_entity} }
            end
        end
    end

    def destroy
        respond_to do |format|
            if @address.destroy
                format.json { render json: {message: t('messages.destroyed', model: Address.model_name.human)}}
            else
                format.json { render json: {errors: @address.model.errors, status: :unprocessable_entity} }
            end
        end
    end

    private

    def address_params
        params.require(:address).permit(:name, 
                                        :last_name, 
                                        :postal_code, 
                                        :country, 
                                        :state, 
                                        :municipality, 
                                        :city, 
                                        :colony, 
                                        :street, 
                                        :external_number, 
                                        :internal_number)
    end

    def set_address
        @address = Address.find(params[:id])
    end
end
