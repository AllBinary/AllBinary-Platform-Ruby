# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.midlet


module ::Org; module Allbinary; module Game; module Midlet

class LicenseCheckRunnableFactory
    

    def getInstance(specialDemoGameMidlet)
        return ::Org::Allbinary::ThreadPackage::NullABRunnable.getInstance()
    end
end

module ::Org; module Allbinary; module ThreadPackage; autoload :ABRunnable, "org/allbinary/thread/ABRunnable" unless const_defined?(:ABRunnable, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :NullABRunnable, "org/allbinary/thread/NullABRunnable" unless const_defined?(:NullABRunnable, false); end; end; end
autoload :SpecialDemoGameMidlet, "org/allbinary/game/midlet/SpecialDemoGameMidlet" unless const_defined?(:SpecialDemoGameMidlet, false)

end; end; end; end

