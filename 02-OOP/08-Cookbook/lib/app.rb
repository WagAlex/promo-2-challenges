require_relative 'ui'
require_relative 'controller'

cookbook_controller = Controller.new('lib/recipes.csv')
cookbook_ui = UI.new(cookbook_controller)

cookbook_ui.display


















#Décrire le système:

#un cookbook contient des recettes
#l'utilisateur peut lister/ajouter/supprimer des recettes
#les recettes sont stockées dans un CSV <=> un CSV contient des recettes
#un CSV cotient les données d'un seul cookbook

#Classes à définir

# - Cookbook
# - Recettes
# - Utilisateur (pas de représentation propre au sein du programme)
# - (CSV)<=> DataStore

#Relation entre les classes

#Un cookbook contient plusieurs recette (one to many)
#Un CSV contient plusieurs données de recettes
#Un cookbook encapsule un datastore

#Methodes sur les classes:

#COOKBOOK
#- add_recipe
#- delete_recipe
#-recipes (même ordre)
#DATASTORE
#-creat_recipe
#-read_recipe
#-read_recipes
#delete_recipe

#exo
#Cookbook.new = cookbook.csv
#@datastore = DataStore.new(file)
