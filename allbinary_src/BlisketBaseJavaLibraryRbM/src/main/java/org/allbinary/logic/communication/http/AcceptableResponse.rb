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
# package org.allbinary.logic.communication.http


module ::Org; module Allbinary; module Logic; module Communication; module Http

class AcceptableResponse
    attr_accessor :logUtil, :commonStrings

    def jfields_org_allbinary_logic_communication_http_AcceptableResponse
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def initialize(candidate, tagName, index)
        jfields_org_allbinary_logic_communication_http_AcceptableResponse
        @logUtil.putF(tagName, self, @commonStrings.CONSTRUCTOR)
        acceptableResponseUtil = AcceptableResponseUtil.getInstance()
        acceptableResponseUtil.candidateVector.addAt(index, candidate)
        acceptableResponseUtil.tagNameVector.addAt(index, tagName)
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AcceptableResponseUtil, "org/allbinary/logic/communication/http/AcceptableResponseUtil" unless const_defined?(:AcceptableResponseUtil, false)

end; end; end; end; end

