describe Link do
  it { should validate_presence_of :description }
  it { should validate_numericality_of :user_id }

  it { should belong_to :user}
end
