module Publishers
    class BookLoan
        def initialize(message_content:)
            @message_content = message_content
        end

        def publish
            ::Publishers::Application.new(
            routing_key: 'basic_app.book_loans',
            exchange_name: 'basic_app',
            message: {test: 'test'}
        ).perform
        end

        attr_reader :message_content
    end
end