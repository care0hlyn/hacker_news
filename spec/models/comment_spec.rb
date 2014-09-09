describe Comment do
  it { should validate_presence_of :input }
  it { should validate_numericality_of :link_id }
  it { should belong_to :user }
  it { should belong_to :link }
end
