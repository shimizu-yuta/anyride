# == Schema Information
#
# Table name: bikes
#
#  id             :bigint           not null, primary key
#  description    :text(65535)
#  displacement   :integer          not null
#  mileage        :integer          not null
#  name           :string(255)      not null
#  price          :integer          not null
#  year           :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  bodytype_id    :bigint
#  manufacture_id :bigint
#  owner_id       :bigint
#  prefecture_id  :bigint
#
# Indexes
#
#  index_bikes_on_bodytype_id     (bodytype_id)
#  index_bikes_on_manufacture_id  (manufacture_id)
#  index_bikes_on_owner_id        (owner_id)
#  index_bikes_on_prefecture_id   (prefecture_id)
#
# Foreign Keys
#
#  fk_rails_...  (bodytype_id => bodytypes.id)
#  fk_rails_...  (manufacture_id => manufactures.id)
#  fk_rails_...  (owner_id => users.id)
#  fk_rails_...  (prefecture_id => prefectures.id)
#

FactoryBot.define do
  factory :bike do
    id { 1 }
    name { "CB1300SB" }
    price { 6000 }
    year { 2011 }
    displacement { 1300 }
    mileage { 25000 }
    description { "Nice bike!" }

    association :owner, factory: :user
    association :prefecture
    association :manufacture
    association :bodytype
  end
end
