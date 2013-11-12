class Measurement < ActiveRecord::Base
  attr_accessible :color, :gender, :height, :hips, :inseam, :product_id, :rise, :waist, :weight
  belongs_to :product

=begin
  def self.search(search_color, search_gender, search_inseam, search_waist, search_hip, search_height, search_weight)
    return scoped unless search_color.present? || search_gender.present? || search_inseam.present? || search_waist.present? || search_hip.present? || search_height.present? || search_weight.present?
    where(['color LIKE ? AND gender LIKE ? AND inseam LIKE ? AND waist LIKE ? AND hips LIKE ? AND height LIKE ? AND weight LIKE ?',
           "%#{search_color}%", "%#{search_gender}%", "%#{search_inseam}%", "%#{search_waist}%", "%#{search_hip}%", "%#{search_height}%", "%#{search_weight}%"])
  end
=end

  def self.search(search_color, search_gender, search_inseam, search_waist, search_hip, search_height, search_weight)
    args = Hash["color" => search_color, "gender" => search_gender, "inseam" => search_inseam, "waist" => search_waist, "hips" =>search_hip, "height" => search_height, "weight" => search_weight]
    cond_text, cond_values = [], []
    args.each do |key,value|
      next if value.blank?
      cond_text << "( %s )" % value.split.map{|w| key + " LIKE ? "}.join(" OR ")
      cond_values.concat(value.split.map{|w| "%#{w}%"})
    end
    find( :all, :conditions =>  [cond_text.join(" AND "), *cond_values])
  end

=begin
  def self.search(*args)
    return [] if args.blank?
    cond_text, cond_values = [], []
    args.each do |str|
      next if str.blank?
      cond_text << "( %s )" % str.split.map{|w| "tag_name LIKE ? "}.join(" OR ")
      cond_values.concat(str.split.map{|w| "%#{w}%"})
    end
    all :conditions =>  [cond_text.join(" AND "), *cond_values]
  end
=end

end
