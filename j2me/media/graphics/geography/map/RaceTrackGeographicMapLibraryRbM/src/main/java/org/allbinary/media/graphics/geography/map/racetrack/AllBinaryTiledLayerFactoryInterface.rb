# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.media.graphics.geography.map.racetrack


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack

module AllBinaryTiledLayerFactoryInterface
    

    # throws Exception
    def getInstance(raceTrackInfo, raceTrackData)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getMiniInstance(raceTrackData)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
autoload :RaceTrackData, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData" unless const_defined?(:RaceTrackData, false)
autoload :RaceTrackInfo, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo" unless const_defined?(:RaceTrackInfo, false)

end; end; end; end; end; end; end

