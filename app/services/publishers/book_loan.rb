module Publishers
    class BookLoan
        def initialize(message_content:)
            @message_content = message_content
        end

        def publish
            ::Publishers::Application.new(
            routing_key: 'test_routing_key',
            exchange_name: 'test_exchange',
            message: {test: 'test'}
        ).perform
        end

        attr_reader :message_content
    end
end