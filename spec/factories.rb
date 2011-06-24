Factory.define :post do |post|
  post.title "Sample title"
  post.body "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nisi."
end

Factory.define :account do |account|
  account.email "claudio@jumpzero.com"
  account.password "password"
  account.password_confirmation "password"
end