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
# package org.allbinary.input.automation.module.generic


module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic

class CaptureWorkerUtil
    attr_accessor :logUtil

    def jfields_org_allbinary_input_automation_module_generic_CaptureWorkerUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_input_automation_module_generic_CaptureWorkerUtil
    end
    

    # throws Exception
    def self.processProfileActionConditions(vector, frame)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        logUtil.putF(commonStrings.START, "CaptureWorkerUtil", "processProfileActionConditions")
        size = vector.size()
        (0...size).each do |index|
            profileActionConditionInterface = vector.get(index)
            if profileActionConditionInterface.shouldProcess(frame)
                profileActionConditionInterface.process(frame)
            else
            end
        end
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; autoload :ProfileActionScriptConditionInterface, "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface" unless const_defined?(:ProfileActionScriptConditionInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end; end

