class ChargesController < ApplicationController
    before_action :set_item
    def new
    end
    
    def create
        @amount = @lesson.price_hr_cents
        # student_id = current_user.id
        @booking = Booking.create(lesson_id: @lesson.id, student_id: current_user.id )
        # Rails.logger.info "charge=#{charge.inspect}"
        customer = Stripe::Customer.create(
            :email => params[:stripeEmail],
            :source  => params[:stripeToken]
          )

      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => @lesson.description,
        :currency    => 'aud',
      )

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end

    private
    def set_item
        @lesson = Lesson.find(params[:lesson_id])
    end
end
