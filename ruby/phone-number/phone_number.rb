class PhoneNumber
  attr_reader :phone_number

  COUNTRY_CODE = 1

  def self.clean(phone_number)
    new(phone_number).cleaner
  end

  def initialize(phone_number)
    @phone_number = phone_number.gsub(/\D/, "")
  end

  def cleaner
    return nil unless valid_number?(phone_number)

    if phone_number.length == 11
      phone_number.delete_prefix(COUNTRY_CODE.to_s)
    else
      phone_number
    end
  end

  private

  def valid_number?(phone_number)
    case phone_number.length
    when 10
      return true unless phone_number[0].to_i < 2 || phone_number[3].to_i < 2
    when 11
      return true unless phone_number[0].to_i != COUNTRY_CODE || (phone_number[1].to_i < 2 || phone_number[4].to_i < 2)
    else
      false
    end
  end
end
