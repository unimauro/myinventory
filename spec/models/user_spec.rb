# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  role_id                :integer
#
require 'rails_helper'

RSpec.describe User, type: :model do

  it 'returns only admin' do
    # setup
    active_user = create(:user, role_id: 1)
   
    # exercise
    result = User.role_id

    # verify
    expect(result).to eq [1]

  end
end
