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
# package org.allbinary.game.identification


module ::Org; module Allbinary; module Game; module Identification

class CompositeGroup
    attr_accessor :logUtil, :groupInterface, :list

    def jfields_org_allbinary_game_identification_CompositeGroup
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @groupInterface = nil unless instance_variable_defined?(:@groupInterface)
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def initialize(groupInterface)
        jfields_org_allbinary_game_identification_CompositeGroup
        @groupInterface = groupInterface
    end
    

    def clear()
        @list.clear()
    end
    

    def add(groupInterface)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        groupCommonFactory = GroupCommonFactory.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(groupCommonFactory.ADDING_LABEL)
        stringBuffer.append(groupInterface.to_s)
        stringBuffer.append(groupCommonFactory.TO_LABEL)
        stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(@groupInterface))
        @logUtil.putF(stringBuffer.to_s, self, commonStrings.ADD)
        @list.add(groupInterface)
    end
    

    def isInGroup(groupInterface)
        if @list.contains(groupInterface)
            return true
        else
            return false
        end
    end
    

    def getGroup()
        return @groupInterface
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false)
autoload :GroupCommonFactory, "org/allbinary/game/identification/GroupCommonFactory" unless const_defined?(:GroupCommonFactory, false)

end; end; end; end

