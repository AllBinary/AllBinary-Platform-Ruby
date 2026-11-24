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
# package org.allbinary.graphics.opengles.shader


module ::Org; module Allbinary; module Graphics; module Opengles; module Shader

class Shader
    attr_accessor :shaderName, :shaderStringList, :shaderAsString, :shaderHandle

    def jfields_org_allbinary_graphics_opengles_shader_Shader
        @shaderName = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @shaderStringList = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
        @shaderAsString = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @shaderHandle = 0 unless instance_variable_defined?(:@shaderHandle)
    end

    def initialize
        jfields_org_allbinary_graphics_opengles_shader_Shader
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end

end; end; end; end; end

