class MemberMetricsSnapshot
  def initialize
    get_metrics
  end
  
  def get_metrics
    @all_members = Member.all
    @metrics = { :total => @all_members.size }
    
    @members_by_level = @all_members.group_by(&:membership_level)
    
    @members_by_level.each do |level, level_members|
      @metrics[level.name.downcase.to_sym] = level_members.size
      
      levels_active_members = level_members.select do |member|
        !member.dormant
      end
      @metrics["#{level.name.downcase}_active".to_sym] = levels_active_members.size
      
      levels_dormant_members = level_members.select do |member|
        member.dormant
      end
      @metrics["#{level.name.downcase}_dormant".to_sym] = levels_dormant_members.size
      
    end
    
    @metrics[:active] = @all_members.select(&:active?).size
  end
  
  def total_count
    @metrics[:total]
  end
  
  def fulltime
    @metrics[:fulltime] || 0
  end
  
  def fulltime_active
    @metrics[:fulltime_active] || 0
  end
  
  def fulltime_dormant
    @metrics[:fulltime_dormant] || 0
  end
  
  def lite
    @metrics[:lite] || 0
  end
  
  def lite_active
    @metrics[:lite_active] || 0
  end
  
  def lite_dormant
    @metrics[:lite_dormant] || 0
  end
  
  def basic
    @metrics[:basic] || 0
  end
  
  def basic_active
    @metrics[:basic_active] || 0
  end
  
  def basic_dormant
    @metrics[:basic_dormant] || 0
  end
  
  def active
    @metrics[:active] || 0
  end
end
