module ApplicationHelper

  # format numbers to two decimal places
  def format_number(number)
    number_with_precision number, precision: 2
  end

  # count all bills associated with a user
  def count_bills(user)
    return 0 if user.nil?
    user.accounts.sum { |account| account.bills.size }
  end

end
