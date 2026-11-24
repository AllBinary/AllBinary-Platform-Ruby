# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.opengles.shader


module ::Org; module Allbinary; module Graphics; module Opengles; module Shader

class OpenGLObject3dProcessor
    attr_accessor :commonStrings

    def jfields_org_allbinary_graphics_opengles_shader_OpenGLObject3dProcessor
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end

    def initialize
        jfields_org_allbinary_graphics_opengles_shader_OpenGLObject3dProcessor
    end
    

    def process_j2(gl, object3d)
    end
    

    def process_j3(gl, object3d, index)
    end

    def process(*java_overload_args)
        return process_j2(*java_overload_args) if java_overload_args.length == 2
        return process_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method process takes #{java_overload_args.length} arguments"
    end
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end

