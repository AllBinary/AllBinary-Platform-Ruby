#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.canvas


module ::Org; module Allbinary; module Canvas

class CustomGameMenuUtil
    

    def self.add(canvas)
        gameCommandsFactory = ::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance()
        if ::Org::Allbinary::AppletUtil.isAppletLoader(canvas)
        elsif ::Org::Allbinary::J2MEUtil.isHTML()
        else
            canvas.addCommand(gameCommandsFactory.EXIT_COMMAND)
        end
    end
end

module ::Org; module Allbinary; autoload :AppletUtil, "org/allbinary/AppletUtil" unless const_defined?(:AppletUtil, false); end; end
module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas" unless const_defined?(:MyCanvas, false); end; end; end; end

end; end; end

