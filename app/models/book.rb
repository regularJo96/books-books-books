# == Schema Information
#
# Table name: books
#
#  id                    :bigint           not null, primary key
#  author                :string
#  isbn                  :string
#  number_of_pages       :integer
#  original_release_year :integer
#  publication_year      :integer
#  publisher             :string
#  synopsis              :text
#  title                 :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class Book < ApplicationRecord
end
