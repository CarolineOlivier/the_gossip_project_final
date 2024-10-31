class Gossip < ApplicationRecord
  # Valide la présence du titre et impose une longueur minimum et maximum
  validates :title, presence: true, length: { minimum: 3, maximum: 14 }

  # Valide la présence du contenu
  validates :content, presence: true

  # Associe un potin à un utilisateur
  belongs_to :user

  # Associe un potin à plusieurs 'gossip_tags' (relation intermédiaire pour les tags)
  has_many :gossip_tags

  # Associe un potin à plusieurs tags à travers 'gossip_tags'
  has_many :tags, through: :gossip_tags

  # Associe un potin à plusieurs commentaires
  has_many :comments, dependent: :destroy 
  #l'option dependent: :destroy sur l'association avec les commentaires :
  #configure Rails pour supprimer automatiquement les commentaires associés lorsqu'un potin est supprimé

  # Associe un potin à plusieurs likes
  has_many :likes
end

