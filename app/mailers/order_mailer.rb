class OrderMailer < ApplicationMailer
    default from: 'no-reply@jungle.com'
    def order_confirmation(order)
        @order = order
        subject = 'Order placed: #' + order.get_order_id
        mail(to: @order.email, subject: subject)
    end
end
