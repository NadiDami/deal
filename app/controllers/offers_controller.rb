class OffersController < ApplicationController

	helper_method :already_checked?

	def index
		@offers = Offer.all #.order("offers.created_at desc")
		@businesses = Business.all
	end

	def new
		@offer = Offer.new
	end

	def create
		@offer = Offer.new(offer_params)
		@offer.business = current_user
		@offer.business_id = current_user.id
		@offer.save
		redirect_to @offer
	end

	def show
		@offer = Offer.find(params[:id])
	end

	def already_checked? category_id
		current_customer.category_ids.include?(category_id)
	end
		
private
	def offer_params
		params.require(:offer).permit(:business, :product, :product_description, :price, :users_time_availablity, :avatar, :available_from, :available_to)
	end

end
