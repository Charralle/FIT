class OrdersController < ApplicationController

  def create
    garment = Garment.find(params[:garment_id])
    order  = Order.create!(garment: garment, amount: garment.price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        images: ["https://res.cloudinary.com/fit-ts/image/upload/v1654522181/fit/#{garment.image_name}"],
        amount: garment.price_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

end
