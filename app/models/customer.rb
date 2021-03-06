class Customer < ActiveRecord::Base

  default_scope {order('id DESC')}

  def self.mnm
    Customer.find_by_sql "select  substr(c.name,1,4) as nm , c.* from customers as c;"
  end

  def to_s
    # show columns contents, not record object like:  #<Vehicle:0x007f343b3f2890> 2016-06-08  Details Edit  Delete
    # http://stackoverflow.com/questions/4829909/how-do-i-print-out-the-contents-of-an-object-in-rails-for-easy-debugging
    #"Name:#{self.name} Age:#{self.age} Weight: #{self.weight}"
    "##{id},#{name},#{address}"
  end

end
