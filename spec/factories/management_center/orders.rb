FactoryBot.define do
  factory :orders, class: 'ManagementCenter::Order' do
    status 'pending'
  end
end
