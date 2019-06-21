module ApplicationHelper

    def humanize_boolean(boolean)
        I18n.t((!!boolean).to_s)
      end


  def grab_pool_params
    @property = Property.find(params[:id])
  end

  def grab_pool_size
    grab_pool_params.pool_size
  end


  def estimate_size_cost(grab_pool_size)
    @pool_size = grab_pool_size
    if  @pool_size < 4000
      return 50
    elsif 4000 <= @pool_size && @pool_size < 5000
      return 65
    elsif 5000 <= @pool_size && @pool_size < 6000
      return 70
    elsif 6000 <= @pool_size && @pool_size < 7000
      return 75
    elsif 7000 <= @pool_size && @pool_size < 8000
      return 80
    elsif 8000 <= @pool_size && @pool_size < 9000
      return 85
    elsif 9000 <= @pool_size && @pool_size < 1000
      return 90
    elsif 10000 <= @pool_size && @pool_size < 11000
      return 95
    else 
      return 100
    end
  end

  def estimate_material_cost(grab_pool_size)
    @pool_size = grab_pool_size
    if  @pool_size < 4000
      return 5
    elsif 4000 <= @pool_size && @pool_size < 5000
      return 7.50
    elsif 5000 <= @pool_size && @pool_size < 6000
      return 10
    elsif 6000 <= @pool_size && @pool_size < 7000
      return 12.50
    elsif 7000 <= @pool_size && @pool_size < 8000
      return 15.00
    elsif 8000 <= @pool_size && @pool_size < 9000
      return 17.50
    elsif 9000 <= @pool_size && @pool_size < 1000
      return 20
    elsif 10000 <= @pool_size && @pool_size < 11000
      return 22.50
    else 
      return 25.00
    end
  end

  def total_cost
   
    # @cost_one = 
    estimate_material_cost(grab_pool_size) + estimate_size_cost(grab_pool_size)
  
    # @cost_one + @cost_two = @totalcost
    # return @cost_one
  end


end
