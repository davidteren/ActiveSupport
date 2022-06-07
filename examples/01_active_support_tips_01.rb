# The Rails ActiveSupport core extensions provide additional
# functionality to any Rails or Ruby application.
require "active_support"

# ActiveSupport#blank?
nil.blank?  # => true
false.blank? # => true
{}.blank? # => true
[].blank? # => true
"".blank?  # => true
" ".blank? # => true

# ActiveSupport#present?
nil.present?  # => false
false.present? # => false
{}.present? # => false
[].present? # => false
"".present?  # => false
" ".present? # => false

# Further reading: https://guides.rubyonrails.org/active_support_core_extensions.html#blank-questionmark-and-present-questionmark
