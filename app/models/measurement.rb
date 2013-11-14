class Measurement < ActiveRecord::Base
  attr_accessible :product_id, :color, :gender, :inseam,  :waist, :weight, :weight2, :height_feet, :height_inch, :height_feet2, :height_inch2, :image
  belongs_to :product
  mount_uploader :image, ImageUploader

=begin
  def self.search(search_color, search_gender, search_inseam, search_waist, search_hip, search_height, search_weight)
    return scoped unless search_color.present? || search_gender.present? || search_inseam.present? || search_waist.present? || search_hip.present? || search_height.present? || search_weight.present?
    where(['color LIKE ? AND gender LIKE ? AND inseam LIKE ? AND waist LIKE ? AND hips LIKE ? AND height LIKE ? AND weight LIKE ?',
           "%#{search_color}%", "%#{search_gender}%", "%#{search_inseam}%", "%#{search_waist}%", "%#{search_hip}%", "%#{search_height}%", "%#{search_weight}%"])
  end
=end

  def self.search(search_color, search_gender, search_height_feet, search_height_inch, search_weight)
    args = Hash["color" => search_color, "gender" => search_gender, "height_feet" => search_height_feet, "height_inch" => search_height_inch, "weight" => search_weight]
    cond_text, cond_values = [], []
    args.each do |key,value|
      next if value.blank?
      cond_text << "( %s )" % value.split.map{|w| key + " LIKE ? "}.join(" OR ")
      if value != search_color
        cond_values.concat(value.split.map{|w| w})
      else
        cond_values.concat(value.split.map{|w| "%#{w}%"})
      end
    end
    find( :all, :conditions =>  [cond_text.join(" AND "), *cond_values])
  end

end
