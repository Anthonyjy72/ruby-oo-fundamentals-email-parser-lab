class EmailAddressParser
    attr_accessor :name, :cvs_emails

    def initialize(cvs_emails)
        @cvs_emails = cvs_emails
    end

    def parse
        cvs_emails.split.collect do |address|
            address.split(',')
        end
        .flatten.uniq
    end
end

