class CollectionsController < ApplicationController

require 'net/http'
require 'uri'
require 'json'

  def index
    uri = URI.parse('https://collectionapi.metmuseum.org/public/collection/v1/search?q=JacquesLouisDavid')
    json = Net::HTTP.get(uri)
    @objectIDs = JSON.parse(json)['objectIDs']
  end

  def show
    objectID = params[:id]
    uri = URI.parse("https://collectionapi.metmuseum.org/public/collection/v1/objects/#{objectID}")
    json = Net::HTTP.get(uri)
    @object = JSON.parse(json)
  end
end
