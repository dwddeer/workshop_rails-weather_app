class UserMailer < ApplicationMailer
    def loan_created_email(book_loan)
        @book_title = book_loan.book.title
        @due_date = book_loan.due_date

        mail(to: book_loan.user.email, subject: 'Siema')
    end


end 