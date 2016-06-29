class Perfume < ApplicationRecord
	belongs_to :family_type
	belongs_to :perfume_type

	mount_uploader :image, PerfumeUploader

	validates :name, presence: true, on: :create
	validates :trend, presence: true, on: :create
	validates :family_type_id, presence: true, on: :create
	validates :perfume_type_id, presence: true, on: :create
	validates :image, presence: true, on: :create
end
