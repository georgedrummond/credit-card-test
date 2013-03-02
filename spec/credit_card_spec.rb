require 'spec_helper'

describe 'Credit Card' do

  context '4111111111111111' do
    subject           { CreditCard.new '4111111111111111' }
    its(:number)      { should eq '4111111111111111' }
    its(:card_issuer) { should eq 'VISA' }
    its(:valid?)      { should be_true }
  end

  context '4111111111111' do
    subject           { CreditCard.new '4111111111111' }
    its(:number)      { should eq '4111111111111' }
    its(:card_issuer) { should eq 'VISA' }
    its(:valid?)      { should be_false }
  end

  context '4012888888881881' do
    subject           { CreditCard.new '4012888888881881' }
    its(:number)      { should eq '4012888888881881' }
    its(:card_issuer) { should eq 'VISA' }
    its(:valid?)      { should be_true }
  end

  context '378282246310005' do
    subject           { CreditCard.new '378282246310005' }
    its(:number)      { should eq '378282246310005' }
    its(:card_issuer) { should eq 'AMEX' }
    its(:valid?)      { should be_true }
  end

  context '6011111111111117' do
    subject           { CreditCard.new '6011111111111117' }
    its(:number)      { should eq '6011111111111117' }
    its(:card_issuer) { should eq 'Discover' }
    its(:valid?)      { should be_true }
  end

  context '5105105105105100' do
    subject           { CreditCard.new '5105105105105100' }
    its(:number)      { should eq '5105105105105100' }
    its(:card_issuer) { should eq 'Mastercard' }
    its(:valid?)      { should be_true }
  end

  context '5105 1051 0510 5106' do
    subject           { CreditCard.new '5105 1051 0510 5106' }
    its(:number)      { should eq '5105105105105106' }
    its(:card_issuer) { should eq 'Mastercard' }
    its(:valid?)      { should be_false }
  end

  context '9111111111111111' do
    subject           { CreditCard.new '9111111111111111' }
    its(:number)      { should eq '9111111111111111' }
    its(:card_issuer) { should eq 'Unknown' }
    its(:valid?)      { should be_false }
  end
end