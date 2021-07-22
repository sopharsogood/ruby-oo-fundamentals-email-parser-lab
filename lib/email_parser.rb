# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  def initialize(unparsed_addresses)
    @unparsed_addresses = unparsed_addresses
  end

  def parse
    split_addresses = @unparsed_addresses.split(/[,\s]+/)
    unique_addresses = []
    split_addresses.each do |address|
       unique_addresses << address if !unique_addresses.include?(address)
    end
    unique_addresses
  end
end