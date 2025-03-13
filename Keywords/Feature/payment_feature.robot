***Keywords***
Verify information payment data and confirm payment successfully
    payment_page.Select payment method as credit card
    payment_page.Input valid data on Card Number box  ${payment.number}
    payment_page.Input valid data on Expration date box  ${payment.exp}
    payment_page.Input valid data on Cv code box  ${payment.cvc}
    payment_page.Input valid data on Card Owner Name box  ${payment.cardname}
    payment_page.Click button Confirm Payment
    payment_page.Pop-up Confirm Payment Success
    payment_page.Order Information Created
    payment_page.Click Continue Shopping