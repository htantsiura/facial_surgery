#pragma clang diagnostic ignored "-Wmissing-prototypes"
#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
namespace SNAP_VS {
int sc_GetStereoViewIndex()
{
return 0;
}
}
#ifndef sc_TextureRenderingLayout_Regular
#define sc_TextureRenderingLayout_Regular 0
#define sc_TextureRenderingLayout_StereoInstancedClipped 1
#define sc_TextureRenderingLayout_StereoMultiview 2
#endif
// SCC_BACKEND_SHADER_FLAGS_BEGIN__
// SCC_BACKEND_SHADER_FLAG_DISABLE_FRUSTUM_CULLING
// SCC_BACKEND_SHADER_FLAGS_END__
//SG_REFLECTION_BEGIN(200)
//attribute vec4 boneData 5
//attribute vec3 blendShape0Pos 6
//attribute vec3 blendShape0Normal 12
//attribute vec3 blendShape1Pos 7
//attribute vec3 blendShape1Normal 13
//attribute vec3 blendShape2Pos 8
//attribute vec3 blendShape2Normal 14
//attribute vec3 blendShape3Pos 9
//attribute vec3 blendShape4Pos 10
//attribute vec3 blendShape5Pos 11
//attribute vec4 position 0
//attribute vec3 normal 1
//attribute vec4 tangent 2
//attribute vec2 texture0 3
//attribute vec2 texture1 4
//attribute vec4 color 18
//attribute vec3 positionNext 15
//attribute vec3 positionPrevious 16
//attribute vec4 strandProperties 17
//output vec4 sc_FragData0 0
//output uvec4 sc_RayTracingPositionAndMask 0
//output uvec4 sc_RayTracingNormalAndMore 1
//sampler sampler baseTexSmpSC 0:31
//sampler sampler bodyDepthTexSmpSC 0:32
//sampler sampler detailNormalTexSmpSC 0:33
//sampler sampler emissiveTexSmpSC 0:34
//sampler sampler fluidPressureSmpSC 0:35
//sampler sampler heightmapSmpSC 0:36
//sampler sampler intensityTextureSmpSC 0:37
//sampler sampler materialParamsTexSmpSC 0:38
//sampler sampler normalTexSmpSC 0:39
//sampler sampler opacityTexSmpSC 0:40
//sampler sampler reflectionModulationTexSmpSC 0:41
//sampler sampler reflectionTexSmpSC 0:42
//sampler sampler rimColorTexSmpSC 0:43
//sampler sampler sc_EnvmapDiffuseSmpSC 0:44
//sampler sampler sc_EnvmapSpecularSmpSC 0:45
//sampler sampler sc_RayTracingGlobalIlluminationSmpSC 0:47
//sampler sampler sc_RayTracingReflectionsSmpSC 0:48
//sampler sampler sc_RayTracingShadowsSmpSC 0:49
//sampler sampler sc_SSAOTextureSmpSC 0:50
//sampler sampler sc_ScreenTextureSmpSC 0:51
//sampler sampler sc_ShadowTextureSmpSC 0:52
//texture texture2D baseTex 0:1:0:31
//texture texture2D bodyDepthTex 0:2:0:32
//texture texture2D detailNormalTex 0:3:0:33
//texture texture2D emissiveTex 0:4:0:34
//texture texture2D fluidPressure 0:5:0:35
//texture texture2D heightmap 0:6:0:36
//texture texture2D intensityTexture 0:7:0:37
//texture texture2D materialParamsTex 0:8:0:38
//texture texture2D normalTex 0:9:0:39
//texture texture2D opacityTex 0:10:0:40
//texture texture2D reflectionModulationTex 0:11:0:41
//texture texture2D reflectionTex 0:12:0:42
//texture texture2D rimColorTex 0:13:0:43
//texture texture2D sc_EnvmapDiffuse 0:14:0:44
//texture texture2D sc_EnvmapSpecular 0:15:0:45
//texture texture2D sc_RayTracingGlobalIllumination 0:24:0:47
//texture texture2D sc_RayTracingReflections 0:25:0:48
//texture texture2D sc_RayTracingShadows 0:26:0:49
//texture texture2D sc_SSAOTexture 0:27:0:50
//texture texture2D sc_ScreenTexture 0:28:0:51
//texture texture2D sc_ShadowTexture 0:29:0:52
//ubo float sc_BonesUBO 0:0:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:54:6368 {
//sc_PointLight_t sc_PointLights 0:[3]:80
//bool sc_PointLights.falloffEnabled 0
//float sc_PointLights.falloffEndDistance 4
//float sc_PointLights.negRcpFalloffEndDistance4 8
//float sc_PointLights.angleScale 12
//float sc_PointLights.angleOffset 16
//float3 sc_PointLights.direction 32
//float3 sc_PointLights.position 48
//float4 sc_PointLights.color 64
//sc_DirectionalLight_t sc_DirectionalLights 240:[5]:32
//float3 sc_DirectionalLights.direction 0
//float4 sc_DirectionalLights.color 16
//sc_AmbientLight_t sc_AmbientLights 400:[3]:32
//float3 sc_AmbientLights.color 0
//float sc_AmbientLights.intensity 16
//sc_LightEstimationData_t sc_LightEstimationData 496
//sc_SphericalGaussianLight_t sc_LightEstimationData.sg 0:[12]:48
//float3 sc_LightEstimationData.sg.color 0
//float sc_LightEstimationData.sg.sharpness 16
//float3 sc_LightEstimationData.sg.axis 32
//float3 sc_LightEstimationData.ambientLight 576
//float4 sc_EnvmapDiffuseSize 1088
//float4 sc_EnvmapSpecularSize 1136
//float3 sc_EnvmapRotation 1184
//float sc_EnvmapExposure 1200
//float3 sc_Sh 1216:[9]:16
//float sc_ShIntensity 1360
//float4 sc_Time 1376
//float4 sc_UniformConstants 1392
//float4x4 sc_ViewProjectionMatrixArray 1680:[2]:64
//float4x4 sc_ModelViewMatrixArray 1936:[2]:64
//float4x4 sc_ProjectionMatrixArray 2384:[2]:64
//float4x4 sc_ProjectionMatrixInverseArray 2512:[2]:64
//float4x4 sc_ViewMatrixArray 2640:[2]:64
//float4x4 sc_PrevFrameViewProjectionMatrixArray 2896:[2]:64
//float4x4 sc_ModelMatrix 3024
//float4x4 sc_ModelMatrixInverse 3088
//float3x3 sc_NormalMatrix 3152
//float4x4 sc_PrevFrameModelMatrix 3248
//float4 sc_CurrentRenderTargetDims 3456
//sc_Camera_t sc_Camera 3472
//float3 sc_Camera.position 0
//float sc_Camera.aspect 16
//float2 sc_Camera.clipPlanes 24
//float sc_ShadowDensity 3504
//float4 sc_ShadowColor 3520
//float4x4 sc_ProjectorMatrix 3536
//float4 weights0 3616
//float4 weights1 3632
//float4 sc_StereoClipPlanes 3664:[2]:16
//float2 sc_TAAJitterOffset 3704
//int sc_RayTracingReceiverEffectsMask 3824
//float3 sc_RayTracingOriginScale 3984
//uint sc_RayTracingReceiverMask 4000
//float3 sc_RayTracingOriginOffset 4032
//uint sc_RayTracingReceiverId 4048
//float4 voxelization_params_0 4064
//float4 voxelization_params_frustum_lrbt 4080
//float4 voxelization_params_frustum_nf 4096
//float3 voxelization_params_camera_pos 4112
//float4x4 sc_ModelMatrixVoxelization 4128
//float correctedIntensity 4192
//float3x3 intensityTextureTransform 4256
//float4 intensityTextureUvMinMax 4304
//float4 intensityTextureBorderColor 4320
//int PreviewEnabled 4484
//float alphaTestThreshold 4492
//float3 oceanPos 4496
//float3x3 heightmapTransform 4560
//float4 heightmapUvMinMax 4608
//float4 heightmapBorderColor 4624
//float2 unpackVal 4640
//float3 oceanMin 4656
//float3 oceanMax 4672
//float enableFluid 4688
//float2 pressureRange 4696
//float3x3 fluidPressureTransform 4752
//float4 fluidPressureUvMinMax 4800
//float4 fluidPressureBorderColor 4816
//float speed 4836
//float bodyIntersection 4840
//float4 baseColor 4848
//float3x3 baseTexTransform 4912
//float4 baseTexUvMinMax 4960
//float4 baseTexBorderColor 4976
//float3 recolorRed 4992
//float3 recolorGreen 5008
//float3 recolorBlue 5024
//float3x3 opacityTexTransform 5088
//float4 opacityTexUvMinMax 5136
//float4 opacityTexBorderColor 5152
//float3x3 normalTexTransform 5216
//float4 normalTexUvMinMax 5264
//float4 normalTexBorderColor 5280
//float3x3 detailNormalTexTransform 5344
//float4 detailNormalTexUvMinMax 5392
//float4 detailNormalTexBorderColor 5408
//float3x3 emissiveTexTransform 5472
//float4 emissiveTexUvMinMax 5520
//float4 emissiveTexBorderColor 5536
//float3 emissiveColor 5552
//float emissiveIntensity 5568
//float3x3 reflectionTexTransform 5632
//float4 reflectionTexUvMinMax 5680
//float4 reflectionTexBorderColor 5696
//float reflectionIntensity 5712
//float3x3 reflectionModulationTexTransform 5776
//float4 reflectionModulationTexUvMinMax 5824
//float4 reflectionModulationTexBorderColor 5840
//float3 rimColor 5856
//float rimIntensity 5872
//float rimExponent 5876
//float3x3 rimColorTexTransform 5936
//float4 rimColorTexUvMinMax 5984
//float4 rimColorTexBorderColor 6000
//float metallic 6016
//float roughness 6020
//float3x3 materialParamsTexTransform 6080
//float4 materialParamsTexUvMinMax 6128
//float4 materialParamsTexBorderColor 6144
//float specularAoIntensity 6160
//float specularAoDarkening 6164
//float2 uv2Scale 6168
//float2 uv2Offset 6176
//float2 uv3Scale 6184
//float2 uv3Offset 6192
//float3x3 bodyDepthTexTransform 6256
//float4 bodyDepthTexUvMinMax 6304
//float4 bodyDepthTexBorderColor 6320
//float4 bodyDepthTexProjectionMatrixTerms 6336
//float Port_BobPosSpeed_N153 6352
//float Port_BobPosAmount_N153 6356
//float Port_BobRotSpeed_N153 6360
//float Port_BobRotAmount_N153 6364
//}
//spec_const bool BLEND_MODE_AVERAGE 0 0
//spec_const bool BLEND_MODE_BRIGHT 1 0
//spec_const bool BLEND_MODE_COLOR_BURN 2 0
//spec_const bool BLEND_MODE_COLOR_DODGE 3 0
//spec_const bool BLEND_MODE_COLOR 4 0
//spec_const bool BLEND_MODE_DARKEN 5 0
//spec_const bool BLEND_MODE_DIFFERENCE 6 0
//spec_const bool BLEND_MODE_DIVIDE 7 0
//spec_const bool BLEND_MODE_DIVISION 8 0
//spec_const bool BLEND_MODE_EXCLUSION 9 0
//spec_const bool BLEND_MODE_FORGRAY 10 0
//spec_const bool BLEND_MODE_HARD_GLOW 11 0
//spec_const bool BLEND_MODE_HARD_LIGHT 12 0
//spec_const bool BLEND_MODE_HARD_MIX 13 0
//spec_const bool BLEND_MODE_HARD_PHOENIX 14 0
//spec_const bool BLEND_MODE_HARD_REFLECT 15 0
//spec_const bool BLEND_MODE_HUE 16 0
//spec_const bool BLEND_MODE_INTENSE 17 0
//spec_const bool BLEND_MODE_LIGHTEN 18 0
//spec_const bool BLEND_MODE_LINEAR_LIGHT 19 0
//spec_const bool BLEND_MODE_LUMINOSITY 20 0
//spec_const bool BLEND_MODE_NEGATION 21 0
//spec_const bool BLEND_MODE_NOTBRIGHT 22 0
//spec_const bool BLEND_MODE_OVERLAY 23 0
//spec_const bool BLEND_MODE_PIN_LIGHT 24 0
//spec_const bool BLEND_MODE_REALISTIC 25 0
//spec_const bool BLEND_MODE_SATURATION 26 0
//spec_const bool BLEND_MODE_SOFT_LIGHT 27 0
//spec_const bool BLEND_MODE_SUBTRACT 28 0
//spec_const bool BLEND_MODE_VIVID_LIGHT 29 0
//spec_const bool ENABLE_BASE_TEX 30 0
//spec_const bool ENABLE_DETAIL_NORMAL 31 0
//spec_const bool ENABLE_EMISSIVE 32 0
//spec_const bool ENABLE_MATERIAL_PARAM_TEX 33 0
//spec_const bool ENABLE_NORMALMAP 34 0
//spec_const bool ENABLE_OPACITY_TEX 35 0
//spec_const bool ENABLE_RECOLOR 36 0
//spec_const bool ENABLE_RIM_HIGHLIGHT 37 0
//spec_const bool ENABLE_RIM_INVERT 38 0
//spec_const bool ENABLE_SIMPLE_REFLECTION 39 0
//spec_const bool ENABLE_SPECULAR_AO 40 0
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 41 0
//spec_const bool ENABLE_UV2 42 0
//spec_const bool ENABLE_UV3 43 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_baseTex 44 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_bodyDepthTex 45 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_detailNormalTex 46 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_emissiveTex 47 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_fluidPressure 48 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_heightmap 49 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 50 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_materialParamsTex 51 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_normalTex 52 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_opacityTex 53 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_reflectionModulationTex 54 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_reflectionTex 55 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_rimColorTex 56 0
//spec_const bool SC_USE_UV_MIN_MAX_baseTex 57 0
//spec_const bool SC_USE_UV_MIN_MAX_bodyDepthTex 58 0
//spec_const bool SC_USE_UV_MIN_MAX_detailNormalTex 59 0
//spec_const bool SC_USE_UV_MIN_MAX_emissiveTex 60 0
//spec_const bool SC_USE_UV_MIN_MAX_fluidPressure 61 0
//spec_const bool SC_USE_UV_MIN_MAX_heightmap 62 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 63 0
//spec_const bool SC_USE_UV_MIN_MAX_materialParamsTex 64 0
//spec_const bool SC_USE_UV_MIN_MAX_normalTex 65 0
//spec_const bool SC_USE_UV_MIN_MAX_opacityTex 66 0
//spec_const bool SC_USE_UV_MIN_MAX_reflectionModulationTex 67 0
//spec_const bool SC_USE_UV_MIN_MAX_reflectionTex 68 0
//spec_const bool SC_USE_UV_MIN_MAX_rimColorTex 69 0
//spec_const bool SC_USE_UV_TRANSFORM_baseTex 70 0
//spec_const bool SC_USE_UV_TRANSFORM_bodyDepthTex 71 0
//spec_const bool SC_USE_UV_TRANSFORM_detailNormalTex 72 0
//spec_const bool SC_USE_UV_TRANSFORM_emissiveTex 73 0
//spec_const bool SC_USE_UV_TRANSFORM_fluidPressure 74 0
//spec_const bool SC_USE_UV_TRANSFORM_heightmap 75 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 76 0
//spec_const bool SC_USE_UV_TRANSFORM_materialParamsTex 77 0
//spec_const bool SC_USE_UV_TRANSFORM_normalTex 78 0
//spec_const bool SC_USE_UV_TRANSFORM_opacityTex 79 0
//spec_const bool SC_USE_UV_TRANSFORM_reflectionModulationTex 80 0
//spec_const bool SC_USE_UV_TRANSFORM_reflectionTex 81 0
//spec_const bool SC_USE_UV_TRANSFORM_rimColorTex 82 0
//spec_const bool Tweak_N177 83 0
//spec_const bool Tweak_N216 84 0
//spec_const bool UseViewSpaceDepthVariant 85 1
//spec_const bool baseTexHasSwappedViews 86 0
//spec_const bool bodyDepthTexHasSwappedViews 87 0
//spec_const bool detailNormalTexHasSwappedViews 88 0
//spec_const bool emissiveTexHasSwappedViews 89 0
//spec_const bool fluidPressureHasSwappedViews 90 0
//spec_const bool heightmapHasSwappedViews 91 0
//spec_const bool intensityTextureHasSwappedViews 92 0
//spec_const bool materialParamsTexHasSwappedViews 93 0
//spec_const bool normalTexHasSwappedViews 94 0
//spec_const bool opacityTexHasSwappedViews 95 0
//spec_const bool reflectionModulationTexHasSwappedViews 96 0
//spec_const bool reflectionTexHasSwappedViews 97 0
//spec_const bool rimColorTexHasSwappedViews 98 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 99 0
//spec_const bool sc_BlendMode_Add 100 0
//spec_const bool sc_BlendMode_AlphaTest 101 0
//spec_const bool sc_BlendMode_AlphaToCoverage 102 0
//spec_const bool sc_BlendMode_ColoredGlass 103 0
//spec_const bool sc_BlendMode_Custom 104 0
//spec_const bool sc_BlendMode_Max 105 0
//spec_const bool sc_BlendMode_Min 106 0
//spec_const bool sc_BlendMode_MultiplyOriginal 107 0
//spec_const bool sc_BlendMode_Multiply 108 0
//spec_const bool sc_BlendMode_Normal 109 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 110 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 111 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 112 0
//spec_const bool sc_BlendMode_Screen 113 0
//spec_const bool sc_DepthOnly 114 0
//spec_const bool sc_EnvmapDiffuseHasSwappedViews 115 0
//spec_const bool sc_EnvmapSpecularHasSwappedViews 116 0
//spec_const bool sc_FramebufferFetch 117 0
//spec_const bool sc_HasDiffuseEnvmap 118 0
//spec_const bool sc_IsEditor 119 0
//spec_const bool sc_LightEstimation 120 0
//spec_const bool sc_MotionVectorsPass 121 0
//spec_const bool sc_OITCompositingPass 122 0
//spec_const bool sc_OITDepthBoundsPass 123 0
//spec_const bool sc_OITDepthGatherPass 124 0
//spec_const bool sc_OutputBounds 125 0
//spec_const bool sc_ProjectiveShadowsCaster 126 0
//spec_const bool sc_ProjectiveShadowsReceiver 127 0
//spec_const bool sc_RayTracingGlobalIlluminationHasSwappedViews 128 0
//spec_const bool sc_RayTracingReflectionsHasSwappedViews 129 0
//spec_const bool sc_RayTracingShadowsHasSwappedViews 130 0
//spec_const bool sc_RenderAlphaToColor 131 0
//spec_const bool sc_SSAOEnabled 132 0
//spec_const bool sc_ScreenTextureHasSwappedViews 133 0
//spec_const bool sc_TAAEnabled 134 0
//spec_const bool sc_VertexBlendingUseNormals 135 0
//spec_const bool sc_VertexBlending 136 0
//spec_const bool sc_Voxelization 137 0
//spec_const bool uv2EnableAnimation 138 0
//spec_const bool uv3EnableAnimation 139 0
//spec_const int NODE_13_DROPLIST_ITEM 140 0
//spec_const int NODE_181_DROPLIST_ITEM 141 0
//spec_const int NODE_184_DROPLIST_ITEM 142 0
//spec_const int NODE_221_DROPLIST_ITEM 143 0
//spec_const int NODE_228_DROPLIST_ITEM 144 0
//spec_const int NODE_27_DROPLIST_ITEM 145 0
//spec_const int NODE_315_DROPLIST_ITEM 146 0
//spec_const int NODE_38_DROPLIST_ITEM 147 0
//spec_const int NODE_49_DROPLIST_ITEM 148 0
//spec_const int NODE_69_DROPLIST_ITEM 149 0
//spec_const int NODE_76_DROPLIST_ITEM 150 0
//spec_const int SC_DEVICE_CLASS 151 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_baseTex 152 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_bodyDepthTex 153 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_detailNormalTex 154 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_emissiveTex 155 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_fluidPressure 156 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_heightmap 157 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 158 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_materialParamsTex 159 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_normalTex 160 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_opacityTex 161 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex 162 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_reflectionTex 163 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_rimColorTex 164 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_baseTex 165 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_bodyDepthTex 166 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_detailNormalTex 167 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_emissiveTex 168 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_fluidPressure 169 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_heightmap 170 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 171 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_materialParamsTex 172 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_normalTex 173 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_opacityTex 174 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex 175 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_reflectionTex 176 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_rimColorTex 177 -1
//spec_const int baseTexLayout 178 0
//spec_const int bodyDepthTexLayout 179 0
//spec_const int detailNormalTexLayout 180 0
//spec_const int emissiveTexLayout 181 0
//spec_const int fluidPressureLayout 182 0
//spec_const int heightmapLayout 183 0
//spec_const int intensityTextureLayout 184 0
//spec_const int materialParamsTexLayout 185 0
//spec_const int normalTexLayout 186 0
//spec_const int opacityTexLayout 187 0
//spec_const int reflectionModulationTexLayout 188 0
//spec_const int reflectionTexLayout 189 0
//spec_const int rimColorTexLayout 190 0
//spec_const int sc_AmbientLightMode0 191 0
//spec_const int sc_AmbientLightMode1 192 0
//spec_const int sc_AmbientLightMode2 193 0
//spec_const int sc_AmbientLightMode_Constant 194 0
//spec_const int sc_AmbientLightMode_EnvironmentMap 195 0
//spec_const int sc_AmbientLightMode_FromCamera 196 0
//spec_const int sc_AmbientLightMode_SphericalHarmonics 197 0
//spec_const int sc_AmbientLightsCount 198 0
//spec_const int sc_DepthBufferMode 199 0
//spec_const int sc_DirectionalLightsCount 200 0
//spec_const int sc_EnvLightMode 201 0
//spec_const int sc_EnvmapDiffuseLayout 202 0
//spec_const int sc_EnvmapSpecularLayout 203 0
//spec_const int sc_LightEstimationSGCount 204 0
//spec_const int sc_PointLightsCount 205 0
//spec_const int sc_RayTracingGlobalIlluminationLayout 206 0
//spec_const int sc_RayTracingReflectionsLayout 207 0
//spec_const int sc_RayTracingShadowsLayout 208 0
//spec_const int sc_RenderingSpace 209 -1
//spec_const int sc_ScreenTextureLayout 210 0
//spec_const int sc_ShaderCacheConstant 211 0
//spec_const int sc_SkinBonesCount 212 0
//spec_const int sc_StereoRenderingMode 213 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 214 0
//SG_REFLECTION_END
constant bool BLEND_MODE_AVERAGE [[function_constant(0)]];
constant bool BLEND_MODE_AVERAGE_tmp = is_function_constant_defined(BLEND_MODE_AVERAGE) ? BLEND_MODE_AVERAGE : false;
constant bool BLEND_MODE_BRIGHT [[function_constant(1)]];
constant bool BLEND_MODE_BRIGHT_tmp = is_function_constant_defined(BLEND_MODE_BRIGHT) ? BLEND_MODE_BRIGHT : false;
constant bool BLEND_MODE_COLOR_BURN [[function_constant(2)]];
constant bool BLEND_MODE_COLOR_BURN_tmp = is_function_constant_defined(BLEND_MODE_COLOR_BURN) ? BLEND_MODE_COLOR_BURN : false;
constant bool BLEND_MODE_COLOR_DODGE [[function_constant(3)]];
constant bool BLEND_MODE_COLOR_DODGE_tmp = is_function_constant_defined(BLEND_MODE_COLOR_DODGE) ? BLEND_MODE_COLOR_DODGE : false;
constant bool BLEND_MODE_COLOR [[function_constant(4)]];
constant bool BLEND_MODE_COLOR_tmp = is_function_constant_defined(BLEND_MODE_COLOR) ? BLEND_MODE_COLOR : false;
constant bool BLEND_MODE_DARKEN [[function_constant(5)]];
constant bool BLEND_MODE_DARKEN_tmp = is_function_constant_defined(BLEND_MODE_DARKEN) ? BLEND_MODE_DARKEN : false;
constant bool BLEND_MODE_DIFFERENCE [[function_constant(6)]];
constant bool BLEND_MODE_DIFFERENCE_tmp = is_function_constant_defined(BLEND_MODE_DIFFERENCE) ? BLEND_MODE_DIFFERENCE : false;
constant bool BLEND_MODE_DIVIDE [[function_constant(7)]];
constant bool BLEND_MODE_DIVIDE_tmp = is_function_constant_defined(BLEND_MODE_DIVIDE) ? BLEND_MODE_DIVIDE : false;
constant bool BLEND_MODE_DIVISION [[function_constant(8)]];
constant bool BLEND_MODE_DIVISION_tmp = is_function_constant_defined(BLEND_MODE_DIVISION) ? BLEND_MODE_DIVISION : false;
constant bool BLEND_MODE_EXCLUSION [[function_constant(9)]];
constant bool BLEND_MODE_EXCLUSION_tmp = is_function_constant_defined(BLEND_MODE_EXCLUSION) ? BLEND_MODE_EXCLUSION : false;
constant bool BLEND_MODE_FORGRAY [[function_constant(10)]];
constant bool BLEND_MODE_FORGRAY_tmp = is_function_constant_defined(BLEND_MODE_FORGRAY) ? BLEND_MODE_FORGRAY : false;
constant bool BLEND_MODE_HARD_GLOW [[function_constant(11)]];
constant bool BLEND_MODE_HARD_GLOW_tmp = is_function_constant_defined(BLEND_MODE_HARD_GLOW) ? BLEND_MODE_HARD_GLOW : false;
constant bool BLEND_MODE_HARD_LIGHT [[function_constant(12)]];
constant bool BLEND_MODE_HARD_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_HARD_LIGHT) ? BLEND_MODE_HARD_LIGHT : false;
constant bool BLEND_MODE_HARD_MIX [[function_constant(13)]];
constant bool BLEND_MODE_HARD_MIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_MIX) ? BLEND_MODE_HARD_MIX : false;
constant bool BLEND_MODE_HARD_PHOENIX [[function_constant(14)]];
constant bool BLEND_MODE_HARD_PHOENIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_PHOENIX) ? BLEND_MODE_HARD_PHOENIX : false;
constant bool BLEND_MODE_HARD_REFLECT [[function_constant(15)]];
constant bool BLEND_MODE_HARD_REFLECT_tmp = is_function_constant_defined(BLEND_MODE_HARD_REFLECT) ? BLEND_MODE_HARD_REFLECT : false;
constant bool BLEND_MODE_HUE [[function_constant(16)]];
constant bool BLEND_MODE_HUE_tmp = is_function_constant_defined(BLEND_MODE_HUE) ? BLEND_MODE_HUE : false;
constant bool BLEND_MODE_INTENSE [[function_constant(17)]];
constant bool BLEND_MODE_INTENSE_tmp = is_function_constant_defined(BLEND_MODE_INTENSE) ? BLEND_MODE_INTENSE : false;
constant bool BLEND_MODE_LIGHTEN [[function_constant(18)]];
constant bool BLEND_MODE_LIGHTEN_tmp = is_function_constant_defined(BLEND_MODE_LIGHTEN) ? BLEND_MODE_LIGHTEN : false;
constant bool BLEND_MODE_LINEAR_LIGHT [[function_constant(19)]];
constant bool BLEND_MODE_LINEAR_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_LINEAR_LIGHT) ? BLEND_MODE_LINEAR_LIGHT : false;
constant bool BLEND_MODE_LUMINOSITY [[function_constant(20)]];
constant bool BLEND_MODE_LUMINOSITY_tmp = is_function_constant_defined(BLEND_MODE_LUMINOSITY) ? BLEND_MODE_LUMINOSITY : false;
constant bool BLEND_MODE_NEGATION [[function_constant(21)]];
constant bool BLEND_MODE_NEGATION_tmp = is_function_constant_defined(BLEND_MODE_NEGATION) ? BLEND_MODE_NEGATION : false;
constant bool BLEND_MODE_NOTBRIGHT [[function_constant(22)]];
constant bool BLEND_MODE_NOTBRIGHT_tmp = is_function_constant_defined(BLEND_MODE_NOTBRIGHT) ? BLEND_MODE_NOTBRIGHT : false;
constant bool BLEND_MODE_OVERLAY [[function_constant(23)]];
constant bool BLEND_MODE_OVERLAY_tmp = is_function_constant_defined(BLEND_MODE_OVERLAY) ? BLEND_MODE_OVERLAY : false;
constant bool BLEND_MODE_PIN_LIGHT [[function_constant(24)]];
constant bool BLEND_MODE_PIN_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_PIN_LIGHT) ? BLEND_MODE_PIN_LIGHT : false;
constant bool BLEND_MODE_REALISTIC [[function_constant(25)]];
constant bool BLEND_MODE_REALISTIC_tmp = is_function_constant_defined(BLEND_MODE_REALISTIC) ? BLEND_MODE_REALISTIC : false;
constant bool BLEND_MODE_SATURATION [[function_constant(26)]];
constant bool BLEND_MODE_SATURATION_tmp = is_function_constant_defined(BLEND_MODE_SATURATION) ? BLEND_MODE_SATURATION : false;
constant bool BLEND_MODE_SOFT_LIGHT [[function_constant(27)]];
constant bool BLEND_MODE_SOFT_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_SOFT_LIGHT) ? BLEND_MODE_SOFT_LIGHT : false;
constant bool BLEND_MODE_SUBTRACT [[function_constant(28)]];
constant bool BLEND_MODE_SUBTRACT_tmp = is_function_constant_defined(BLEND_MODE_SUBTRACT) ? BLEND_MODE_SUBTRACT : false;
constant bool BLEND_MODE_VIVID_LIGHT [[function_constant(29)]];
constant bool BLEND_MODE_VIVID_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_VIVID_LIGHT) ? BLEND_MODE_VIVID_LIGHT : false;
constant bool ENABLE_BASE_TEX [[function_constant(30)]];
constant bool ENABLE_BASE_TEX_tmp = is_function_constant_defined(ENABLE_BASE_TEX) ? ENABLE_BASE_TEX : false;
constant bool ENABLE_DETAIL_NORMAL [[function_constant(31)]];
constant bool ENABLE_DETAIL_NORMAL_tmp = is_function_constant_defined(ENABLE_DETAIL_NORMAL) ? ENABLE_DETAIL_NORMAL : false;
constant bool ENABLE_EMISSIVE [[function_constant(32)]];
constant bool ENABLE_EMISSIVE_tmp = is_function_constant_defined(ENABLE_EMISSIVE) ? ENABLE_EMISSIVE : false;
constant bool ENABLE_MATERIAL_PARAM_TEX [[function_constant(33)]];
constant bool ENABLE_MATERIAL_PARAM_TEX_tmp = is_function_constant_defined(ENABLE_MATERIAL_PARAM_TEX) ? ENABLE_MATERIAL_PARAM_TEX : false;
constant bool ENABLE_NORMALMAP [[function_constant(34)]];
constant bool ENABLE_NORMALMAP_tmp = is_function_constant_defined(ENABLE_NORMALMAP) ? ENABLE_NORMALMAP : false;
constant bool ENABLE_OPACITY_TEX [[function_constant(35)]];
constant bool ENABLE_OPACITY_TEX_tmp = is_function_constant_defined(ENABLE_OPACITY_TEX) ? ENABLE_OPACITY_TEX : false;
constant bool ENABLE_RECOLOR [[function_constant(36)]];
constant bool ENABLE_RECOLOR_tmp = is_function_constant_defined(ENABLE_RECOLOR) ? ENABLE_RECOLOR : false;
constant bool ENABLE_RIM_HIGHLIGHT [[function_constant(37)]];
constant bool ENABLE_RIM_HIGHLIGHT_tmp = is_function_constant_defined(ENABLE_RIM_HIGHLIGHT) ? ENABLE_RIM_HIGHLIGHT : false;
constant bool ENABLE_RIM_INVERT [[function_constant(38)]];
constant bool ENABLE_RIM_INVERT_tmp = is_function_constant_defined(ENABLE_RIM_INVERT) ? ENABLE_RIM_INVERT : false;
constant bool ENABLE_SIMPLE_REFLECTION [[function_constant(39)]];
constant bool ENABLE_SIMPLE_REFLECTION_tmp = is_function_constant_defined(ENABLE_SIMPLE_REFLECTION) ? ENABLE_SIMPLE_REFLECTION : false;
constant bool ENABLE_SPECULAR_AO [[function_constant(40)]];
constant bool ENABLE_SPECULAR_AO_tmp = is_function_constant_defined(ENABLE_SPECULAR_AO) ? ENABLE_SPECULAR_AO : false;
constant bool ENABLE_STIPPLE_PATTERN_TEST [[function_constant(41)]];
constant bool ENABLE_STIPPLE_PATTERN_TEST_tmp = is_function_constant_defined(ENABLE_STIPPLE_PATTERN_TEST) ? ENABLE_STIPPLE_PATTERN_TEST : false;
constant bool ENABLE_UV2 [[function_constant(42)]];
constant bool ENABLE_UV2_tmp = is_function_constant_defined(ENABLE_UV2) ? ENABLE_UV2 : false;
constant bool ENABLE_UV3 [[function_constant(43)]];
constant bool ENABLE_UV3_tmp = is_function_constant_defined(ENABLE_UV3) ? ENABLE_UV3 : false;
constant bool SC_USE_CLAMP_TO_BORDER_baseTex [[function_constant(44)]];
constant bool SC_USE_CLAMP_TO_BORDER_baseTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_baseTex) ? SC_USE_CLAMP_TO_BORDER_baseTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_bodyDepthTex [[function_constant(45)]];
constant bool SC_USE_CLAMP_TO_BORDER_bodyDepthTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_bodyDepthTex) ? SC_USE_CLAMP_TO_BORDER_bodyDepthTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_detailNormalTex [[function_constant(46)]];
constant bool SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_detailNormalTex) ? SC_USE_CLAMP_TO_BORDER_detailNormalTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_emissiveTex [[function_constant(47)]];
constant bool SC_USE_CLAMP_TO_BORDER_emissiveTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_emissiveTex) ? SC_USE_CLAMP_TO_BORDER_emissiveTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_fluidPressure [[function_constant(48)]];
constant bool SC_USE_CLAMP_TO_BORDER_fluidPressure_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_fluidPressure) ? SC_USE_CLAMP_TO_BORDER_fluidPressure : false;
constant bool SC_USE_CLAMP_TO_BORDER_heightmap [[function_constant(49)]];
constant bool SC_USE_CLAMP_TO_BORDER_heightmap_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_heightmap) ? SC_USE_CLAMP_TO_BORDER_heightmap : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(50)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_materialParamsTex [[function_constant(51)]];
constant bool SC_USE_CLAMP_TO_BORDER_materialParamsTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_materialParamsTex) ? SC_USE_CLAMP_TO_BORDER_materialParamsTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_normalTex [[function_constant(52)]];
constant bool SC_USE_CLAMP_TO_BORDER_normalTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_normalTex) ? SC_USE_CLAMP_TO_BORDER_normalTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_opacityTex [[function_constant(53)]];
constant bool SC_USE_CLAMP_TO_BORDER_opacityTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_opacityTex) ? SC_USE_CLAMP_TO_BORDER_opacityTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_reflectionModulationTex [[function_constant(54)]];
constant bool SC_USE_CLAMP_TO_BORDER_reflectionModulationTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex) ? SC_USE_CLAMP_TO_BORDER_reflectionModulationTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_reflectionTex [[function_constant(55)]];
constant bool SC_USE_CLAMP_TO_BORDER_reflectionTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_reflectionTex) ? SC_USE_CLAMP_TO_BORDER_reflectionTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_rimColorTex [[function_constant(56)]];
constant bool SC_USE_CLAMP_TO_BORDER_rimColorTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_rimColorTex) ? SC_USE_CLAMP_TO_BORDER_rimColorTex : false;
constant bool SC_USE_UV_MIN_MAX_baseTex [[function_constant(57)]];
constant bool SC_USE_UV_MIN_MAX_baseTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_baseTex) ? SC_USE_UV_MIN_MAX_baseTex : false;
constant bool SC_USE_UV_MIN_MAX_bodyDepthTex [[function_constant(58)]];
constant bool SC_USE_UV_MIN_MAX_bodyDepthTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_bodyDepthTex) ? SC_USE_UV_MIN_MAX_bodyDepthTex : false;
constant bool SC_USE_UV_MIN_MAX_detailNormalTex [[function_constant(59)]];
constant bool SC_USE_UV_MIN_MAX_detailNormalTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_detailNormalTex) ? SC_USE_UV_MIN_MAX_detailNormalTex : false;
constant bool SC_USE_UV_MIN_MAX_emissiveTex [[function_constant(60)]];
constant bool SC_USE_UV_MIN_MAX_emissiveTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_emissiveTex) ? SC_USE_UV_MIN_MAX_emissiveTex : false;
constant bool SC_USE_UV_MIN_MAX_fluidPressure [[function_constant(61)]];
constant bool SC_USE_UV_MIN_MAX_fluidPressure_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_fluidPressure) ? SC_USE_UV_MIN_MAX_fluidPressure : false;
constant bool SC_USE_UV_MIN_MAX_heightmap [[function_constant(62)]];
constant bool SC_USE_UV_MIN_MAX_heightmap_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_heightmap) ? SC_USE_UV_MIN_MAX_heightmap : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(63)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_materialParamsTex [[function_constant(64)]];
constant bool SC_USE_UV_MIN_MAX_materialParamsTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_materialParamsTex) ? SC_USE_UV_MIN_MAX_materialParamsTex : false;
constant bool SC_USE_UV_MIN_MAX_normalTex [[function_constant(65)]];
constant bool SC_USE_UV_MIN_MAX_normalTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_normalTex) ? SC_USE_UV_MIN_MAX_normalTex : false;
constant bool SC_USE_UV_MIN_MAX_opacityTex [[function_constant(66)]];
constant bool SC_USE_UV_MIN_MAX_opacityTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_opacityTex) ? SC_USE_UV_MIN_MAX_opacityTex : false;
constant bool SC_USE_UV_MIN_MAX_reflectionModulationTex [[function_constant(67)]];
constant bool SC_USE_UV_MIN_MAX_reflectionModulationTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_reflectionModulationTex) ? SC_USE_UV_MIN_MAX_reflectionModulationTex : false;
constant bool SC_USE_UV_MIN_MAX_reflectionTex [[function_constant(68)]];
constant bool SC_USE_UV_MIN_MAX_reflectionTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_reflectionTex) ? SC_USE_UV_MIN_MAX_reflectionTex : false;
constant bool SC_USE_UV_MIN_MAX_rimColorTex [[function_constant(69)]];
constant bool SC_USE_UV_MIN_MAX_rimColorTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_rimColorTex) ? SC_USE_UV_MIN_MAX_rimColorTex : false;
constant bool SC_USE_UV_TRANSFORM_baseTex [[function_constant(70)]];
constant bool SC_USE_UV_TRANSFORM_baseTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_baseTex) ? SC_USE_UV_TRANSFORM_baseTex : false;
constant bool SC_USE_UV_TRANSFORM_bodyDepthTex [[function_constant(71)]];
constant bool SC_USE_UV_TRANSFORM_bodyDepthTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_bodyDepthTex) ? SC_USE_UV_TRANSFORM_bodyDepthTex : false;
constant bool SC_USE_UV_TRANSFORM_detailNormalTex [[function_constant(72)]];
constant bool SC_USE_UV_TRANSFORM_detailNormalTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_detailNormalTex) ? SC_USE_UV_TRANSFORM_detailNormalTex : false;
constant bool SC_USE_UV_TRANSFORM_emissiveTex [[function_constant(73)]];
constant bool SC_USE_UV_TRANSFORM_emissiveTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_emissiveTex) ? SC_USE_UV_TRANSFORM_emissiveTex : false;
constant bool SC_USE_UV_TRANSFORM_fluidPressure [[function_constant(74)]];
constant bool SC_USE_UV_TRANSFORM_fluidPressure_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_fluidPressure) ? SC_USE_UV_TRANSFORM_fluidPressure : false;
constant bool SC_USE_UV_TRANSFORM_heightmap [[function_constant(75)]];
constant bool SC_USE_UV_TRANSFORM_heightmap_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_heightmap) ? SC_USE_UV_TRANSFORM_heightmap : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(76)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_materialParamsTex [[function_constant(77)]];
constant bool SC_USE_UV_TRANSFORM_materialParamsTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_materialParamsTex) ? SC_USE_UV_TRANSFORM_materialParamsTex : false;
constant bool SC_USE_UV_TRANSFORM_normalTex [[function_constant(78)]];
constant bool SC_USE_UV_TRANSFORM_normalTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_normalTex) ? SC_USE_UV_TRANSFORM_normalTex : false;
constant bool SC_USE_UV_TRANSFORM_opacityTex [[function_constant(79)]];
constant bool SC_USE_UV_TRANSFORM_opacityTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_opacityTex) ? SC_USE_UV_TRANSFORM_opacityTex : false;
constant bool SC_USE_UV_TRANSFORM_reflectionModulationTex [[function_constant(80)]];
constant bool SC_USE_UV_TRANSFORM_reflectionModulationTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_reflectionModulationTex) ? SC_USE_UV_TRANSFORM_reflectionModulationTex : false;
constant bool SC_USE_UV_TRANSFORM_reflectionTex [[function_constant(81)]];
constant bool SC_USE_UV_TRANSFORM_reflectionTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_reflectionTex) ? SC_USE_UV_TRANSFORM_reflectionTex : false;
constant bool SC_USE_UV_TRANSFORM_rimColorTex [[function_constant(82)]];
constant bool SC_USE_UV_TRANSFORM_rimColorTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_rimColorTex) ? SC_USE_UV_TRANSFORM_rimColorTex : false;
constant bool Tweak_N177 [[function_constant(83)]];
constant bool Tweak_N177_tmp = is_function_constant_defined(Tweak_N177) ? Tweak_N177 : false;
constant bool Tweak_N216 [[function_constant(84)]];
constant bool Tweak_N216_tmp = is_function_constant_defined(Tweak_N216) ? Tweak_N216 : false;
constant bool UseViewSpaceDepthVariant [[function_constant(85)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool baseTexHasSwappedViews [[function_constant(86)]];
constant bool baseTexHasSwappedViews_tmp = is_function_constant_defined(baseTexHasSwappedViews) ? baseTexHasSwappedViews : false;
constant bool bodyDepthTexHasSwappedViews [[function_constant(87)]];
constant bool bodyDepthTexHasSwappedViews_tmp = is_function_constant_defined(bodyDepthTexHasSwappedViews) ? bodyDepthTexHasSwappedViews : false;
constant bool detailNormalTexHasSwappedViews [[function_constant(88)]];
constant bool detailNormalTexHasSwappedViews_tmp = is_function_constant_defined(detailNormalTexHasSwappedViews) ? detailNormalTexHasSwappedViews : false;
constant bool emissiveTexHasSwappedViews [[function_constant(89)]];
constant bool emissiveTexHasSwappedViews_tmp = is_function_constant_defined(emissiveTexHasSwappedViews) ? emissiveTexHasSwappedViews : false;
constant bool fluidPressureHasSwappedViews [[function_constant(90)]];
constant bool fluidPressureHasSwappedViews_tmp = is_function_constant_defined(fluidPressureHasSwappedViews) ? fluidPressureHasSwappedViews : false;
constant bool heightmapHasSwappedViews [[function_constant(91)]];
constant bool heightmapHasSwappedViews_tmp = is_function_constant_defined(heightmapHasSwappedViews) ? heightmapHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(92)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool materialParamsTexHasSwappedViews [[function_constant(93)]];
constant bool materialParamsTexHasSwappedViews_tmp = is_function_constant_defined(materialParamsTexHasSwappedViews) ? materialParamsTexHasSwappedViews : false;
constant bool normalTexHasSwappedViews [[function_constant(94)]];
constant bool normalTexHasSwappedViews_tmp = is_function_constant_defined(normalTexHasSwappedViews) ? normalTexHasSwappedViews : false;
constant bool opacityTexHasSwappedViews [[function_constant(95)]];
constant bool opacityTexHasSwappedViews_tmp = is_function_constant_defined(opacityTexHasSwappedViews) ? opacityTexHasSwappedViews : false;
constant bool reflectionModulationTexHasSwappedViews [[function_constant(96)]];
constant bool reflectionModulationTexHasSwappedViews_tmp = is_function_constant_defined(reflectionModulationTexHasSwappedViews) ? reflectionModulationTexHasSwappedViews : false;
constant bool reflectionTexHasSwappedViews [[function_constant(97)]];
constant bool reflectionTexHasSwappedViews_tmp = is_function_constant_defined(reflectionTexHasSwappedViews) ? reflectionTexHasSwappedViews : false;
constant bool rimColorTexHasSwappedViews [[function_constant(98)]];
constant bool rimColorTexHasSwappedViews_tmp = is_function_constant_defined(rimColorTexHasSwappedViews) ? rimColorTexHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(99)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(100)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(101)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(102)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(103)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(104)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(105)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(106)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(107)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(108)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(109)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(110)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(111)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(112)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(113)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(114)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_EnvmapDiffuseHasSwappedViews [[function_constant(115)]];
constant bool sc_EnvmapDiffuseHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapDiffuseHasSwappedViews) ? sc_EnvmapDiffuseHasSwappedViews : false;
constant bool sc_EnvmapSpecularHasSwappedViews [[function_constant(116)]];
constant bool sc_EnvmapSpecularHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapSpecularHasSwappedViews) ? sc_EnvmapSpecularHasSwappedViews : false;
constant bool sc_FramebufferFetch [[function_constant(117)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_HasDiffuseEnvmap [[function_constant(118)]];
constant bool sc_HasDiffuseEnvmap_tmp = is_function_constant_defined(sc_HasDiffuseEnvmap) ? sc_HasDiffuseEnvmap : false;
constant bool sc_IsEditor [[function_constant(119)]];
constant bool sc_IsEditor_tmp = is_function_constant_defined(sc_IsEditor) ? sc_IsEditor : false;
constant bool sc_LightEstimation [[function_constant(120)]];
constant bool sc_LightEstimation_tmp = is_function_constant_defined(sc_LightEstimation) ? sc_LightEstimation : false;
constant bool sc_MotionVectorsPass [[function_constant(121)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(122)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(123)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(124)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(125)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(126)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(127)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews [[function_constant(128)]];
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationHasSwappedViews) ? sc_RayTracingGlobalIlluminationHasSwappedViews : false;
constant bool sc_RayTracingReflectionsHasSwappedViews [[function_constant(129)]];
constant bool sc_RayTracingReflectionsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingReflectionsHasSwappedViews) ? sc_RayTracingReflectionsHasSwappedViews : false;
constant bool sc_RayTracingShadowsHasSwappedViews [[function_constant(130)]];
constant bool sc_RayTracingShadowsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingShadowsHasSwappedViews) ? sc_RayTracingShadowsHasSwappedViews : false;
constant bool sc_RenderAlphaToColor [[function_constant(131)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_SSAOEnabled [[function_constant(132)]];
constant bool sc_SSAOEnabled_tmp = is_function_constant_defined(sc_SSAOEnabled) ? sc_SSAOEnabled : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(133)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(134)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(135)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(136)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(137)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant bool uv2EnableAnimation [[function_constant(138)]];
constant bool uv2EnableAnimation_tmp = is_function_constant_defined(uv2EnableAnimation) ? uv2EnableAnimation : false;
constant bool uv3EnableAnimation [[function_constant(139)]];
constant bool uv3EnableAnimation_tmp = is_function_constant_defined(uv3EnableAnimation) ? uv3EnableAnimation : false;
constant int NODE_13_DROPLIST_ITEM [[function_constant(140)]];
constant int NODE_13_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_13_DROPLIST_ITEM) ? NODE_13_DROPLIST_ITEM : 0;
constant int NODE_181_DROPLIST_ITEM [[function_constant(141)]];
constant int NODE_181_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_181_DROPLIST_ITEM) ? NODE_181_DROPLIST_ITEM : 0;
constant int NODE_184_DROPLIST_ITEM [[function_constant(142)]];
constant int NODE_184_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_184_DROPLIST_ITEM) ? NODE_184_DROPLIST_ITEM : 0;
constant int NODE_221_DROPLIST_ITEM [[function_constant(143)]];
constant int NODE_221_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_221_DROPLIST_ITEM) ? NODE_221_DROPLIST_ITEM : 0;
constant int NODE_228_DROPLIST_ITEM [[function_constant(144)]];
constant int NODE_228_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_228_DROPLIST_ITEM) ? NODE_228_DROPLIST_ITEM : 0;
constant int NODE_27_DROPLIST_ITEM [[function_constant(145)]];
constant int NODE_27_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_27_DROPLIST_ITEM) ? NODE_27_DROPLIST_ITEM : 0;
constant int NODE_315_DROPLIST_ITEM [[function_constant(146)]];
constant int NODE_315_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_315_DROPLIST_ITEM) ? NODE_315_DROPLIST_ITEM : 0;
constant int NODE_38_DROPLIST_ITEM [[function_constant(147)]];
constant int NODE_38_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_38_DROPLIST_ITEM) ? NODE_38_DROPLIST_ITEM : 0;
constant int NODE_49_DROPLIST_ITEM [[function_constant(148)]];
constant int NODE_49_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_49_DROPLIST_ITEM) ? NODE_49_DROPLIST_ITEM : 0;
constant int NODE_69_DROPLIST_ITEM [[function_constant(149)]];
constant int NODE_69_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_69_DROPLIST_ITEM) ? NODE_69_DROPLIST_ITEM : 0;
constant int NODE_76_DROPLIST_ITEM [[function_constant(150)]];
constant int NODE_76_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_76_DROPLIST_ITEM) ? NODE_76_DROPLIST_ITEM : 0;
constant int SC_DEVICE_CLASS [[function_constant(151)]];
constant int SC_DEVICE_CLASS_tmp = is_function_constant_defined(SC_DEVICE_CLASS) ? SC_DEVICE_CLASS : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_baseTex [[function_constant(152)]];
constant int SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_baseTex) ? SC_SOFTWARE_WRAP_MODE_U_baseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_bodyDepthTex [[function_constant(153)]];
constant int SC_SOFTWARE_WRAP_MODE_U_bodyDepthTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_bodyDepthTex) ? SC_SOFTWARE_WRAP_MODE_U_bodyDepthTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_detailNormalTex [[function_constant(154)]];
constant int SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex) ? SC_SOFTWARE_WRAP_MODE_U_detailNormalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_emissiveTex [[function_constant(155)]];
constant int SC_SOFTWARE_WRAP_MODE_U_emissiveTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_emissiveTex) ? SC_SOFTWARE_WRAP_MODE_U_emissiveTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_fluidPressure [[function_constant(156)]];
constant int SC_SOFTWARE_WRAP_MODE_U_fluidPressure_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_fluidPressure) ? SC_SOFTWARE_WRAP_MODE_U_fluidPressure : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_heightmap [[function_constant(157)]];
constant int SC_SOFTWARE_WRAP_MODE_U_heightmap_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_heightmap) ? SC_SOFTWARE_WRAP_MODE_U_heightmap : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(158)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_materialParamsTex [[function_constant(159)]];
constant int SC_SOFTWARE_WRAP_MODE_U_materialParamsTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex) ? SC_SOFTWARE_WRAP_MODE_U_materialParamsTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_normalTex [[function_constant(160)]];
constant int SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_normalTex) ? SC_SOFTWARE_WRAP_MODE_U_normalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_opacityTex [[function_constant(161)]];
constant int SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_opacityTex) ? SC_SOFTWARE_WRAP_MODE_U_opacityTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex [[function_constant(162)]];
constant int SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex) ? SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_reflectionTex [[function_constant(163)]];
constant int SC_SOFTWARE_WRAP_MODE_U_reflectionTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_reflectionTex) ? SC_SOFTWARE_WRAP_MODE_U_reflectionTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_rimColorTex [[function_constant(164)]];
constant int SC_SOFTWARE_WRAP_MODE_U_rimColorTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_rimColorTex) ? SC_SOFTWARE_WRAP_MODE_U_rimColorTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_baseTex [[function_constant(165)]];
constant int SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_baseTex) ? SC_SOFTWARE_WRAP_MODE_V_baseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_bodyDepthTex [[function_constant(166)]];
constant int SC_SOFTWARE_WRAP_MODE_V_bodyDepthTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_bodyDepthTex) ? SC_SOFTWARE_WRAP_MODE_V_bodyDepthTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_detailNormalTex [[function_constant(167)]];
constant int SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_detailNormalTex) ? SC_SOFTWARE_WRAP_MODE_V_detailNormalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_emissiveTex [[function_constant(168)]];
constant int SC_SOFTWARE_WRAP_MODE_V_emissiveTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_emissiveTex) ? SC_SOFTWARE_WRAP_MODE_V_emissiveTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_fluidPressure [[function_constant(169)]];
constant int SC_SOFTWARE_WRAP_MODE_V_fluidPressure_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_fluidPressure) ? SC_SOFTWARE_WRAP_MODE_V_fluidPressure : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_heightmap [[function_constant(170)]];
constant int SC_SOFTWARE_WRAP_MODE_V_heightmap_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_heightmap) ? SC_SOFTWARE_WRAP_MODE_V_heightmap : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(171)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_materialParamsTex [[function_constant(172)]];
constant int SC_SOFTWARE_WRAP_MODE_V_materialParamsTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_materialParamsTex) ? SC_SOFTWARE_WRAP_MODE_V_materialParamsTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_normalTex [[function_constant(173)]];
constant int SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_normalTex) ? SC_SOFTWARE_WRAP_MODE_V_normalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_opacityTex [[function_constant(174)]];
constant int SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_opacityTex) ? SC_SOFTWARE_WRAP_MODE_V_opacityTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex [[function_constant(175)]];
constant int SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex) ? SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_reflectionTex [[function_constant(176)]];
constant int SC_SOFTWARE_WRAP_MODE_V_reflectionTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_reflectionTex) ? SC_SOFTWARE_WRAP_MODE_V_reflectionTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_rimColorTex [[function_constant(177)]];
constant int SC_SOFTWARE_WRAP_MODE_V_rimColorTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_rimColorTex) ? SC_SOFTWARE_WRAP_MODE_V_rimColorTex : -1;
constant int baseTexLayout [[function_constant(178)]];
constant int baseTexLayout_tmp = is_function_constant_defined(baseTexLayout) ? baseTexLayout : 0;
constant int bodyDepthTexLayout [[function_constant(179)]];
constant int bodyDepthTexLayout_tmp = is_function_constant_defined(bodyDepthTexLayout) ? bodyDepthTexLayout : 0;
constant int detailNormalTexLayout [[function_constant(180)]];
constant int detailNormalTexLayout_tmp = is_function_constant_defined(detailNormalTexLayout) ? detailNormalTexLayout : 0;
constant int emissiveTexLayout [[function_constant(181)]];
constant int emissiveTexLayout_tmp = is_function_constant_defined(emissiveTexLayout) ? emissiveTexLayout : 0;
constant int fluidPressureLayout [[function_constant(182)]];
constant int fluidPressureLayout_tmp = is_function_constant_defined(fluidPressureLayout) ? fluidPressureLayout : 0;
constant int heightmapLayout [[function_constant(183)]];
constant int heightmapLayout_tmp = is_function_constant_defined(heightmapLayout) ? heightmapLayout : 0;
constant int intensityTextureLayout [[function_constant(184)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int materialParamsTexLayout [[function_constant(185)]];
constant int materialParamsTexLayout_tmp = is_function_constant_defined(materialParamsTexLayout) ? materialParamsTexLayout : 0;
constant int normalTexLayout [[function_constant(186)]];
constant int normalTexLayout_tmp = is_function_constant_defined(normalTexLayout) ? normalTexLayout : 0;
constant int opacityTexLayout [[function_constant(187)]];
constant int opacityTexLayout_tmp = is_function_constant_defined(opacityTexLayout) ? opacityTexLayout : 0;
constant int reflectionModulationTexLayout [[function_constant(188)]];
constant int reflectionModulationTexLayout_tmp = is_function_constant_defined(reflectionModulationTexLayout) ? reflectionModulationTexLayout : 0;
constant int reflectionTexLayout [[function_constant(189)]];
constant int reflectionTexLayout_tmp = is_function_constant_defined(reflectionTexLayout) ? reflectionTexLayout : 0;
constant int rimColorTexLayout [[function_constant(190)]];
constant int rimColorTexLayout_tmp = is_function_constant_defined(rimColorTexLayout) ? rimColorTexLayout : 0;
constant int sc_AmbientLightMode0 [[function_constant(191)]];
constant int sc_AmbientLightMode0_tmp = is_function_constant_defined(sc_AmbientLightMode0) ? sc_AmbientLightMode0 : 0;
constant int sc_AmbientLightMode1 [[function_constant(192)]];
constant int sc_AmbientLightMode1_tmp = is_function_constant_defined(sc_AmbientLightMode1) ? sc_AmbientLightMode1 : 0;
constant int sc_AmbientLightMode2 [[function_constant(193)]];
constant int sc_AmbientLightMode2_tmp = is_function_constant_defined(sc_AmbientLightMode2) ? sc_AmbientLightMode2 : 0;
constant int sc_AmbientLightMode_Constant [[function_constant(194)]];
constant int sc_AmbientLightMode_Constant_tmp = is_function_constant_defined(sc_AmbientLightMode_Constant) ? sc_AmbientLightMode_Constant : 0;
constant int sc_AmbientLightMode_EnvironmentMap [[function_constant(195)]];
constant int sc_AmbientLightMode_EnvironmentMap_tmp = is_function_constant_defined(sc_AmbientLightMode_EnvironmentMap) ? sc_AmbientLightMode_EnvironmentMap : 0;
constant int sc_AmbientLightMode_FromCamera [[function_constant(196)]];
constant int sc_AmbientLightMode_FromCamera_tmp = is_function_constant_defined(sc_AmbientLightMode_FromCamera) ? sc_AmbientLightMode_FromCamera : 0;
constant int sc_AmbientLightMode_SphericalHarmonics [[function_constant(197)]];
constant int sc_AmbientLightMode_SphericalHarmonics_tmp = is_function_constant_defined(sc_AmbientLightMode_SphericalHarmonics) ? sc_AmbientLightMode_SphericalHarmonics : 0;
constant int sc_AmbientLightsCount [[function_constant(198)]];
constant int sc_AmbientLightsCount_tmp = is_function_constant_defined(sc_AmbientLightsCount) ? sc_AmbientLightsCount : 0;
constant int sc_DepthBufferMode [[function_constant(199)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_DirectionalLightsCount [[function_constant(200)]];
constant int sc_DirectionalLightsCount_tmp = is_function_constant_defined(sc_DirectionalLightsCount) ? sc_DirectionalLightsCount : 0;
constant int sc_EnvLightMode [[function_constant(201)]];
constant int sc_EnvLightMode_tmp = is_function_constant_defined(sc_EnvLightMode) ? sc_EnvLightMode : 0;
constant int sc_EnvmapDiffuseLayout [[function_constant(202)]];
constant int sc_EnvmapDiffuseLayout_tmp = is_function_constant_defined(sc_EnvmapDiffuseLayout) ? sc_EnvmapDiffuseLayout : 0;
constant int sc_EnvmapSpecularLayout [[function_constant(203)]];
constant int sc_EnvmapSpecularLayout_tmp = is_function_constant_defined(sc_EnvmapSpecularLayout) ? sc_EnvmapSpecularLayout : 0;
constant int sc_LightEstimationSGCount [[function_constant(204)]];
constant int sc_LightEstimationSGCount_tmp = is_function_constant_defined(sc_LightEstimationSGCount) ? sc_LightEstimationSGCount : 0;
constant int sc_PointLightsCount [[function_constant(205)]];
constant int sc_PointLightsCount_tmp = is_function_constant_defined(sc_PointLightsCount) ? sc_PointLightsCount : 0;
constant int sc_RayTracingGlobalIlluminationLayout [[function_constant(206)]];
constant int sc_RayTracingGlobalIlluminationLayout_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationLayout) ? sc_RayTracingGlobalIlluminationLayout : 0;
constant int sc_RayTracingReflectionsLayout [[function_constant(207)]];
constant int sc_RayTracingReflectionsLayout_tmp = is_function_constant_defined(sc_RayTracingReflectionsLayout) ? sc_RayTracingReflectionsLayout : 0;
constant int sc_RayTracingShadowsLayout [[function_constant(208)]];
constant int sc_RayTracingShadowsLayout_tmp = is_function_constant_defined(sc_RayTracingShadowsLayout) ? sc_RayTracingShadowsLayout : 0;
constant int sc_RenderingSpace [[function_constant(209)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(210)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(211)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(212)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(213)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(214)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;

namespace SNAP_VS {
struct sc_Vertex_t
{
float4 position;
float3 normal;
float3 tangent;
float2 texture0;
float2 texture1;
};
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float2 N7_TransformedUV2;
float2 N7_TransformedUV3;
float3 SurfacePosition_ObjectSpace;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int sc_RayTracingReceiverEffectsMask;
float4 sc_RayTracingReflectionsSize;
float4 sc_RayTracingReflectionsDims;
float4 sc_RayTracingReflectionsView;
float4 sc_RayTracingGlobalIlluminationSize;
float4 sc_RayTracingGlobalIlluminationDims;
float4 sc_RayTracingGlobalIlluminationView;
float4 sc_RayTracingShadowsSize;
float4 sc_RayTracingShadowsDims;
float4 sc_RayTracingShadowsView;
float3 sc_RayTracingOriginScale;
uint sc_RayTracingReceiverMask;
float3 sc_RayTracingOriginScaleInv;
float3 sc_RayTracingOriginOffset;
uint sc_RayTracingReceiverId;
float4 voxelization_params_0;
float4 voxelization_params_frustum_lrbt;
float4 voxelization_params_frustum_nf;
float3 voxelization_params_camera_pos;
float4x4 sc_ModelMatrixVoxelization;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float3 oceanPos;
float4 heightmapSize;
float4 heightmapDims;
float4 heightmapView;
float3x3 heightmapTransform;
float4 heightmapUvMinMax;
float4 heightmapBorderColor;
float2 unpackVal;
float3 oceanMin;
float3 oceanMax;
float enableFluid;
float2 pressureRange;
float4 fluidPressureSize;
float4 fluidPressureDims;
float4 fluidPressureView;
float3x3 fluidPressureTransform;
float4 fluidPressureUvMinMax;
float4 fluidPressureBorderColor;
float fluidMul;
float speed;
float bodyIntersection;
float4 baseColor;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float3 recolorRed;
float3 recolorGreen;
float3 recolorBlue;
float4 opacityTexSize;
float4 opacityTexDims;
float4 opacityTexView;
float3x3 opacityTexTransform;
float4 opacityTexUvMinMax;
float4 opacityTexBorderColor;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float4 detailNormalTexSize;
float4 detailNormalTexDims;
float4 detailNormalTexView;
float3x3 detailNormalTexTransform;
float4 detailNormalTexUvMinMax;
float4 detailNormalTexBorderColor;
float4 emissiveTexSize;
float4 emissiveTexDims;
float4 emissiveTexView;
float3x3 emissiveTexTransform;
float4 emissiveTexUvMinMax;
float4 emissiveTexBorderColor;
float3 emissiveColor;
float emissiveIntensity;
float4 reflectionTexSize;
float4 reflectionTexDims;
float4 reflectionTexView;
float3x3 reflectionTexTransform;
float4 reflectionTexUvMinMax;
float4 reflectionTexBorderColor;
float reflectionIntensity;
float4 reflectionModulationTexSize;
float4 reflectionModulationTexDims;
float4 reflectionModulationTexView;
float3x3 reflectionModulationTexTransform;
float4 reflectionModulationTexUvMinMax;
float4 reflectionModulationTexBorderColor;
float3 rimColor;
float rimIntensity;
float rimExponent;
float4 rimColorTexSize;
float4 rimColorTexDims;
float4 rimColorTexView;
float3x3 rimColorTexTransform;
float4 rimColorTexUvMinMax;
float4 rimColorTexBorderColor;
float metallic;
float roughness;
float4 materialParamsTexSize;
float4 materialParamsTexDims;
float4 materialParamsTexView;
float3x3 materialParamsTexTransform;
float4 materialParamsTexUvMinMax;
float4 materialParamsTexBorderColor;
float specularAoIntensity;
float specularAoDarkening;
float2 uv2Scale;
float2 uv2Offset;
float2 uv3Scale;
float2 uv3Offset;
float4 bodyDepthTexSize;
float4 bodyDepthTexDims;
float4 bodyDepthTexView;
float3x3 bodyDepthTexTransform;
float4 bodyDepthTexUvMinMax;
float4 bodyDepthTexBorderColor;
float4 bodyDepthTexProjectionMatrixTerms;
float Port_BobPosSpeed_N153;
float Port_BobPosAmount_N153;
float Port_BobRotSpeed_N153;
float Port_BobRotAmount_N153;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_Set0
{
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> baseTex [[id(1)]];
texture2d<float> bodyDepthTex [[id(2)]];
texture2d<float> detailNormalTex [[id(3)]];
texture2d<float> emissiveTex [[id(4)]];
texture2d<float> fluidPressure [[id(5)]];
texture2d<float> heightmap [[id(6)]];
texture2d<float> intensityTexture [[id(7)]];
texture2d<float> materialParamsTex [[id(8)]];
texture2d<float> normalTex [[id(9)]];
texture2d<float> opacityTex [[id(10)]];
texture2d<float> reflectionModulationTex [[id(11)]];
texture2d<float> reflectionTex [[id(12)]];
texture2d<float> rimColorTex [[id(13)]];
texture2d<float> sc_EnvmapDiffuse [[id(14)]];
texture2d<float> sc_EnvmapSpecular [[id(15)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(24)]];
texture2d<float> sc_RayTracingReflections [[id(25)]];
texture2d<float> sc_RayTracingShadows [[id(26)]];
texture2d<float> sc_SSAOTexture [[id(27)]];
texture2d<float> sc_ScreenTexture [[id(28)]];
texture2d<float> sc_ShadowTexture [[id(29)]];
sampler baseTexSmpSC [[id(31)]];
sampler bodyDepthTexSmpSC [[id(32)]];
sampler detailNormalTexSmpSC [[id(33)]];
sampler emissiveTexSmpSC [[id(34)]];
sampler fluidPressureSmpSC [[id(35)]];
sampler heightmapSmpSC [[id(36)]];
sampler intensityTextureSmpSC [[id(37)]];
sampler materialParamsTexSmpSC [[id(38)]];
sampler normalTexSmpSC [[id(39)]];
sampler opacityTexSmpSC [[id(40)]];
sampler reflectionModulationTexSmpSC [[id(41)]];
sampler reflectionTexSmpSC [[id(42)]];
sampler rimColorTexSmpSC [[id(43)]];
sampler sc_EnvmapDiffuseSmpSC [[id(44)]];
sampler sc_EnvmapSpecularSmpSC [[id(45)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(47)]];
sampler sc_RayTracingReflectionsSmpSC [[id(48)]];
sampler sc_RayTracingShadowsSmpSC [[id(49)]];
sampler sc_SSAOTextureSmpSC [[id(50)]];
sampler sc_ScreenTextureSmpSC [[id(51)]];
sampler sc_ShadowTextureSmpSC [[id(52)]];
constant userUniformsObj* UserUniforms [[id(54)]];
};
struct main_vert_out
{
float4 varPosAndMotion [[user(locn0)]];
float4 varNormalAndMotion [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varTex01 [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
float4 gl_Position [[position]];
};
struct main_vert_in
{
float4 position [[attribute(0)]];
float3 normal [[attribute(1)]];
float4 tangent [[attribute(2)]];
float2 texture0 [[attribute(3)]];
float2 texture1 [[attribute(4)]];
float4 boneData [[attribute(5)]];
float3 blendShape0Pos [[attribute(6)]];
float3 blendShape1Pos [[attribute(7)]];
float3 blendShape2Pos [[attribute(8)]];
float3 blendShape3Pos [[attribute(9)]];
float3 blendShape4Pos [[attribute(10)]];
float3 blendShape5Pos [[attribute(11)]];
float3 blendShape0Normal [[attribute(12)]];
float3 blendShape1Normal [[attribute(13)]];
float3 blendShape2Normal [[attribute(14)]];
float3 positionNext [[attribute(15)]];
float3 positionPrevious [[attribute(16)]];
float4 strandProperties [[attribute(17)]];
float4 color [[attribute(18)]];
};
// Implementation of the GLSL radians() function
template<typename T>
T radians(T d)
{
return d*T(0.01745329251);
}
vertex main_vert_out main_vert(main_vert_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],uint gl_InstanceIndex [[instance_id]])
{
main_vert_out out={};
float3 N153_OceanWorldTransform=float3(0.0);
float2 N153_UnpackVal=float2(0.0);
float3 N153_OceanAabbMin=float3(0.0);
float3 N153_OceanAabbMax=float3(0.0);
float N153_EnableFluid=0.0;
float2 N153_PressureRange=float2(0.0);
float N153_BobPosSpeed=0.0;
float N153_BobPosAmount=0.0;
float N153_BobRotSpeed=0.0;
float N153_BobRotAmount=0.0;
float N153_Speed=0.0;
float3 N153_Result=float3(0.0);
out.PreviewVertexColor=float4(0.5);
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=float4(0.5);
PreviewInfo.Saved=false;
out.PreviewVertexSaved=0.0;
sc_Vertex_t l9_0;
l9_0.position=in.position;
l9_0.normal=in.normal;
l9_0.tangent=in.tangent.xyz;
l9_0.texture0=in.texture0;
l9_0.texture1=in.texture1;
sc_Vertex_t l9_1=l9_0;
sc_Vertex_t param=l9_1;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_2=param;
param=l9_2;
}
sc_Vertex_t l9_3=param;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_4=l9_3;
float3 l9_5=in.blendShape0Pos;
float3 l9_6=in.blendShape0Normal;
float l9_7=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_8=l9_4;
float3 l9_9=l9_5;
float l9_10=l9_7;
float3 l9_11=l9_8.position.xyz+(l9_9*l9_10);
l9_8.position=float4(l9_11.x,l9_11.y,l9_11.z,l9_8.position.w);
l9_4=l9_8;
l9_4.normal+=(l9_6*l9_7);
l9_3=l9_4;
sc_Vertex_t l9_12=l9_3;
float3 l9_13=in.blendShape1Pos;
float3 l9_14=in.blendShape1Normal;
float l9_15=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_16=l9_12;
float3 l9_17=l9_13;
float l9_18=l9_15;
float3 l9_19=l9_16.position.xyz+(l9_17*l9_18);
l9_16.position=float4(l9_19.x,l9_19.y,l9_19.z,l9_16.position.w);
l9_12=l9_16;
l9_12.normal+=(l9_14*l9_15);
l9_3=l9_12;
sc_Vertex_t l9_20=l9_3;
float3 l9_21=in.blendShape2Pos;
float3 l9_22=in.blendShape2Normal;
float l9_23=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_24=l9_20;
float3 l9_25=l9_21;
float l9_26=l9_23;
float3 l9_27=l9_24.position.xyz+(l9_25*l9_26);
l9_24.position=float4(l9_27.x,l9_27.y,l9_27.z,l9_24.position.w);
l9_20=l9_24;
l9_20.normal+=(l9_22*l9_23);
l9_3=l9_20;
}
else
{
sc_Vertex_t l9_28=l9_3;
float3 l9_29=in.blendShape0Pos;
float l9_30=(*sc_set0.UserUniforms).weights0.x;
float3 l9_31=l9_28.position.xyz+(l9_29*l9_30);
l9_28.position=float4(l9_31.x,l9_31.y,l9_31.z,l9_28.position.w);
l9_3=l9_28;
sc_Vertex_t l9_32=l9_3;
float3 l9_33=in.blendShape1Pos;
float l9_34=(*sc_set0.UserUniforms).weights0.y;
float3 l9_35=l9_32.position.xyz+(l9_33*l9_34);
l9_32.position=float4(l9_35.x,l9_35.y,l9_35.z,l9_32.position.w);
l9_3=l9_32;
sc_Vertex_t l9_36=l9_3;
float3 l9_37=in.blendShape2Pos;
float l9_38=(*sc_set0.UserUniforms).weights0.z;
float3 l9_39=l9_36.position.xyz+(l9_37*l9_38);
l9_36.position=float4(l9_39.x,l9_39.y,l9_39.z,l9_36.position.w);
l9_3=l9_36;
sc_Vertex_t l9_40=l9_3;
float3 l9_41=in.blendShape3Pos;
float l9_42=(*sc_set0.UserUniforms).weights0.w;
float3 l9_43=l9_40.position.xyz+(l9_41*l9_42);
l9_40.position=float4(l9_43.x,l9_43.y,l9_43.z,l9_40.position.w);
l9_3=l9_40;
sc_Vertex_t l9_44=l9_3;
float3 l9_45=in.blendShape4Pos;
float l9_46=(*sc_set0.UserUniforms).weights1.x;
float3 l9_47=l9_44.position.xyz+(l9_45*l9_46);
l9_44.position=float4(l9_47.x,l9_47.y,l9_47.z,l9_44.position.w);
l9_3=l9_44;
sc_Vertex_t l9_48=l9_3;
float3 l9_49=in.blendShape5Pos;
float l9_50=(*sc_set0.UserUniforms).weights1.y;
float3 l9_51=l9_48.position.xyz+(l9_49*l9_50);
l9_48.position=float4(l9_51.x,l9_51.y,l9_51.z,l9_48.position.w);
l9_3=l9_48;
}
}
param=l9_3;
sc_Vertex_t l9_52=param;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_53=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_53=float4(1.0,fract(in.boneData.yzw));
l9_53.x-=dot(l9_53.yzw,float3(1.0));
}
float4 l9_54=l9_53;
float4 l9_55=l9_54;
int l9_56=int(in.boneData.x);
int l9_57=int(in.boneData.y);
int l9_58=int(in.boneData.z);
int l9_59=int(in.boneData.w);
int l9_60=l9_56;
float4 l9_61=l9_52.position;
float3 l9_62=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_63=l9_60;
float4 l9_64=(*sc_set0.sc_BonesUBO).sc_Bones[l9_63].boneMatrix[0];
float4 l9_65=(*sc_set0.sc_BonesUBO).sc_Bones[l9_63].boneMatrix[1];
float4 l9_66=(*sc_set0.sc_BonesUBO).sc_Bones[l9_63].boneMatrix[2];
float4 l9_67[3];
l9_67[0]=l9_64;
l9_67[1]=l9_65;
l9_67[2]=l9_66;
l9_62=float3(dot(l9_61,l9_67[0]),dot(l9_61,l9_67[1]),dot(l9_61,l9_67[2]));
}
else
{
l9_62=l9_61.xyz;
}
float3 l9_68=l9_62;
float3 l9_69=l9_68;
float l9_70=l9_55.x;
int l9_71=l9_57;
float4 l9_72=l9_52.position;
float3 l9_73=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_74=l9_71;
float4 l9_75=(*sc_set0.sc_BonesUBO).sc_Bones[l9_74].boneMatrix[0];
float4 l9_76=(*sc_set0.sc_BonesUBO).sc_Bones[l9_74].boneMatrix[1];
float4 l9_77=(*sc_set0.sc_BonesUBO).sc_Bones[l9_74].boneMatrix[2];
float4 l9_78[3];
l9_78[0]=l9_75;
l9_78[1]=l9_76;
l9_78[2]=l9_77;
l9_73=float3(dot(l9_72,l9_78[0]),dot(l9_72,l9_78[1]),dot(l9_72,l9_78[2]));
}
else
{
l9_73=l9_72.xyz;
}
float3 l9_79=l9_73;
float3 l9_80=l9_79;
float l9_81=l9_55.y;
int l9_82=l9_58;
float4 l9_83=l9_52.position;
float3 l9_84=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_85=l9_82;
float4 l9_86=(*sc_set0.sc_BonesUBO).sc_Bones[l9_85].boneMatrix[0];
float4 l9_87=(*sc_set0.sc_BonesUBO).sc_Bones[l9_85].boneMatrix[1];
float4 l9_88=(*sc_set0.sc_BonesUBO).sc_Bones[l9_85].boneMatrix[2];
float4 l9_89[3];
l9_89[0]=l9_86;
l9_89[1]=l9_87;
l9_89[2]=l9_88;
l9_84=float3(dot(l9_83,l9_89[0]),dot(l9_83,l9_89[1]),dot(l9_83,l9_89[2]));
}
else
{
l9_84=l9_83.xyz;
}
float3 l9_90=l9_84;
float3 l9_91=l9_90;
float l9_92=l9_55.z;
int l9_93=l9_59;
float4 l9_94=l9_52.position;
float3 l9_95=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_96=l9_93;
float4 l9_97=(*sc_set0.sc_BonesUBO).sc_Bones[l9_96].boneMatrix[0];
float4 l9_98=(*sc_set0.sc_BonesUBO).sc_Bones[l9_96].boneMatrix[1];
float4 l9_99=(*sc_set0.sc_BonesUBO).sc_Bones[l9_96].boneMatrix[2];
float4 l9_100[3];
l9_100[0]=l9_97;
l9_100[1]=l9_98;
l9_100[2]=l9_99;
l9_95=float3(dot(l9_94,l9_100[0]),dot(l9_94,l9_100[1]),dot(l9_94,l9_100[2]));
}
else
{
l9_95=l9_94.xyz;
}
float3 l9_101=l9_95;
float3 l9_102=(((l9_69*l9_70)+(l9_80*l9_81))+(l9_91*l9_92))+(l9_101*l9_55.w);
l9_52.position=float4(l9_102.x,l9_102.y,l9_102.z,l9_52.position.w);
int l9_103=l9_56;
float3x3 l9_104=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_103].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_103].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_103].normalMatrix[2].xyz));
float3x3 l9_105=l9_104;
float3x3 l9_106=l9_105;
int l9_107=l9_57;
float3x3 l9_108=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_107].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_107].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_107].normalMatrix[2].xyz));
float3x3 l9_109=l9_108;
float3x3 l9_110=l9_109;
int l9_111=l9_58;
float3x3 l9_112=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_111].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_111].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_111].normalMatrix[2].xyz));
float3x3 l9_113=l9_112;
float3x3 l9_114=l9_113;
int l9_115=l9_59;
float3x3 l9_116=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_115].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_115].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_115].normalMatrix[2].xyz));
float3x3 l9_117=l9_116;
float3x3 l9_118=l9_117;
l9_52.normal=((((l9_106*l9_52.normal)*l9_55.x)+((l9_110*l9_52.normal)*l9_55.y))+((l9_114*l9_52.normal)*l9_55.z))+((l9_118*l9_52.normal)*l9_55.w);
l9_52.tangent=((((l9_106*l9_52.tangent)*l9_55.x)+((l9_110*l9_52.tangent)*l9_55.y))+((l9_114*l9_52.tangent)*l9_55.z))+((l9_118*l9_52.tangent)*l9_55.w);
}
param=l9_52;
if (sc_RenderingSpace_tmp==3)
{
out.varPosAndMotion=float4(float3(0.0).x,float3(0.0).y,float3(0.0).z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param.normal.x,param.normal.y,param.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==4)
{
out.varPosAndMotion=float4(float3(0.0).x,float3(0.0).y,float3(0.0).z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param.normal.x,param.normal.y,param.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
out.varPosAndMotion=float4(param.position.xyz.x,param.position.xyz.y,param.position.xyz.z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param.normal.x,param.normal.y,param.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
float3 l9_119=((*sc_set0.UserUniforms).sc_ModelMatrix*param.position).xyz;
out.varPosAndMotion=float4(l9_119.x,l9_119.y,l9_119.z,out.varPosAndMotion.w);
float3 l9_120=(*sc_set0.UserUniforms).sc_NormalMatrix*param.normal;
out.varNormalAndMotion=float4(l9_120.x,l9_120.y,l9_120.z,out.varNormalAndMotion.w);
float3 l9_121=(*sc_set0.UserUniforms).sc_NormalMatrix*param.tangent;
out.varTangent=float4(l9_121.x,l9_121.y,l9_121.z,out.varTangent.w);
}
}
}
}
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
param.texture0.x=1.0-param.texture0.x;
}
out.varColor=in.color;
sc_Vertex_t v=param;
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
Globals.SurfacePosition_ObjectSpace=((*sc_set0.UserUniforms).sc_ModelMatrixInverse*float4(out.varPosAndMotion.xyz,1.0)).xyz;
float3 WorldPosition=out.varPosAndMotion.xyz;
float3 WorldNormal=out.varNormalAndMotion.xyz;
float3 WorldTangent=out.varTangent.xyz;
float3 Output_N9=float3(0.0);
float3 param_1=(*sc_set0.UserUniforms).oceanPos;
Output_N9=param_1;
float2 Output_N20=float2(0.0);
float2 param_2=(*sc_set0.UserUniforms).unpackVal;
Output_N20=param_2;
float3 Output_N145=float3(0.0);
float3 param_3=(*sc_set0.UserUniforms).oceanMin;
Output_N145=param_3;
float3 Output_N146=float3(0.0);
float3 param_4=(*sc_set0.UserUniforms).oceanMax;
Output_N146=param_4;
float Output_N21=0.0;
float param_5=(*sc_set0.UserUniforms).enableFluid;
Output_N21=param_5;
float2 Output_N12=float2(0.0);
float2 param_6=(*sc_set0.UserUniforms).pressureRange;
Output_N12=param_6;
float Output_N19=0.0;
float param_7=(*sc_set0.UserUniforms).speed;
Output_N19=param_7;
float3 Result_N153=float3(0.0);
float3 param_8=Output_N9;
float2 param_9=Output_N20;
float3 param_10=Output_N145;
float3 param_11=Output_N146;
float param_12=Output_N21;
float2 param_13=Output_N12;
float param_14=(*sc_set0.UserUniforms).Port_BobPosSpeed_N153;
float param_15=(*sc_set0.UserUniforms).Port_BobPosAmount_N153;
float param_16=(*sc_set0.UserUniforms).Port_BobRotSpeed_N153;
float param_17=(*sc_set0.UserUniforms).Port_BobRotAmount_N153;
float param_18=Output_N19;
ssGlobals param_20=Globals;
ssGlobals tempGlobals=param_20;
float3 param_19=float3(0.0);
N153_OceanWorldTransform=param_8;
N153_UnpackVal=param_9;
N153_OceanAabbMin=param_10;
N153_OceanAabbMax=param_11;
N153_EnableFluid=param_12;
N153_PressureRange=param_13;
N153_BobPosSpeed=param_14;
N153_BobPosAmount=param_15;
N153_BobRotSpeed=param_16;
N153_BobRotAmount=param_17;
N153_Speed=param_18;
float4x4 l9_122=(*sc_set0.UserUniforms).sc_ModelMatrix;
float3 l9_123=l9_122[3].xyz;
float2 l9_124=float2(N153_OceanAabbMin.x,N153_OceanAabbMin.z);
float2 l9_125=float2(N153_OceanAabbMax.x,N153_OceanAabbMax.z);
float2 l9_126=float2(0.0)+(((l9_123.xz-l9_124)*1.0)/((l9_125-l9_124)+float2(1e-06)));
l9_126.y=1.0-l9_126.y;
float2 l9_127=l9_126;
float4 l9_128=float4(0.0);
int l9_129;
if ((int(heightmapHasSwappedViews_tmp)!=0))
{
int l9_130=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_130=0;
}
else
{
l9_130=gl_InstanceIndex%2;
}
int l9_131=l9_130;
l9_129=1-l9_131;
}
else
{
int l9_132=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_132=0;
}
else
{
l9_132=gl_InstanceIndex%2;
}
int l9_133=l9_132;
l9_129=l9_133;
}
int l9_134=l9_129;
int l9_135=heightmapLayout_tmp;
int l9_136=l9_134;
float2 l9_137=l9_127;
bool l9_138=(int(SC_USE_UV_TRANSFORM_heightmap_tmp)!=0);
float3x3 l9_139=(*sc_set0.UserUniforms).heightmapTransform;
int2 l9_140=int2(SC_SOFTWARE_WRAP_MODE_U_heightmap_tmp,SC_SOFTWARE_WRAP_MODE_V_heightmap_tmp);
bool l9_141=(int(SC_USE_UV_MIN_MAX_heightmap_tmp)!=0);
float4 l9_142=(*sc_set0.UserUniforms).heightmapUvMinMax;
bool l9_143=(int(SC_USE_CLAMP_TO_BORDER_heightmap_tmp)!=0);
float4 l9_144=(*sc_set0.UserUniforms).heightmapBorderColor;
float l9_145=0.0;
bool l9_146=l9_143&&(!l9_141);
float l9_147=1.0;
float l9_148=l9_137.x;
int l9_149=l9_140.x;
if (l9_149==1)
{
l9_148=fract(l9_148);
}
else
{
if (l9_149==2)
{
float l9_150=fract(l9_148);
float l9_151=l9_148-l9_150;
float l9_152=step(0.25,fract(l9_151*0.5));
l9_148=mix(l9_150,1.0-l9_150,fast::clamp(l9_152,0.0,1.0));
}
}
l9_137.x=l9_148;
float l9_153=l9_137.y;
int l9_154=l9_140.y;
if (l9_154==1)
{
l9_153=fract(l9_153);
}
else
{
if (l9_154==2)
{
float l9_155=fract(l9_153);
float l9_156=l9_153-l9_155;
float l9_157=step(0.25,fract(l9_156*0.5));
l9_153=mix(l9_155,1.0-l9_155,fast::clamp(l9_157,0.0,1.0));
}
}
l9_137.y=l9_153;
if (l9_141)
{
bool l9_158=l9_143;
bool l9_159;
if (l9_158)
{
l9_159=l9_140.x==3;
}
else
{
l9_159=l9_158;
}
float l9_160=l9_137.x;
float l9_161=l9_142.x;
float l9_162=l9_142.z;
bool l9_163=l9_159;
float l9_164=l9_147;
float l9_165=fast::clamp(l9_160,l9_161,l9_162);
float l9_166=step(abs(l9_160-l9_165),9.9999997e-06);
l9_164*=(l9_166+((1.0-float(l9_163))*(1.0-l9_166)));
l9_160=l9_165;
l9_137.x=l9_160;
l9_147=l9_164;
bool l9_167=l9_143;
bool l9_168;
if (l9_167)
{
l9_168=l9_140.y==3;
}
else
{
l9_168=l9_167;
}
float l9_169=l9_137.y;
float l9_170=l9_142.y;
float l9_171=l9_142.w;
bool l9_172=l9_168;
float l9_173=l9_147;
float l9_174=fast::clamp(l9_169,l9_170,l9_171);
float l9_175=step(abs(l9_169-l9_174),9.9999997e-06);
l9_173*=(l9_175+((1.0-float(l9_172))*(1.0-l9_175)));
l9_169=l9_174;
l9_137.y=l9_169;
l9_147=l9_173;
}
float2 l9_176=l9_137;
bool l9_177=l9_138;
float3x3 l9_178=l9_139;
if (l9_177)
{
l9_176=float2((l9_178*float3(l9_176,1.0)).xy);
}
float2 l9_179=l9_176;
l9_137=l9_179;
float l9_180=l9_137.x;
int l9_181=l9_140.x;
bool l9_182=l9_146;
float l9_183=l9_147;
if ((l9_181==0)||(l9_181==3))
{
float l9_184=l9_180;
float l9_185=0.0;
float l9_186=1.0;
bool l9_187=l9_182;
float l9_188=l9_183;
float l9_189=fast::clamp(l9_184,l9_185,l9_186);
float l9_190=step(abs(l9_184-l9_189),9.9999997e-06);
l9_188*=(l9_190+((1.0-float(l9_187))*(1.0-l9_190)));
l9_184=l9_189;
l9_180=l9_184;
l9_183=l9_188;
}
l9_137.x=l9_180;
l9_147=l9_183;
float l9_191=l9_137.y;
int l9_192=l9_140.y;
bool l9_193=l9_146;
float l9_194=l9_147;
if ((l9_192==0)||(l9_192==3))
{
float l9_195=l9_191;
float l9_196=0.0;
float l9_197=1.0;
bool l9_198=l9_193;
float l9_199=l9_194;
float l9_200=fast::clamp(l9_195,l9_196,l9_197);
float l9_201=step(abs(l9_195-l9_200),9.9999997e-06);
l9_199*=(l9_201+((1.0-float(l9_198))*(1.0-l9_201)));
l9_195=l9_200;
l9_191=l9_195;
l9_194=l9_199;
}
l9_137.y=l9_191;
l9_147=l9_194;
float2 l9_202=l9_137;
int l9_203=l9_135;
int l9_204=l9_136;
float l9_205=l9_145;
float2 l9_206=l9_202;
int l9_207=l9_203;
int l9_208=l9_204;
float3 l9_209=float3(0.0);
if (l9_207==0)
{
l9_209=float3(l9_206,0.0);
}
else
{
if (l9_207==1)
{
l9_209=float3(l9_206.x,(l9_206.y*0.5)+(0.5-(float(l9_208)*0.5)),0.0);
}
else
{
l9_209=float3(l9_206,float(l9_208));
}
}
float3 l9_210=l9_209;
float3 l9_211=l9_210;
float4 l9_212=sc_set0.heightmap.sample(sc_set0.heightmapSmpSC,l9_211.xy,level(l9_205));
float4 l9_213=l9_212;
if (l9_143)
{
l9_213=mix(l9_144,l9_213,float4(l9_147));
}
float4 l9_214=l9_213;
l9_128=l9_214;
float4 l9_215=l9_128;
float2 l9_216=l9_215.xy;
float l9_217=N153_UnpackVal.x;
float l9_218=N153_UnpackVal.y;
float l9_219=0.0;
float2 l9_220=l9_216;
float l9_221=l9_217;
float l9_222=l9_218;
float l9_223=0.99998999;
float2 l9_224=l9_220;
#if (1)
{
l9_224=floor((l9_224*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_225=dot(l9_224,float2(1.0,0.0039215689));
float l9_226=l9_225;
float l9_227=0.0;
float l9_228=l9_223;
float l9_229=l9_221;
float l9_230=l9_222;
float l9_231=l9_229+(((l9_226-l9_227)*(l9_230-l9_229))/(l9_228-l9_227));
float l9_232=l9_231;
l9_219=l9_232;
float l9_233=l9_219;
float l9_234=l9_233+N153_OceanWorldTransform.y;
float l9_235=0.0+(((l9_234-N153_UnpackVal.x)*1.0)/((N153_UnpackVal.y-N153_UnpackVal.x)+1e-06));
float l9_236=l9_235;
float l9_237=0.0;
if (N153_EnableFluid==1.0)
{
float2 l9_238=l9_126;
float4 l9_239=float4(0.0);
int l9_240;
if ((int(fluidPressureHasSwappedViews_tmp)!=0))
{
int l9_241=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_241=0;
}
else
{
l9_241=gl_InstanceIndex%2;
}
int l9_242=l9_241;
l9_240=1-l9_242;
}
else
{
int l9_243=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_243=0;
}
else
{
l9_243=gl_InstanceIndex%2;
}
int l9_244=l9_243;
l9_240=l9_244;
}
int l9_245=l9_240;
int l9_246=fluidPressureLayout_tmp;
int l9_247=l9_245;
float2 l9_248=l9_238;
bool l9_249=(int(SC_USE_UV_TRANSFORM_fluidPressure_tmp)!=0);
float3x3 l9_250=(*sc_set0.UserUniforms).fluidPressureTransform;
int2 l9_251=int2(SC_SOFTWARE_WRAP_MODE_U_fluidPressure_tmp,SC_SOFTWARE_WRAP_MODE_V_fluidPressure_tmp);
bool l9_252=(int(SC_USE_UV_MIN_MAX_fluidPressure_tmp)!=0);
float4 l9_253=(*sc_set0.UserUniforms).fluidPressureUvMinMax;
bool l9_254=(int(SC_USE_CLAMP_TO_BORDER_fluidPressure_tmp)!=0);
float4 l9_255=(*sc_set0.UserUniforms).fluidPressureBorderColor;
float l9_256=0.0;
bool l9_257=l9_254&&(!l9_252);
float l9_258=1.0;
float l9_259=l9_248.x;
int l9_260=l9_251.x;
if (l9_260==1)
{
l9_259=fract(l9_259);
}
else
{
if (l9_260==2)
{
float l9_261=fract(l9_259);
float l9_262=l9_259-l9_261;
float l9_263=step(0.25,fract(l9_262*0.5));
l9_259=mix(l9_261,1.0-l9_261,fast::clamp(l9_263,0.0,1.0));
}
}
l9_248.x=l9_259;
float l9_264=l9_248.y;
int l9_265=l9_251.y;
if (l9_265==1)
{
l9_264=fract(l9_264);
}
else
{
if (l9_265==2)
{
float l9_266=fract(l9_264);
float l9_267=l9_264-l9_266;
float l9_268=step(0.25,fract(l9_267*0.5));
l9_264=mix(l9_266,1.0-l9_266,fast::clamp(l9_268,0.0,1.0));
}
}
l9_248.y=l9_264;
if (l9_252)
{
bool l9_269=l9_254;
bool l9_270;
if (l9_269)
{
l9_270=l9_251.x==3;
}
else
{
l9_270=l9_269;
}
float l9_271=l9_248.x;
float l9_272=l9_253.x;
float l9_273=l9_253.z;
bool l9_274=l9_270;
float l9_275=l9_258;
float l9_276=fast::clamp(l9_271,l9_272,l9_273);
float l9_277=step(abs(l9_271-l9_276),9.9999997e-06);
l9_275*=(l9_277+((1.0-float(l9_274))*(1.0-l9_277)));
l9_271=l9_276;
l9_248.x=l9_271;
l9_258=l9_275;
bool l9_278=l9_254;
bool l9_279;
if (l9_278)
{
l9_279=l9_251.y==3;
}
else
{
l9_279=l9_278;
}
float l9_280=l9_248.y;
float l9_281=l9_253.y;
float l9_282=l9_253.w;
bool l9_283=l9_279;
float l9_284=l9_258;
float l9_285=fast::clamp(l9_280,l9_281,l9_282);
float l9_286=step(abs(l9_280-l9_285),9.9999997e-06);
l9_284*=(l9_286+((1.0-float(l9_283))*(1.0-l9_286)));
l9_280=l9_285;
l9_248.y=l9_280;
l9_258=l9_284;
}
float2 l9_287=l9_248;
bool l9_288=l9_249;
float3x3 l9_289=l9_250;
if (l9_288)
{
l9_287=float2((l9_289*float3(l9_287,1.0)).xy);
}
float2 l9_290=l9_287;
l9_248=l9_290;
float l9_291=l9_248.x;
int l9_292=l9_251.x;
bool l9_293=l9_257;
float l9_294=l9_258;
if ((l9_292==0)||(l9_292==3))
{
float l9_295=l9_291;
float l9_296=0.0;
float l9_297=1.0;
bool l9_298=l9_293;
float l9_299=l9_294;
float l9_300=fast::clamp(l9_295,l9_296,l9_297);
float l9_301=step(abs(l9_295-l9_300),9.9999997e-06);
l9_299*=(l9_301+((1.0-float(l9_298))*(1.0-l9_301)));
l9_295=l9_300;
l9_291=l9_295;
l9_294=l9_299;
}
l9_248.x=l9_291;
l9_258=l9_294;
float l9_302=l9_248.y;
int l9_303=l9_251.y;
bool l9_304=l9_257;
float l9_305=l9_258;
if ((l9_303==0)||(l9_303==3))
{
float l9_306=l9_302;
float l9_307=0.0;
float l9_308=1.0;
bool l9_309=l9_304;
float l9_310=l9_305;
float l9_311=fast::clamp(l9_306,l9_307,l9_308);
float l9_312=step(abs(l9_306-l9_311),9.9999997e-06);
l9_310*=(l9_312+((1.0-float(l9_309))*(1.0-l9_312)));
l9_306=l9_311;
l9_302=l9_306;
l9_305=l9_310;
}
l9_248.y=l9_302;
l9_258=l9_305;
float2 l9_313=l9_248;
int l9_314=l9_246;
int l9_315=l9_247;
float l9_316=l9_256;
float2 l9_317=l9_313;
int l9_318=l9_314;
int l9_319=l9_315;
float3 l9_320=float3(0.0);
if (l9_318==0)
{
l9_320=float3(l9_317,0.0);
}
else
{
if (l9_318==1)
{
l9_320=float3(l9_317.x,(l9_317.y*0.5)+(0.5-(float(l9_319)*0.5)),0.0);
}
else
{
l9_320=float3(l9_317,float(l9_319));
}
}
float3 l9_321=l9_320;
float3 l9_322=l9_321;
float4 l9_323=sc_set0.fluidPressure.sample(sc_set0.fluidPressureSmpSC,l9_322.xy,level(l9_316));
float4 l9_324=l9_323;
if (l9_254)
{
l9_324=mix(l9_255,l9_324,float4(l9_258));
}
float4 l9_325=l9_324;
l9_239=l9_325;
float4 l9_326=l9_239;
float2 l9_327=l9_326.xy;
float l9_328=N153_PressureRange.x;
float l9_329=N153_PressureRange.y;
float l9_330=0.0;
float2 l9_331=l9_327;
float l9_332=l9_328;
float l9_333=l9_329;
float l9_334=0.99998999;
float2 l9_335=l9_331;
#if (1)
{
l9_335=floor((l9_335*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_336=dot(l9_335,float2(1.0,0.0039215689));
float l9_337=l9_336;
float l9_338=0.0;
float l9_339=l9_334;
float l9_340=l9_332;
float l9_341=l9_333;
float l9_342=l9_340+(((l9_337-l9_338)*(l9_341-l9_340))/(l9_339-l9_338));
float l9_343=l9_342;
l9_330=l9_343;
float l9_344=l9_330;
l9_237=l9_344;
float l9_345=(-1.0)+(((l9_237-0.0)*2.0)/1.000001);
l9_236=(l9_235+l9_345)/2.0;
}
float l9_346=tempGlobals.gTimeElapsed;
float l9_347=l9_346*N153_Speed;
float l9_348=(sin(l9_347*N153_BobPosSpeed)*l9_236)*N153_BobPosAmount;
float l9_349=(sin(l9_347*N153_BobRotSpeed)*l9_236)*N153_BobRotAmount;
float l9_350=(sin((l9_347-1.0)*N153_BobRotSpeed)*l9_236)*N153_BobRotAmount;
float3 l9_351=float3(l9_349,0.0,l9_350);
float3 l9_352=tempGlobals.SurfacePosition_ObjectSpace;
float3 l9_353=l9_352;
float3 l9_354=l9_351;
float3 l9_355=l9_353;
float l9_356=cos(radians(l9_354.x));
float l9_357=sin(radians(l9_354.x));
float l9_358=cos(radians(l9_354.y));
float l9_359=sin(radians(l9_354.y));
float l9_360=cos(radians(l9_354.z));
float l9_361=sin(radians(l9_354.z));
float4x4 l9_362=float4x4(float4(l9_358*l9_360,(l9_356*l9_361)+((l9_357*l9_359)*l9_360),(l9_357*l9_361)-((l9_356*l9_359)*l9_360),0.0),float4((-l9_358)*l9_361,(l9_356*l9_360)-((l9_357*l9_359)*l9_361),(l9_357*l9_360)+((l9_356*l9_359)*l9_361),0.0),float4(l9_359,(-l9_357)*l9_358,l9_356*l9_358,0.0),float4(l9_355.x,l9_355.y,l9_355.z,1.0));
float4x4 l9_363=l9_362;
float4x4 l9_364=l9_363;
float3 l9_365=float3(float3x3(l9_364[0].xyz,l9_364[1].xyz,l9_364[2].xyz)*l9_353);
float4x4 l9_366=(*sc_set0.UserUniforms).sc_ModelMatrix;
N153_Result=float3((l9_366*float4(l9_365,1.0)).xyz)+float3(0.0,(l9_234+l9_237)+l9_348,0.0);
param_19=N153_Result;
Result_N153=param_19;
WorldPosition=Result_N153;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPosAndMotion.xyz;
WorldNormal=out.varNormalAndMotion.xyz;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_21=v;
float3 param_22=WorldPosition;
float3 param_23=WorldNormal;
float3 param_24=WorldTangent;
float4 param_25=v.position;
out.varPosAndMotion=float4(param_22.x,param_22.y,param_22.z,out.varPosAndMotion.w);
float3 l9_367=normalize(param_23);
out.varNormalAndMotion=float4(l9_367.x,l9_367.y,l9_367.z,out.varNormalAndMotion.w);
float3 l9_368=normalize(param_24);
out.varTangent=float4(l9_368.x,l9_368.y,l9_368.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_369=param_21.position;
float4 l9_370=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_371=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_371=0;
}
else
{
l9_371=gl_InstanceIndex%2;
}
int l9_372=l9_371;
l9_370=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_372]*l9_369;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_373=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_373=0;
}
else
{
l9_373=gl_InstanceIndex%2;
}
int l9_374=l9_373;
l9_370=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_374]*l9_369;
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_375=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_375=0;
}
else
{
l9_375=gl_InstanceIndex%2;
}
int l9_376=l9_375;
l9_370=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_376]*l9_369;
}
else
{
l9_370=l9_369;
}
}
}
float4 l9_377=l9_370;
out.varViewSpaceDepth=-l9_377.z;
}
float4 l9_378=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_378=param_25;
}
else
{
if (sc_RenderingSpace_tmp==4)
{
int l9_379=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_379=0;
}
else
{
l9_379=gl_InstanceIndex%2;
}
int l9_380=l9_379;
l9_378=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_380]*param_21.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_381=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_381=0;
}
else
{
l9_381=gl_InstanceIndex%2;
}
int l9_382=l9_381;
l9_378=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_382]*float4(out.varPosAndMotion.xyz,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_383=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_383=0;
}
else
{
l9_383=gl_InstanceIndex%2;
}
int l9_384=l9_383;
l9_378=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_384]*float4(out.varPosAndMotion.xyz,1.0);
}
}
}
}
out.varTex01=float4(param_21.texture0,param_21.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_385=param_21.position;
float4 l9_386=l9_385;
if (sc_RenderingSpace_tmp==1)
{
l9_386=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_385;
}
float4 l9_387=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_386;
float2 l9_388=((l9_387.xy/float2(l9_387.w))*0.5)+float2(0.5);
out.varShadowTex=l9_388;
}
float4 l9_389=l9_378;
if (sc_DepthBufferMode_tmp==1)
{
int l9_390=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_390=0;
}
else
{
l9_390=gl_InstanceIndex%2;
}
int l9_391=l9_390;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_391][2].w!=0.0)
{
float l9_392=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_389.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_389.w))*l9_392)-1.0)*l9_389.w;
}
}
float4 l9_393=l9_389;
l9_378=l9_393;
float4 l9_394=l9_378;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_395=l9_394.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_394.w);
l9_394=float4(l9_395.x,l9_395.y,l9_394.z,l9_394.w);
}
float4 l9_396=l9_394;
l9_378=l9_396;
float4 l9_397=l9_378;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_397.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_398=l9_397;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_399=dot(l9_398,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_400=l9_399;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_400;
}
}
float4 l9_401=float4(l9_397.x,-l9_397.y,(l9_397.z*0.5)+(l9_397.w*0.5),l9_397.w);
out.gl_Position=l9_401;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_403=param_21;
sc_Vertex_t l9_404=l9_403;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_405=l9_404;
float3 l9_406=in.blendShape0Pos;
float3 l9_407=in.blendShape0Normal;
float l9_408=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_409=l9_405;
float3 l9_410=l9_406;
float l9_411=l9_408;
float3 l9_412=l9_409.position.xyz+(l9_410*l9_411);
l9_409.position=float4(l9_412.x,l9_412.y,l9_412.z,l9_409.position.w);
l9_405=l9_409;
l9_405.normal+=(l9_407*l9_408);
l9_404=l9_405;
sc_Vertex_t l9_413=l9_404;
float3 l9_414=in.blendShape1Pos;
float3 l9_415=in.blendShape1Normal;
float l9_416=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_417=l9_413;
float3 l9_418=l9_414;
float l9_419=l9_416;
float3 l9_420=l9_417.position.xyz+(l9_418*l9_419);
l9_417.position=float4(l9_420.x,l9_420.y,l9_420.z,l9_417.position.w);
l9_413=l9_417;
l9_413.normal+=(l9_415*l9_416);
l9_404=l9_413;
sc_Vertex_t l9_421=l9_404;
float3 l9_422=in.blendShape2Pos;
float3 l9_423=in.blendShape2Normal;
float l9_424=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_425=l9_421;
float3 l9_426=l9_422;
float l9_427=l9_424;
float3 l9_428=l9_425.position.xyz+(l9_426*l9_427);
l9_425.position=float4(l9_428.x,l9_428.y,l9_428.z,l9_425.position.w);
l9_421=l9_425;
l9_421.normal+=(l9_423*l9_424);
l9_404=l9_421;
}
else
{
sc_Vertex_t l9_429=l9_404;
float3 l9_430=in.blendShape0Pos;
float l9_431=(*sc_set0.UserUniforms).weights0.x;
float3 l9_432=l9_429.position.xyz+(l9_430*l9_431);
l9_429.position=float4(l9_432.x,l9_432.y,l9_432.z,l9_429.position.w);
l9_404=l9_429;
sc_Vertex_t l9_433=l9_404;
float3 l9_434=in.blendShape1Pos;
float l9_435=(*sc_set0.UserUniforms).weights0.y;
float3 l9_436=l9_433.position.xyz+(l9_434*l9_435);
l9_433.position=float4(l9_436.x,l9_436.y,l9_436.z,l9_433.position.w);
l9_404=l9_433;
sc_Vertex_t l9_437=l9_404;
float3 l9_438=in.blendShape2Pos;
float l9_439=(*sc_set0.UserUniforms).weights0.z;
float3 l9_440=l9_437.position.xyz+(l9_438*l9_439);
l9_437.position=float4(l9_440.x,l9_440.y,l9_440.z,l9_437.position.w);
l9_404=l9_437;
sc_Vertex_t l9_441=l9_404;
float3 l9_442=in.blendShape3Pos;
float l9_443=(*sc_set0.UserUniforms).weights0.w;
float3 l9_444=l9_441.position.xyz+(l9_442*l9_443);
l9_441.position=float4(l9_444.x,l9_444.y,l9_444.z,l9_441.position.w);
l9_404=l9_441;
sc_Vertex_t l9_445=l9_404;
float3 l9_446=in.blendShape4Pos;
float l9_447=(*sc_set0.UserUniforms).weights1.x;
float3 l9_448=l9_445.position.xyz+(l9_446*l9_447);
l9_445.position=float4(l9_448.x,l9_448.y,l9_448.z,l9_445.position.w);
l9_404=l9_445;
sc_Vertex_t l9_449=l9_404;
float3 l9_450=in.blendShape5Pos;
float l9_451=(*sc_set0.UserUniforms).weights1.y;
float3 l9_452=l9_449.position.xyz+(l9_450*l9_451);
l9_449.position=float4(l9_452.x,l9_452.y,l9_452.z,l9_449.position.w);
l9_404=l9_449;
}
}
l9_403=l9_404;
sc_Vertex_t l9_453=l9_403;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_454=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_454=float4(1.0,fract(in.boneData.yzw));
l9_454.x-=dot(l9_454.yzw,float3(1.0));
}
float4 l9_455=l9_454;
float4 l9_456=l9_455;
int l9_457=int(in.boneData.x);
int l9_458=int(in.boneData.y);
int l9_459=int(in.boneData.z);
int l9_460=int(in.boneData.w);
int l9_461=l9_457;
float4 l9_462=l9_453.position;
float3 l9_463=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_464=l9_461;
float4 l9_465=(*sc_set0.sc_BonesUBO).sc_Bones[l9_464].boneMatrix[0];
float4 l9_466=(*sc_set0.sc_BonesUBO).sc_Bones[l9_464].boneMatrix[1];
float4 l9_467=(*sc_set0.sc_BonesUBO).sc_Bones[l9_464].boneMatrix[2];
float4 l9_468[3];
l9_468[0]=l9_465;
l9_468[1]=l9_466;
l9_468[2]=l9_467;
l9_463=float3(dot(l9_462,l9_468[0]),dot(l9_462,l9_468[1]),dot(l9_462,l9_468[2]));
}
else
{
l9_463=l9_462.xyz;
}
float3 l9_469=l9_463;
float3 l9_470=l9_469;
float l9_471=l9_456.x;
int l9_472=l9_458;
float4 l9_473=l9_453.position;
float3 l9_474=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_475=l9_472;
float4 l9_476=(*sc_set0.sc_BonesUBO).sc_Bones[l9_475].boneMatrix[0];
float4 l9_477=(*sc_set0.sc_BonesUBO).sc_Bones[l9_475].boneMatrix[1];
float4 l9_478=(*sc_set0.sc_BonesUBO).sc_Bones[l9_475].boneMatrix[2];
float4 l9_479[3];
l9_479[0]=l9_476;
l9_479[1]=l9_477;
l9_479[2]=l9_478;
l9_474=float3(dot(l9_473,l9_479[0]),dot(l9_473,l9_479[1]),dot(l9_473,l9_479[2]));
}
else
{
l9_474=l9_473.xyz;
}
float3 l9_480=l9_474;
float3 l9_481=l9_480;
float l9_482=l9_456.y;
int l9_483=l9_459;
float4 l9_484=l9_453.position;
float3 l9_485=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_486=l9_483;
float4 l9_487=(*sc_set0.sc_BonesUBO).sc_Bones[l9_486].boneMatrix[0];
float4 l9_488=(*sc_set0.sc_BonesUBO).sc_Bones[l9_486].boneMatrix[1];
float4 l9_489=(*sc_set0.sc_BonesUBO).sc_Bones[l9_486].boneMatrix[2];
float4 l9_490[3];
l9_490[0]=l9_487;
l9_490[1]=l9_488;
l9_490[2]=l9_489;
l9_485=float3(dot(l9_484,l9_490[0]),dot(l9_484,l9_490[1]),dot(l9_484,l9_490[2]));
}
else
{
l9_485=l9_484.xyz;
}
float3 l9_491=l9_485;
float3 l9_492=l9_491;
float l9_493=l9_456.z;
int l9_494=l9_460;
float4 l9_495=l9_453.position;
float3 l9_496=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_497=l9_494;
float4 l9_498=(*sc_set0.sc_BonesUBO).sc_Bones[l9_497].boneMatrix[0];
float4 l9_499=(*sc_set0.sc_BonesUBO).sc_Bones[l9_497].boneMatrix[1];
float4 l9_500=(*sc_set0.sc_BonesUBO).sc_Bones[l9_497].boneMatrix[2];
float4 l9_501[3];
l9_501[0]=l9_498;
l9_501[1]=l9_499;
l9_501[2]=l9_500;
l9_496=float3(dot(l9_495,l9_501[0]),dot(l9_495,l9_501[1]),dot(l9_495,l9_501[2]));
}
else
{
l9_496=l9_495.xyz;
}
float3 l9_502=l9_496;
float3 l9_503=(((l9_470*l9_471)+(l9_481*l9_482))+(l9_492*l9_493))+(l9_502*l9_456.w);
l9_453.position=float4(l9_503.x,l9_503.y,l9_503.z,l9_453.position.w);
int l9_504=l9_457;
float3x3 l9_505=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_504].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_504].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_504].normalMatrix[2].xyz));
float3x3 l9_506=l9_505;
float3x3 l9_507=l9_506;
int l9_508=l9_458;
float3x3 l9_509=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_508].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_508].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_508].normalMatrix[2].xyz));
float3x3 l9_510=l9_509;
float3x3 l9_511=l9_510;
int l9_512=l9_459;
float3x3 l9_513=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_512].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_512].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_512].normalMatrix[2].xyz));
float3x3 l9_514=l9_513;
float3x3 l9_515=l9_514;
int l9_516=l9_460;
float3x3 l9_517=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_516].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_516].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_516].normalMatrix[2].xyz));
float3x3 l9_518=l9_517;
float3x3 l9_519=l9_518;
l9_453.normal=((((l9_507*l9_453.normal)*l9_456.x)+((l9_511*l9_453.normal)*l9_456.y))+((l9_515*l9_453.normal)*l9_456.z))+((l9_519*l9_453.normal)*l9_456.w);
l9_453.tangent=((((l9_507*l9_453.tangent)*l9_456.x)+((l9_511*l9_453.tangent)*l9_456.y))+((l9_515*l9_453.tangent)*l9_456.z))+((l9_519*l9_453.tangent)*l9_456.w);
}
l9_403=l9_453;
float l9_520=(*sc_set0.UserUniforms).voxelization_params_0.y;
float l9_521=(*sc_set0.UserUniforms).voxelization_params_0.z;
float l9_522=(*sc_set0.UserUniforms).voxelization_params_0.w;
float l9_523=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_524=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_525=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_526=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_527=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_528=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float3 l9_529=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float l9_530=l9_520/l9_521;
int l9_531=gl_InstanceIndex;
int l9_532=l9_531;
l9_403.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_403.position;
float3 l9_533=l9_403.position.xyz;
float3 l9_534=float3(float(l9_532%int(l9_522))*l9_520,float(l9_532/int(l9_522))*l9_520,(float(l9_532)*l9_530)+l9_527);
float3 l9_535=l9_533+l9_534;
float4 l9_536=float4(l9_535-l9_529,1.0);
float l9_537=l9_523;
float l9_538=l9_524;
float l9_539=l9_525;
float l9_540=l9_526;
float l9_541=l9_527;
float l9_542=l9_528;
float4x4 l9_543=float4x4(float4(2.0/(l9_538-l9_537),0.0,0.0,(-(l9_538+l9_537))/(l9_538-l9_537)),float4(0.0,2.0/(l9_540-l9_539),0.0,(-(l9_540+l9_539))/(l9_540-l9_539)),float4(0.0,0.0,(-2.0)/(l9_542-l9_541),(-(l9_542+l9_541))/(l9_542-l9_541)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_544=l9_543;
float4 l9_545=l9_544*l9_536;
l9_545.w=1.0;
out.varScreenPos=l9_545;
float4 l9_546=l9_545*1.0;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_546.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_547=l9_546;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_548=dot(l9_547,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_549=l9_548;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_549;
}
}
float4 l9_550=float4(l9_546.x,-l9_546.y,(l9_546.z*0.5)+(l9_546.w*0.5),l9_546.w);
out.gl_Position=l9_550;
param_21=l9_403;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
sc_Vertex_t l9_551=param_21;
sc_Vertex_t l9_552=l9_551;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_553=l9_552;
float3 l9_554=in.blendShape0Pos;
float3 l9_555=in.blendShape0Normal;
float l9_556=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_557=l9_553;
float3 l9_558=l9_554;
float l9_559=l9_556;
float3 l9_560=l9_557.position.xyz+(l9_558*l9_559);
l9_557.position=float4(l9_560.x,l9_560.y,l9_560.z,l9_557.position.w);
l9_553=l9_557;
l9_553.normal+=(l9_555*l9_556);
l9_552=l9_553;
sc_Vertex_t l9_561=l9_552;
float3 l9_562=in.blendShape1Pos;
float3 l9_563=in.blendShape1Normal;
float l9_564=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_565=l9_561;
float3 l9_566=l9_562;
float l9_567=l9_564;
float3 l9_568=l9_565.position.xyz+(l9_566*l9_567);
l9_565.position=float4(l9_568.x,l9_568.y,l9_568.z,l9_565.position.w);
l9_561=l9_565;
l9_561.normal+=(l9_563*l9_564);
l9_552=l9_561;
sc_Vertex_t l9_569=l9_552;
float3 l9_570=in.blendShape2Pos;
float3 l9_571=in.blendShape2Normal;
float l9_572=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_573=l9_569;
float3 l9_574=l9_570;
float l9_575=l9_572;
float3 l9_576=l9_573.position.xyz+(l9_574*l9_575);
l9_573.position=float4(l9_576.x,l9_576.y,l9_576.z,l9_573.position.w);
l9_569=l9_573;
l9_569.normal+=(l9_571*l9_572);
l9_552=l9_569;
}
else
{
sc_Vertex_t l9_577=l9_552;
float3 l9_578=in.blendShape0Pos;
float l9_579=(*sc_set0.UserUniforms).weights0.x;
float3 l9_580=l9_577.position.xyz+(l9_578*l9_579);
l9_577.position=float4(l9_580.x,l9_580.y,l9_580.z,l9_577.position.w);
l9_552=l9_577;
sc_Vertex_t l9_581=l9_552;
float3 l9_582=in.blendShape1Pos;
float l9_583=(*sc_set0.UserUniforms).weights0.y;
float3 l9_584=l9_581.position.xyz+(l9_582*l9_583);
l9_581.position=float4(l9_584.x,l9_584.y,l9_584.z,l9_581.position.w);
l9_552=l9_581;
sc_Vertex_t l9_585=l9_552;
float3 l9_586=in.blendShape2Pos;
float l9_587=(*sc_set0.UserUniforms).weights0.z;
float3 l9_588=l9_585.position.xyz+(l9_586*l9_587);
l9_585.position=float4(l9_588.x,l9_588.y,l9_588.z,l9_585.position.w);
l9_552=l9_585;
sc_Vertex_t l9_589=l9_552;
float3 l9_590=in.blendShape3Pos;
float l9_591=(*sc_set0.UserUniforms).weights0.w;
float3 l9_592=l9_589.position.xyz+(l9_590*l9_591);
l9_589.position=float4(l9_592.x,l9_592.y,l9_592.z,l9_589.position.w);
l9_552=l9_589;
sc_Vertex_t l9_593=l9_552;
float3 l9_594=in.blendShape4Pos;
float l9_595=(*sc_set0.UserUniforms).weights1.x;
float3 l9_596=l9_593.position.xyz+(l9_594*l9_595);
l9_593.position=float4(l9_596.x,l9_596.y,l9_596.z,l9_593.position.w);
l9_552=l9_593;
sc_Vertex_t l9_597=l9_552;
float3 l9_598=in.blendShape5Pos;
float l9_599=(*sc_set0.UserUniforms).weights1.y;
float3 l9_600=l9_597.position.xyz+(l9_598*l9_599);
l9_597.position=float4(l9_600.x,l9_600.y,l9_600.z,l9_597.position.w);
l9_552=l9_597;
}
}
l9_551=l9_552;
sc_Vertex_t l9_601=l9_551;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_602=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_602=float4(1.0,fract(in.boneData.yzw));
l9_602.x-=dot(l9_602.yzw,float3(1.0));
}
float4 l9_603=l9_602;
float4 l9_604=l9_603;
int l9_605=int(in.boneData.x);
int l9_606=int(in.boneData.y);
int l9_607=int(in.boneData.z);
int l9_608=int(in.boneData.w);
int l9_609=l9_605;
float4 l9_610=l9_601.position;
float3 l9_611=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_612=l9_609;
float4 l9_613=(*sc_set0.sc_BonesUBO).sc_Bones[l9_612].boneMatrix[0];
float4 l9_614=(*sc_set0.sc_BonesUBO).sc_Bones[l9_612].boneMatrix[1];
float4 l9_615=(*sc_set0.sc_BonesUBO).sc_Bones[l9_612].boneMatrix[2];
float4 l9_616[3];
l9_616[0]=l9_613;
l9_616[1]=l9_614;
l9_616[2]=l9_615;
l9_611=float3(dot(l9_610,l9_616[0]),dot(l9_610,l9_616[1]),dot(l9_610,l9_616[2]));
}
else
{
l9_611=l9_610.xyz;
}
float3 l9_617=l9_611;
float3 l9_618=l9_617;
float l9_619=l9_604.x;
int l9_620=l9_606;
float4 l9_621=l9_601.position;
float3 l9_622=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_623=l9_620;
float4 l9_624=(*sc_set0.sc_BonesUBO).sc_Bones[l9_623].boneMatrix[0];
float4 l9_625=(*sc_set0.sc_BonesUBO).sc_Bones[l9_623].boneMatrix[1];
float4 l9_626=(*sc_set0.sc_BonesUBO).sc_Bones[l9_623].boneMatrix[2];
float4 l9_627[3];
l9_627[0]=l9_624;
l9_627[1]=l9_625;
l9_627[2]=l9_626;
l9_622=float3(dot(l9_621,l9_627[0]),dot(l9_621,l9_627[1]),dot(l9_621,l9_627[2]));
}
else
{
l9_622=l9_621.xyz;
}
float3 l9_628=l9_622;
float3 l9_629=l9_628;
float l9_630=l9_604.y;
int l9_631=l9_607;
float4 l9_632=l9_601.position;
float3 l9_633=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_634=l9_631;
float4 l9_635=(*sc_set0.sc_BonesUBO).sc_Bones[l9_634].boneMatrix[0];
float4 l9_636=(*sc_set0.sc_BonesUBO).sc_Bones[l9_634].boneMatrix[1];
float4 l9_637=(*sc_set0.sc_BonesUBO).sc_Bones[l9_634].boneMatrix[2];
float4 l9_638[3];
l9_638[0]=l9_635;
l9_638[1]=l9_636;
l9_638[2]=l9_637;
l9_633=float3(dot(l9_632,l9_638[0]),dot(l9_632,l9_638[1]),dot(l9_632,l9_638[2]));
}
else
{
l9_633=l9_632.xyz;
}
float3 l9_639=l9_633;
float3 l9_640=l9_639;
float l9_641=l9_604.z;
int l9_642=l9_608;
float4 l9_643=l9_601.position;
float3 l9_644=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_645=l9_642;
float4 l9_646=(*sc_set0.sc_BonesUBO).sc_Bones[l9_645].boneMatrix[0];
float4 l9_647=(*sc_set0.sc_BonesUBO).sc_Bones[l9_645].boneMatrix[1];
float4 l9_648=(*sc_set0.sc_BonesUBO).sc_Bones[l9_645].boneMatrix[2];
float4 l9_649[3];
l9_649[0]=l9_646;
l9_649[1]=l9_647;
l9_649[2]=l9_648;
l9_644=float3(dot(l9_643,l9_649[0]),dot(l9_643,l9_649[1]),dot(l9_643,l9_649[2]));
}
else
{
l9_644=l9_643.xyz;
}
float3 l9_650=l9_644;
float3 l9_651=(((l9_618*l9_619)+(l9_629*l9_630))+(l9_640*l9_641))+(l9_650*l9_604.w);
l9_601.position=float4(l9_651.x,l9_651.y,l9_651.z,l9_601.position.w);
int l9_652=l9_605;
float3x3 l9_653=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_652].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_652].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_652].normalMatrix[2].xyz));
float3x3 l9_654=l9_653;
float3x3 l9_655=l9_654;
int l9_656=l9_606;
float3x3 l9_657=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_656].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_656].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_656].normalMatrix[2].xyz));
float3x3 l9_658=l9_657;
float3x3 l9_659=l9_658;
int l9_660=l9_607;
float3x3 l9_661=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_660].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_660].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_660].normalMatrix[2].xyz));
float3x3 l9_662=l9_661;
float3x3 l9_663=l9_662;
int l9_664=l9_608;
float3x3 l9_665=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_664].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_664].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_664].normalMatrix[2].xyz));
float3x3 l9_666=l9_665;
float3x3 l9_667=l9_666;
l9_601.normal=((((l9_655*l9_601.normal)*l9_604.x)+((l9_659*l9_601.normal)*l9_604.y))+((l9_663*l9_601.normal)*l9_604.z))+((l9_667*l9_601.normal)*l9_604.w);
l9_601.tangent=((((l9_655*l9_601.tangent)*l9_604.x)+((l9_659*l9_601.tangent)*l9_604.y))+((l9_663*l9_601.tangent)*l9_604.z))+((l9_667*l9_601.tangent)*l9_604.w);
}
l9_551=l9_601;
float3 l9_668=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float2 l9_669=((l9_551.position.xy/float2(l9_551.position.w))*0.5)+float2(0.5);
out.varTex01=float4(l9_669.x,l9_669.y,out.varTex01.z,out.varTex01.w);
l9_551.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_551.position;
float3 l9_670=l9_551.position.xyz-l9_668;
l9_551.position=float4(l9_670.x,l9_670.y,l9_670.z,l9_551.position.w);
out.varPosAndMotion=float4(l9_551.position.xyz.x,l9_551.position.xyz.y,l9_551.position.xyz.z,out.varPosAndMotion.w);
float3 l9_671=normalize(l9_551.normal);
out.varNormalAndMotion=float4(l9_671.x,l9_671.y,l9_671.z,out.varNormalAndMotion.w);
float l9_672=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_673=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_674=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_675=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_676=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_677=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float l9_678=l9_672;
float l9_679=l9_673;
float l9_680=l9_674;
float l9_681=l9_675;
float l9_682=l9_676;
float l9_683=l9_677;
float4x4 l9_684=float4x4(float4(2.0/(l9_679-l9_678),0.0,0.0,(-(l9_679+l9_678))/(l9_679-l9_678)),float4(0.0,2.0/(l9_681-l9_680),0.0,(-(l9_681+l9_680))/(l9_681-l9_680)),float4(0.0,0.0,(-2.0)/(l9_683-l9_682),(-(l9_683+l9_682))/(l9_683-l9_682)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_685=l9_684;
float4 l9_686=float4(0.0);
float3 l9_687=(l9_685*l9_551.position).xyz;
l9_686=float4(l9_687.x,l9_687.y,l9_687.z,l9_686.w);
l9_686.w=1.0;
out.varScreenPos=l9_686;
float4 l9_688=l9_686*1.0;
float4 l9_689=l9_688;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_689.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_690=l9_689;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_691=dot(l9_690,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_692=l9_691;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_692;
}
}
float4 l9_693=float4(l9_689.x,-l9_689.y,(l9_689.z*0.5)+(l9_689.w*0.5),l9_689.w);
out.gl_Position=l9_693;
param_21=l9_551;
}
}
v=param_21;
float3 param_26=out.varPosAndMotion.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float4 l9_694=((*sc_set0.UserUniforms).sc_PrevFrameModelMatrix*(*sc_set0.UserUniforms).sc_ModelMatrixInverse)*float4(param_26,1.0);
float3 l9_695=param_26;
float3 l9_696=l9_694.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
int l9_697=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_697=0;
}
else
{
l9_697=gl_InstanceIndex%2;
}
int l9_698=l9_697;
float4 l9_699=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_698]*float4(l9_695,1.0);
float2 l9_700=l9_699.xy/float2(l9_699.w);
l9_699=float4(l9_700.x,l9_700.y,l9_699.z,l9_699.w);
int l9_701=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_701=0;
}
else
{
l9_701=gl_InstanceIndex%2;
}
int l9_702=l9_701;
float4 l9_703=(*sc_set0.UserUniforms).sc_PrevFrameViewProjectionMatrixArray[l9_702]*float4(l9_696,1.0);
float2 l9_704=l9_703.xy/float2(l9_703.w);
l9_703=float4(l9_704.x,l9_704.y,l9_703.z,l9_703.w);
float2 l9_705=(l9_699.xy-l9_703.xy)*0.5;
out.varPosAndMotion.w=l9_705.x;
out.varNormalAndMotion.w=l9_705.y;
}
}
if (PreviewInfo.Saved)
{
out.PreviewVertexColor=float4(PreviewInfo.Color.xyz,1.0);
out.PreviewVertexSaved=1.0;
}
return out;
}
} // VERTEX SHADER


namespace SNAP_FS {
struct SurfaceProperties
{
float3 albedo;
float opacity;
float3 normal;
float3 positionWS;
float3 viewDirWS;
float metallic;
float roughness;
float3 emissive;
float3 ao;
float3 specularAo;
float3 bakedShadows;
float3 specColor;
};
struct LightingComponents
{
float3 directDiffuse;
float3 directSpecular;
float3 indirectDiffuse;
float3 indirectSpecular;
float3 emitted;
float3 transmitted;
};
struct LightProperties
{
float3 direction;
float3 color;
float attenuation;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float2 N7_TransformedUV2;
float2 N7_TransformedUV3;
float3 BumpedNormal;
float3 ViewDirWS;
float3 PositionWS;
float3 VertexNormal_WorldSpace;
float3 VertexTangent_WorldSpace;
float3 VertexBinormal_WorldSpace;
float2 Surface_UVCoord0;
float2 Surface_UVCoord1;
float4 VertexColor;
float2 gScreenCoord;
float3 SurfacePosition_WorldSpace;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int sc_RayTracingReceiverEffectsMask;
float4 sc_RayTracingReflectionsSize;
float4 sc_RayTracingReflectionsDims;
float4 sc_RayTracingReflectionsView;
float4 sc_RayTracingGlobalIlluminationSize;
float4 sc_RayTracingGlobalIlluminationDims;
float4 sc_RayTracingGlobalIlluminationView;
float4 sc_RayTracingShadowsSize;
float4 sc_RayTracingShadowsDims;
float4 sc_RayTracingShadowsView;
float3 sc_RayTracingOriginScale;
uint sc_RayTracingReceiverMask;
float3 sc_RayTracingOriginScaleInv;
float3 sc_RayTracingOriginOffset;
uint sc_RayTracingReceiverId;
float4 voxelization_params_0;
float4 voxelization_params_frustum_lrbt;
float4 voxelization_params_frustum_nf;
float3 voxelization_params_camera_pos;
float4x4 sc_ModelMatrixVoxelization;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float3 oceanPos;
float4 heightmapSize;
float4 heightmapDims;
float4 heightmapView;
float3x3 heightmapTransform;
float4 heightmapUvMinMax;
float4 heightmapBorderColor;
float2 unpackVal;
float3 oceanMin;
float3 oceanMax;
float enableFluid;
float2 pressureRange;
float4 fluidPressureSize;
float4 fluidPressureDims;
float4 fluidPressureView;
float3x3 fluidPressureTransform;
float4 fluidPressureUvMinMax;
float4 fluidPressureBorderColor;
float fluidMul;
float speed;
float bodyIntersection;
float4 baseColor;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float3 recolorRed;
float3 recolorGreen;
float3 recolorBlue;
float4 opacityTexSize;
float4 opacityTexDims;
float4 opacityTexView;
float3x3 opacityTexTransform;
float4 opacityTexUvMinMax;
float4 opacityTexBorderColor;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float4 detailNormalTexSize;
float4 detailNormalTexDims;
float4 detailNormalTexView;
float3x3 detailNormalTexTransform;
float4 detailNormalTexUvMinMax;
float4 detailNormalTexBorderColor;
float4 emissiveTexSize;
float4 emissiveTexDims;
float4 emissiveTexView;
float3x3 emissiveTexTransform;
float4 emissiveTexUvMinMax;
float4 emissiveTexBorderColor;
float3 emissiveColor;
float emissiveIntensity;
float4 reflectionTexSize;
float4 reflectionTexDims;
float4 reflectionTexView;
float3x3 reflectionTexTransform;
float4 reflectionTexUvMinMax;
float4 reflectionTexBorderColor;
float reflectionIntensity;
float4 reflectionModulationTexSize;
float4 reflectionModulationTexDims;
float4 reflectionModulationTexView;
float3x3 reflectionModulationTexTransform;
float4 reflectionModulationTexUvMinMax;
float4 reflectionModulationTexBorderColor;
float3 rimColor;
float rimIntensity;
float rimExponent;
float4 rimColorTexSize;
float4 rimColorTexDims;
float4 rimColorTexView;
float3x3 rimColorTexTransform;
float4 rimColorTexUvMinMax;
float4 rimColorTexBorderColor;
float metallic;
float roughness;
float4 materialParamsTexSize;
float4 materialParamsTexDims;
float4 materialParamsTexView;
float3x3 materialParamsTexTransform;
float4 materialParamsTexUvMinMax;
float4 materialParamsTexBorderColor;
float specularAoIntensity;
float specularAoDarkening;
float2 uv2Scale;
float2 uv2Offset;
float2 uv3Scale;
float2 uv3Offset;
float4 bodyDepthTexSize;
float4 bodyDepthTexDims;
float4 bodyDepthTexView;
float3x3 bodyDepthTexTransform;
float4 bodyDepthTexUvMinMax;
float4 bodyDepthTexBorderColor;
float4 bodyDepthTexProjectionMatrixTerms;
float Port_BobPosSpeed_N153;
float Port_BobPosAmount_N153;
float Port_BobRotSpeed_N153;
float Port_BobRotAmount_N153;
};
struct sc_PointLight_t_1
{
bool falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct sc_Set0
{
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> baseTex [[id(1)]];
texture2d<float> bodyDepthTex [[id(2)]];
texture2d<float> detailNormalTex [[id(3)]];
texture2d<float> emissiveTex [[id(4)]];
texture2d<float> fluidPressure [[id(5)]];
texture2d<float> heightmap [[id(6)]];
texture2d<float> intensityTexture [[id(7)]];
texture2d<float> materialParamsTex [[id(8)]];
texture2d<float> normalTex [[id(9)]];
texture2d<float> opacityTex [[id(10)]];
texture2d<float> reflectionModulationTex [[id(11)]];
texture2d<float> reflectionTex [[id(12)]];
texture2d<float> rimColorTex [[id(13)]];
texture2d<float> sc_EnvmapDiffuse [[id(14)]];
texture2d<float> sc_EnvmapSpecular [[id(15)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(24)]];
texture2d<float> sc_RayTracingReflections [[id(25)]];
texture2d<float> sc_RayTracingShadows [[id(26)]];
texture2d<float> sc_SSAOTexture [[id(27)]];
texture2d<float> sc_ScreenTexture [[id(28)]];
texture2d<float> sc_ShadowTexture [[id(29)]];
sampler baseTexSmpSC [[id(31)]];
sampler bodyDepthTexSmpSC [[id(32)]];
sampler detailNormalTexSmpSC [[id(33)]];
sampler emissiveTexSmpSC [[id(34)]];
sampler fluidPressureSmpSC [[id(35)]];
sampler heightmapSmpSC [[id(36)]];
sampler intensityTextureSmpSC [[id(37)]];
sampler materialParamsTexSmpSC [[id(38)]];
sampler normalTexSmpSC [[id(39)]];
sampler opacityTexSmpSC [[id(40)]];
sampler reflectionModulationTexSmpSC [[id(41)]];
sampler reflectionTexSmpSC [[id(42)]];
sampler rimColorTexSmpSC [[id(43)]];
sampler sc_EnvmapDiffuseSmpSC [[id(44)]];
sampler sc_EnvmapSpecularSmpSC [[id(45)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(47)]];
sampler sc_RayTracingReflectionsSmpSC [[id(48)]];
sampler sc_RayTracingShadowsSmpSC [[id(49)]];
sampler sc_SSAOTextureSmpSC [[id(50)]];
sampler sc_ScreenTextureSmpSC [[id(51)]];
sampler sc_ShadowTextureSmpSC [[id(52)]];
constant userUniformsObj* UserUniforms [[id(54)]];
};
struct main_frag_out
{
float4 sc_FragData0 [[color(0)]];
};
struct main_frag_in
{
float4 varPosAndMotion [[user(locn0)]];
float4 varNormalAndMotion [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varTex01 [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
float3 evaluateSSAO(thread const float3& positionWS,thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> sc_SSAOTexture,thread sampler sc_SSAOTextureSmpSC)
{
if ((int(sc_SSAOEnabled_tmp)!=0))
{
int l9_0=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_0=0;
}
else
{
l9_0=varStereoViewID;
}
int l9_1=l9_0;
float4 clipSpaceCoord=UserUniforms.sc_ViewProjectionMatrixArray[l9_1]*float4(positionWS,1.0);
float3 l9_2=clipSpaceCoord.xyz/float3(clipSpaceCoord.w);
clipSpaceCoord=float4(l9_2.x,l9_2.y,l9_2.z,clipSpaceCoord.w);
float4 shadowSample=sc_SSAOTexture.sample(sc_SSAOTextureSmpSC,((clipSpaceCoord.xy*0.5)+float2(0.5)));
return float3(shadowSample.x);
}
else
{
return float3(1.0);
}
}
float3 calculateDirectSpecular(thread const SurfaceProperties& surfaceProperties,thread const float3& L,thread const float3& V)
{
float r=fast::max(surfaceProperties.roughness,0.029999999);
float3 F0=surfaceProperties.specColor;
float3 N=surfaceProperties.normal;
float3 H=normalize(L+V);
float param=dot(N,L);
float l9_0=fast::clamp(param,0.0,1.0);
float NdotL=l9_0;
float param_1=dot(N,V);
float l9_1=fast::clamp(param_1,0.0,1.0);
float NdotV=l9_1;
float param_2=dot(N,H);
float l9_2=fast::clamp(param_2,0.0,1.0);
float NdotH=l9_2;
float param_3=dot(V,H);
float l9_3=fast::clamp(param_3,0.0,1.0);
float VdotH=l9_3;
if (SC_DEVICE_CLASS_tmp>=2)
{
float param_4=NdotH;
float param_5=r;
float l9_4=param_5*param_5;
float l9_5=l9_4*l9_4;
float l9_6=param_4*param_4;
float l9_7=(l9_6*(l9_5-1.0))+1.0;
float l9_8=l9_7*l9_7;
float l9_9=9.9999999e-09;
float l9_10=l9_5/(l9_8+l9_9);
float param_6=NdotL;
float param_7=NdotV;
float param_8=r;
float l9_11=param_6;
float l9_12=param_8;
float l9_13=l9_12+1.0;
l9_13=(l9_13*l9_13)*0.125;
float l9_14=(l9_11*(1.0-l9_13))+l9_13;
float l9_15=param_7;
float l9_16=param_8;
float l9_17=l9_16+1.0;
l9_17=(l9_17*l9_17)*0.125;
float l9_18=(l9_15*(1.0-l9_17))+l9_17;
float l9_19=1.0/(l9_14*l9_18);
float param_9=VdotH;
float3 param_10=F0;
float l9_20=param_9;
float3 l9_21=param_10;
float3 l9_22=float3(1.0);
float l9_23=1.0-l9_20;
float l9_24=l9_23*l9_23;
float l9_25=(l9_24*l9_24)*l9_23;
float3 l9_26=l9_21+((l9_22-l9_21)*l9_25);
float3 l9_27=l9_26;
return l9_27*(((l9_10*l9_19)*0.25)*NdotL);
}
else
{
float specPower=exp2(11.0-(10.0*r));
float param_11=VdotH;
float3 param_12=F0;
float l9_28=param_11;
float3 l9_29=param_12;
float3 l9_30=float3(1.0);
float l9_31=1.0-l9_28;
float l9_32=l9_31*l9_31;
float l9_33=(l9_32*l9_32)*l9_31;
float3 l9_34=l9_29+((l9_30-l9_29)*l9_33);
float3 l9_35=l9_34;
return ((l9_35*((specPower*0.125)+0.25))*pow(NdotH,specPower))*NdotL;
}
}
float computeDistanceAttenuation(thread const float& distanceToLight,thread const float& falloffEndDistance)
{
float distanceToLightSquared=distanceToLight*distanceToLight;
if (falloffEndDistance==0.0)
{
return 1.0/distanceToLightSquared;
}
float distanceToLightToTheFourth=distanceToLightSquared*distanceToLightSquared;
float falloffEndDistanceToTheFourth=pow(falloffEndDistance,4.0);
return fast::max(fast::min(1.0-(distanceToLightToTheFourth/falloffEndDistanceToTheFourth),1.0),0.0)/distanceToLightSquared;
}
float2 calcSeamlessPanoramicUvsForSampling(thread const float2& uv,thread const float2& topMipRes,thread const float& lod)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 thisMipRes=fast::max(float2(1.0),topMipRes/float2(exp2(lod)));
return ((uv*(thisMipRes-float2(1.0)))/thisMipRes)+(float2(0.5)/thisMipRes);
}
else
{
return uv;
}
}
float3 getSpecularDominantDir(thread const float3& N,thread const float3& R,thread const float& roughness)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float lerpFactor=(roughness*roughness)*roughness;
return normalize(mix(R,N,float3(lerpFactor)));
}
else
{
return R;
}
}
float3 envBRDFApprox(thread const SurfaceProperties& surfaceProperties,thread const float& NdotV)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float param=surfaceProperties.roughness;
float param_1=NdotV;
float4 l9_0=(float4(-1.0,-0.0275,-0.57200003,0.022)*param)+float4(1.0,0.0425,1.04,-0.039999999);
float l9_1=(fast::min(l9_0.x*l9_0.x,exp2((-9.2799997)*param_1))*l9_0.x)+l9_0.y;
float2 l9_2=(float2(-1.04,1.04)*l9_1)+l9_0.zw;
float2 l9_3=l9_2;
float2 AB=l9_3;
return fast::max((surfaceProperties.specColor*AB.x)+float3(AB.y),float3(0.0));
}
else
{
float3 fresnelMax=fast::max(float3(1.0-surfaceProperties.roughness),surfaceProperties.specColor);
float param_2=NdotV;
float3 param_3=surfaceProperties.specColor;
float3 param_4=fresnelMax;
float l9_4=1.0-param_2;
float l9_5=l9_4*l9_4;
float l9_6=(l9_5*l9_5)*l9_4;
float3 l9_7=param_3+((param_4-param_3)*l9_6);
return l9_7;
}
}
float srgbToLinear(thread const float& x)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
return pow(x,2.2);
}
else
{
return x*x;
}
}
float linearToSrgb(thread const float& x)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
return pow(x,0.45454547);
}
else
{
return sqrt(x);
}
}
float transformSingleColor(thread const float& original,thread const float& intMap,thread const float& target)
{
if (((int(BLEND_MODE_REALISTIC_tmp)!=0)||(int(BLEND_MODE_FORGRAY_tmp)!=0))||(int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
return original/pow(1.0-target,intMap);
}
else
{
if ((int(BLEND_MODE_DIVISION_tmp)!=0))
{
return original/(1.0-target);
}
else
{
if ((int(BLEND_MODE_BRIGHT_tmp)!=0))
{
return original/pow(1.0-target,2.0-(2.0*original));
}
}
}
return 0.0;
}
float3 transformColor(thread const float& yValue,thread const float3& original,thread const float3& target,thread const float& weight,thread const float& intMap)
{
if ((int(BLEND_MODE_INTENSE_tmp)!=0))
{
float3 param=original;
float3 l9_0=param;
float4 l9_1;
if (l9_0.y<l9_0.z)
{
l9_1=float4(l9_0.zy,-1.0,0.66666669);
}
else
{
l9_1=float4(l9_0.yz,0.0,-0.33333334);
}
float4 l9_2=l9_1;
float4 l9_3;
if (l9_0.x<l9_2.x)
{
l9_3=float4(l9_2.xyw,l9_0.x);
}
else
{
l9_3=float4(l9_0.x,l9_2.yzx);
}
float4 l9_4=l9_3;
float l9_5=l9_4.x-fast::min(l9_4.w,l9_4.y);
float l9_6=abs(((l9_4.w-l9_4.y)/((6.0*l9_5)+1e-07))+l9_4.z);
float l9_7=l9_4.x;
float3 l9_8=float3(l9_6,l9_5,l9_7);
float3 l9_9=l9_8;
float l9_10=l9_9.z-(l9_9.y*0.5);
float l9_11=l9_9.y/((1.0-abs((2.0*l9_10)-1.0))+1e-07);
float3 l9_12=float3(l9_9.x,l9_11,l9_10);
float3 hslOrig=l9_12;
float3 res=float3(0.0);
res.x=target.x;
res.y=target.y;
res.z=hslOrig.z;
float3 param_1=res;
float l9_13=param_1.x;
float l9_14=abs((6.0*l9_13)-3.0)-1.0;
float l9_15=2.0-abs((6.0*l9_13)-2.0);
float l9_16=2.0-abs((6.0*l9_13)-4.0);
float3 l9_17=fast::clamp(float3(l9_14,l9_15,l9_16),float3(0.0),float3(1.0));
float3 l9_18=l9_17;
float l9_19=(1.0-abs((2.0*param_1.z)-1.0))*param_1.y;
l9_18=((l9_18-float3(0.5))*l9_19)+float3(param_1.z);
float3 l9_20=l9_18;
res=l9_20;
float3 resColor=mix(original,res,float3(weight));
return resColor;
}
else
{
float3 tmpColor=float3(0.0);
float param_2=yValue;
float param_3=intMap;
float param_4=target.x;
tmpColor.x=transformSingleColor(param_2,param_3,param_4);
float param_5=yValue;
float param_6=intMap;
float param_7=target.y;
tmpColor.y=transformSingleColor(param_5,param_6,param_7);
float param_8=yValue;
float param_9=intMap;
float param_10=target.z;
tmpColor.z=transformSingleColor(param_8,param_9,param_10);
tmpColor=fast::clamp(tmpColor,float3(0.0),float3(1.0));
float3 resColor_1=mix(original,tmpColor,float3(weight));
return resColor_1;
}
}
float3 definedBlend(thread const float3& a,thread const float3& b,thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> intensityTexture,thread sampler intensityTextureSmpSC)
{
if ((int(BLEND_MODE_LIGHTEN_tmp)!=0))
{
return fast::max(a,b);
}
else
{
if ((int(BLEND_MODE_DARKEN_tmp)!=0))
{
return fast::min(a,b);
}
else
{
if ((int(BLEND_MODE_DIVIDE_tmp)!=0))
{
return b/a;
}
else
{
if ((int(BLEND_MODE_AVERAGE_tmp)!=0))
{
return (a+b)*0.5;
}
else
{
if ((int(BLEND_MODE_SUBTRACT_tmp)!=0))
{
return fast::max((a+b)-float3(1.0),float3(0.0));
}
else
{
if ((int(BLEND_MODE_DIFFERENCE_tmp)!=0))
{
return abs(a-b);
}
else
{
if ((int(BLEND_MODE_NEGATION_tmp)!=0))
{
return float3(1.0)-abs((float3(1.0)-a)-b);
}
else
{
if ((int(BLEND_MODE_EXCLUSION_tmp)!=0))
{
return (a+b)-((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_OVERLAY_tmp)!=0))
{
float l9_0;
if (a.x<0.5)
{
l9_0=(2.0*a.x)*b.x;
}
else
{
l9_0=1.0-((2.0*(1.0-a.x))*(1.0-b.x));
}
float l9_1=l9_0;
float l9_2;
if (a.y<0.5)
{
l9_2=(2.0*a.y)*b.y;
}
else
{
l9_2=1.0-((2.0*(1.0-a.y))*(1.0-b.y));
}
float l9_3=l9_2;
float l9_4;
if (a.z<0.5)
{
l9_4=(2.0*a.z)*b.z;
}
else
{
l9_4=1.0-((2.0*(1.0-a.z))*(1.0-b.z));
}
return float3(l9_1,l9_3,l9_4);
}
else
{
if ((int(BLEND_MODE_SOFT_LIGHT_tmp)!=0))
{
return (((float3(1.0)-(b*2.0))*a)*a)+((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_HARD_LIGHT_tmp)!=0))
{
float l9_5;
if (b.x<0.5)
{
l9_5=(2.0*b.x)*a.x;
}
else
{
l9_5=1.0-((2.0*(1.0-b.x))*(1.0-a.x));
}
float l9_6=l9_5;
float l9_7;
if (b.y<0.5)
{
l9_7=(2.0*b.y)*a.y;
}
else
{
l9_7=1.0-((2.0*(1.0-b.y))*(1.0-a.y));
}
float l9_8=l9_7;
float l9_9;
if (b.z<0.5)
{
l9_9=(2.0*b.z)*a.z;
}
else
{
l9_9=1.0-((2.0*(1.0-b.z))*(1.0-a.z));
}
return float3(l9_6,l9_8,l9_9);
}
else
{
if ((int(BLEND_MODE_COLOR_DODGE_tmp)!=0))
{
float l9_10;
if (b.x==1.0)
{
l9_10=b.x;
}
else
{
l9_10=fast::min(a.x/(1.0-b.x),1.0);
}
float l9_11=l9_10;
float l9_12;
if (b.y==1.0)
{
l9_12=b.y;
}
else
{
l9_12=fast::min(a.y/(1.0-b.y),1.0);
}
float l9_13=l9_12;
float l9_14;
if (b.z==1.0)
{
l9_14=b.z;
}
else
{
l9_14=fast::min(a.z/(1.0-b.z),1.0);
}
return float3(l9_11,l9_13,l9_14);
}
else
{
if ((int(BLEND_MODE_COLOR_BURN_tmp)!=0))
{
float l9_15;
if (b.x==0.0)
{
l9_15=b.x;
}
else
{
l9_15=fast::max(1.0-((1.0-a.x)/b.x),0.0);
}
float l9_16=l9_15;
float l9_17;
if (b.y==0.0)
{
l9_17=b.y;
}
else
{
l9_17=fast::max(1.0-((1.0-a.y)/b.y),0.0);
}
float l9_18=l9_17;
float l9_19;
if (b.z==0.0)
{
l9_19=b.z;
}
else
{
l9_19=fast::max(1.0-((1.0-a.z)/b.z),0.0);
}
return float3(l9_16,l9_18,l9_19);
}
else
{
if ((int(BLEND_MODE_LINEAR_LIGHT_tmp)!=0))
{
float l9_20;
if (b.x<0.5)
{
l9_20=fast::max((a.x+(2.0*b.x))-1.0,0.0);
}
else
{
l9_20=fast::min(a.x+(2.0*(b.x-0.5)),1.0);
}
float l9_21=l9_20;
float l9_22;
if (b.y<0.5)
{
l9_22=fast::max((a.y+(2.0*b.y))-1.0,0.0);
}
else
{
l9_22=fast::min(a.y+(2.0*(b.y-0.5)),1.0);
}
float l9_23=l9_22;
float l9_24;
if (b.z<0.5)
{
l9_24=fast::max((a.z+(2.0*b.z))-1.0,0.0);
}
else
{
l9_24=fast::min(a.z+(2.0*(b.z-0.5)),1.0);
}
return float3(l9_21,l9_23,l9_24);
}
else
{
if ((int(BLEND_MODE_VIVID_LIGHT_tmp)!=0))
{
float l9_25;
if (b.x<0.5)
{
float l9_26;
if ((2.0*b.x)==0.0)
{
l9_26=2.0*b.x;
}
else
{
l9_26=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_25=l9_26;
}
else
{
float l9_27;
if ((2.0*(b.x-0.5))==1.0)
{
l9_27=2.0*(b.x-0.5);
}
else
{
l9_27=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_25=l9_27;
}
float l9_28=l9_25;
float l9_29;
if (b.y<0.5)
{
float l9_30;
if ((2.0*b.y)==0.0)
{
l9_30=2.0*b.y;
}
else
{
l9_30=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_29=l9_30;
}
else
{
float l9_31;
if ((2.0*(b.y-0.5))==1.0)
{
l9_31=2.0*(b.y-0.5);
}
else
{
l9_31=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_29=l9_31;
}
float l9_32=l9_29;
float l9_33;
if (b.z<0.5)
{
float l9_34;
if ((2.0*b.z)==0.0)
{
l9_34=2.0*b.z;
}
else
{
l9_34=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_33=l9_34;
}
else
{
float l9_35;
if ((2.0*(b.z-0.5))==1.0)
{
l9_35=2.0*(b.z-0.5);
}
else
{
l9_35=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_33=l9_35;
}
return float3(l9_28,l9_32,l9_33);
}
else
{
if ((int(BLEND_MODE_PIN_LIGHT_tmp)!=0))
{
float l9_36;
if (b.x<0.5)
{
l9_36=fast::min(a.x,2.0*b.x);
}
else
{
l9_36=fast::max(a.x,2.0*(b.x-0.5));
}
float l9_37=l9_36;
float l9_38;
if (b.y<0.5)
{
l9_38=fast::min(a.y,2.0*b.y);
}
else
{
l9_38=fast::max(a.y,2.0*(b.y-0.5));
}
float l9_39=l9_38;
float l9_40;
if (b.z<0.5)
{
l9_40=fast::min(a.z,2.0*b.z);
}
else
{
l9_40=fast::max(a.z,2.0*(b.z-0.5));
}
return float3(l9_37,l9_39,l9_40);
}
else
{
if ((int(BLEND_MODE_HARD_MIX_tmp)!=0))
{
float l9_41;
if (b.x<0.5)
{
float l9_42;
if ((2.0*b.x)==0.0)
{
l9_42=2.0*b.x;
}
else
{
l9_42=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_41=l9_42;
}
else
{
float l9_43;
if ((2.0*(b.x-0.5))==1.0)
{
l9_43=2.0*(b.x-0.5);
}
else
{
l9_43=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_41=l9_43;
}
float l9_44=l9_41;
float l9_45;
if (b.y<0.5)
{
float l9_46;
if ((2.0*b.y)==0.0)
{
l9_46=2.0*b.y;
}
else
{
l9_46=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_45=l9_46;
}
else
{
float l9_47;
if ((2.0*(b.y-0.5))==1.0)
{
l9_47=2.0*(b.y-0.5);
}
else
{
l9_47=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_45=l9_47;
}
float l9_48=l9_45;
float l9_49;
if (b.z<0.5)
{
float l9_50;
if ((2.0*b.z)==0.0)
{
l9_50=2.0*b.z;
}
else
{
l9_50=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_49=l9_50;
}
else
{
float l9_51;
if ((2.0*(b.z-0.5))==1.0)
{
l9_51=2.0*(b.z-0.5);
}
else
{
l9_51=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_49=l9_51;
}
return float3((l9_44<0.5) ? 0.0 : 1.0,(l9_48<0.5) ? 0.0 : 1.0,(l9_49<0.5) ? 0.0 : 1.0);
}
else
{
if ((int(BLEND_MODE_HARD_REFLECT_tmp)!=0))
{
float l9_52;
if (b.x==1.0)
{
l9_52=b.x;
}
else
{
l9_52=fast::min((a.x*a.x)/(1.0-b.x),1.0);
}
float l9_53=l9_52;
float l9_54;
if (b.y==1.0)
{
l9_54=b.y;
}
else
{
l9_54=fast::min((a.y*a.y)/(1.0-b.y),1.0);
}
float l9_55=l9_54;
float l9_56;
if (b.z==1.0)
{
l9_56=b.z;
}
else
{
l9_56=fast::min((a.z*a.z)/(1.0-b.z),1.0);
}
return float3(l9_53,l9_55,l9_56);
}
else
{
if ((int(BLEND_MODE_HARD_GLOW_tmp)!=0))
{
float l9_57;
if (a.x==1.0)
{
l9_57=a.x;
}
else
{
l9_57=fast::min((b.x*b.x)/(1.0-a.x),1.0);
}
float l9_58=l9_57;
float l9_59;
if (a.y==1.0)
{
l9_59=a.y;
}
else
{
l9_59=fast::min((b.y*b.y)/(1.0-a.y),1.0);
}
float l9_60=l9_59;
float l9_61;
if (a.z==1.0)
{
l9_61=a.z;
}
else
{
l9_61=fast::min((b.z*b.z)/(1.0-a.z),1.0);
}
return float3(l9_58,l9_60,l9_61);
}
else
{
if ((int(BLEND_MODE_HARD_PHOENIX_tmp)!=0))
{
return (fast::min(a,b)-fast::max(a,b))+float3(1.0);
}
else
{
if ((int(BLEND_MODE_HUE_tmp)!=0))
{
float3 param=a;
float3 param_1=b;
float3 l9_62=param;
float3 l9_63=l9_62;
float4 l9_64;
if (l9_63.y<l9_63.z)
{
l9_64=float4(l9_63.zy,-1.0,0.66666669);
}
else
{
l9_64=float4(l9_63.yz,0.0,-0.33333334);
}
float4 l9_65=l9_64;
float4 l9_66;
if (l9_63.x<l9_65.x)
{
l9_66=float4(l9_65.xyw,l9_63.x);
}
else
{
l9_66=float4(l9_63.x,l9_65.yzx);
}
float4 l9_67=l9_66;
float l9_68=l9_67.x-fast::min(l9_67.w,l9_67.y);
float l9_69=abs(((l9_67.w-l9_67.y)/((6.0*l9_68)+1e-07))+l9_67.z);
float l9_70=l9_67.x;
float3 l9_71=float3(l9_69,l9_68,l9_70);
float3 l9_72=l9_71;
float l9_73=l9_72.z-(l9_72.y*0.5);
float l9_74=l9_72.y/((1.0-abs((2.0*l9_73)-1.0))+1e-07);
float3 l9_75=float3(l9_72.x,l9_74,l9_73);
float3 l9_76=l9_75;
float3 l9_77=param_1;
float3 l9_78=l9_77;
float4 l9_79;
if (l9_78.y<l9_78.z)
{
l9_79=float4(l9_78.zy,-1.0,0.66666669);
}
else
{
l9_79=float4(l9_78.yz,0.0,-0.33333334);
}
float4 l9_80=l9_79;
float4 l9_81;
if (l9_78.x<l9_80.x)
{
l9_81=float4(l9_80.xyw,l9_78.x);
}
else
{
l9_81=float4(l9_78.x,l9_80.yzx);
}
float4 l9_82=l9_81;
float l9_83=l9_82.x-fast::min(l9_82.w,l9_82.y);
float l9_84=abs(((l9_82.w-l9_82.y)/((6.0*l9_83)+1e-07))+l9_82.z);
float l9_85=l9_82.x;
float3 l9_86=float3(l9_84,l9_83,l9_85);
float3 l9_87=l9_86;
float l9_88=l9_87.z-(l9_87.y*0.5);
float l9_89=l9_87.y/((1.0-abs((2.0*l9_88)-1.0))+1e-07);
float3 l9_90=float3(l9_87.x,l9_89,l9_88);
float3 l9_91=float3(l9_90.x,l9_76.y,l9_76.z);
float l9_92=l9_91.x;
float l9_93=abs((6.0*l9_92)-3.0)-1.0;
float l9_94=2.0-abs((6.0*l9_92)-2.0);
float l9_95=2.0-abs((6.0*l9_92)-4.0);
float3 l9_96=fast::clamp(float3(l9_93,l9_94,l9_95),float3(0.0),float3(1.0));
float3 l9_97=l9_96;
float l9_98=(1.0-abs((2.0*l9_91.z)-1.0))*l9_91.y;
l9_97=((l9_97-float3(0.5))*l9_98)+float3(l9_91.z);
float3 l9_99=l9_97;
float3 l9_100=l9_99;
return l9_100;
}
else
{
if ((int(BLEND_MODE_SATURATION_tmp)!=0))
{
float3 param_2=a;
float3 param_3=b;
float3 l9_101=param_2;
float3 l9_102=l9_101;
float4 l9_103;
if (l9_102.y<l9_102.z)
{
l9_103=float4(l9_102.zy,-1.0,0.66666669);
}
else
{
l9_103=float4(l9_102.yz,0.0,-0.33333334);
}
float4 l9_104=l9_103;
float4 l9_105;
if (l9_102.x<l9_104.x)
{
l9_105=float4(l9_104.xyw,l9_102.x);
}
else
{
l9_105=float4(l9_102.x,l9_104.yzx);
}
float4 l9_106=l9_105;
float l9_107=l9_106.x-fast::min(l9_106.w,l9_106.y);
float l9_108=abs(((l9_106.w-l9_106.y)/((6.0*l9_107)+1e-07))+l9_106.z);
float l9_109=l9_106.x;
float3 l9_110=float3(l9_108,l9_107,l9_109);
float3 l9_111=l9_110;
float l9_112=l9_111.z-(l9_111.y*0.5);
float l9_113=l9_111.y/((1.0-abs((2.0*l9_112)-1.0))+1e-07);
float3 l9_114=float3(l9_111.x,l9_113,l9_112);
float3 l9_115=l9_114;
float l9_116=l9_115.x;
float3 l9_117=param_3;
float3 l9_118=l9_117;
float4 l9_119;
if (l9_118.y<l9_118.z)
{
l9_119=float4(l9_118.zy,-1.0,0.66666669);
}
else
{
l9_119=float4(l9_118.yz,0.0,-0.33333334);
}
float4 l9_120=l9_119;
float4 l9_121;
if (l9_118.x<l9_120.x)
{
l9_121=float4(l9_120.xyw,l9_118.x);
}
else
{
l9_121=float4(l9_118.x,l9_120.yzx);
}
float4 l9_122=l9_121;
float l9_123=l9_122.x-fast::min(l9_122.w,l9_122.y);
float l9_124=abs(((l9_122.w-l9_122.y)/((6.0*l9_123)+1e-07))+l9_122.z);
float l9_125=l9_122.x;
float3 l9_126=float3(l9_124,l9_123,l9_125);
float3 l9_127=l9_126;
float l9_128=l9_127.z-(l9_127.y*0.5);
float l9_129=l9_127.y/((1.0-abs((2.0*l9_128)-1.0))+1e-07);
float3 l9_130=float3(l9_127.x,l9_129,l9_128);
float3 l9_131=float3(l9_116,l9_130.y,l9_115.z);
float l9_132=l9_131.x;
float l9_133=abs((6.0*l9_132)-3.0)-1.0;
float l9_134=2.0-abs((6.0*l9_132)-2.0);
float l9_135=2.0-abs((6.0*l9_132)-4.0);
float3 l9_136=fast::clamp(float3(l9_133,l9_134,l9_135),float3(0.0),float3(1.0));
float3 l9_137=l9_136;
float l9_138=(1.0-abs((2.0*l9_131.z)-1.0))*l9_131.y;
l9_137=((l9_137-float3(0.5))*l9_138)+float3(l9_131.z);
float3 l9_139=l9_137;
float3 l9_140=l9_139;
return l9_140;
}
else
{
if ((int(BLEND_MODE_COLOR_tmp)!=0))
{
float3 param_4=a;
float3 param_5=b;
float3 l9_141=param_5;
float3 l9_142=l9_141;
float4 l9_143;
if (l9_142.y<l9_142.z)
{
l9_143=float4(l9_142.zy,-1.0,0.66666669);
}
else
{
l9_143=float4(l9_142.yz,0.0,-0.33333334);
}
float4 l9_144=l9_143;
float4 l9_145;
if (l9_142.x<l9_144.x)
{
l9_145=float4(l9_144.xyw,l9_142.x);
}
else
{
l9_145=float4(l9_142.x,l9_144.yzx);
}
float4 l9_146=l9_145;
float l9_147=l9_146.x-fast::min(l9_146.w,l9_146.y);
float l9_148=abs(((l9_146.w-l9_146.y)/((6.0*l9_147)+1e-07))+l9_146.z);
float l9_149=l9_146.x;
float3 l9_150=float3(l9_148,l9_147,l9_149);
float3 l9_151=l9_150;
float l9_152=l9_151.z-(l9_151.y*0.5);
float l9_153=l9_151.y/((1.0-abs((2.0*l9_152)-1.0))+1e-07);
float3 l9_154=float3(l9_151.x,l9_153,l9_152);
float3 l9_155=l9_154;
float l9_156=l9_155.x;
float l9_157=l9_155.y;
float3 l9_158=param_4;
float3 l9_159=l9_158;
float4 l9_160;
if (l9_159.y<l9_159.z)
{
l9_160=float4(l9_159.zy,-1.0,0.66666669);
}
else
{
l9_160=float4(l9_159.yz,0.0,-0.33333334);
}
float4 l9_161=l9_160;
float4 l9_162;
if (l9_159.x<l9_161.x)
{
l9_162=float4(l9_161.xyw,l9_159.x);
}
else
{
l9_162=float4(l9_159.x,l9_161.yzx);
}
float4 l9_163=l9_162;
float l9_164=l9_163.x-fast::min(l9_163.w,l9_163.y);
float l9_165=abs(((l9_163.w-l9_163.y)/((6.0*l9_164)+1e-07))+l9_163.z);
float l9_166=l9_163.x;
float3 l9_167=float3(l9_165,l9_164,l9_166);
float3 l9_168=l9_167;
float l9_169=l9_168.z-(l9_168.y*0.5);
float l9_170=l9_168.y/((1.0-abs((2.0*l9_169)-1.0))+1e-07);
float3 l9_171=float3(l9_168.x,l9_170,l9_169);
float3 l9_172=float3(l9_156,l9_157,l9_171.z);
float l9_173=l9_172.x;
float l9_174=abs((6.0*l9_173)-3.0)-1.0;
float l9_175=2.0-abs((6.0*l9_173)-2.0);
float l9_176=2.0-abs((6.0*l9_173)-4.0);
float3 l9_177=fast::clamp(float3(l9_174,l9_175,l9_176),float3(0.0),float3(1.0));
float3 l9_178=l9_177;
float l9_179=(1.0-abs((2.0*l9_172.z)-1.0))*l9_172.y;
l9_178=((l9_178-float3(0.5))*l9_179)+float3(l9_172.z);
float3 l9_180=l9_178;
float3 l9_181=l9_180;
return l9_181;
}
else
{
if ((int(BLEND_MODE_LUMINOSITY_tmp)!=0))
{
float3 param_6=a;
float3 param_7=b;
float3 l9_182=param_6;
float3 l9_183=l9_182;
float4 l9_184;
if (l9_183.y<l9_183.z)
{
l9_184=float4(l9_183.zy,-1.0,0.66666669);
}
else
{
l9_184=float4(l9_183.yz,0.0,-0.33333334);
}
float4 l9_185=l9_184;
float4 l9_186;
if (l9_183.x<l9_185.x)
{
l9_186=float4(l9_185.xyw,l9_183.x);
}
else
{
l9_186=float4(l9_183.x,l9_185.yzx);
}
float4 l9_187=l9_186;
float l9_188=l9_187.x-fast::min(l9_187.w,l9_187.y);
float l9_189=abs(((l9_187.w-l9_187.y)/((6.0*l9_188)+1e-07))+l9_187.z);
float l9_190=l9_187.x;
float3 l9_191=float3(l9_189,l9_188,l9_190);
float3 l9_192=l9_191;
float l9_193=l9_192.z-(l9_192.y*0.5);
float l9_194=l9_192.y/((1.0-abs((2.0*l9_193)-1.0))+1e-07);
float3 l9_195=float3(l9_192.x,l9_194,l9_193);
float3 l9_196=l9_195;
float l9_197=l9_196.x;
float l9_198=l9_196.y;
float3 l9_199=param_7;
float3 l9_200=l9_199;
float4 l9_201;
if (l9_200.y<l9_200.z)
{
l9_201=float4(l9_200.zy,-1.0,0.66666669);
}
else
{
l9_201=float4(l9_200.yz,0.0,-0.33333334);
}
float4 l9_202=l9_201;
float4 l9_203;
if (l9_200.x<l9_202.x)
{
l9_203=float4(l9_202.xyw,l9_200.x);
}
else
{
l9_203=float4(l9_200.x,l9_202.yzx);
}
float4 l9_204=l9_203;
float l9_205=l9_204.x-fast::min(l9_204.w,l9_204.y);
float l9_206=abs(((l9_204.w-l9_204.y)/((6.0*l9_205)+1e-07))+l9_204.z);
float l9_207=l9_204.x;
float3 l9_208=float3(l9_206,l9_205,l9_207);
float3 l9_209=l9_208;
float l9_210=l9_209.z-(l9_209.y*0.5);
float l9_211=l9_209.y/((1.0-abs((2.0*l9_210)-1.0))+1e-07);
float3 l9_212=float3(l9_209.x,l9_211,l9_210);
float3 l9_213=float3(l9_197,l9_198,l9_212.z);
float l9_214=l9_213.x;
float l9_215=abs((6.0*l9_214)-3.0)-1.0;
float l9_216=2.0-abs((6.0*l9_214)-2.0);
float l9_217=2.0-abs((6.0*l9_214)-4.0);
float3 l9_218=fast::clamp(float3(l9_215,l9_216,l9_217),float3(0.0),float3(1.0));
float3 l9_219=l9_218;
float l9_220=(1.0-abs((2.0*l9_213.z)-1.0))*l9_213.y;
l9_219=((l9_219-float3(0.5))*l9_220)+float3(l9_213.z);
float3 l9_221=l9_219;
float3 l9_222=l9_221;
return l9_222;
}
else
{
float3 param_8=a;
float3 param_9=b;
float3 l9_223=param_8;
float l9_224=((0.29899999*l9_223.x)+(0.58700001*l9_223.y))+(0.114*l9_223.z);
float l9_225=l9_224;
float l9_226=1.0;
float l9_227=pow(l9_225,1.0/UserUniforms.correctedIntensity);
int l9_228;
if ((int(intensityTextureHasSwappedViews_tmp)!=0))
{
int l9_229=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_229=0;
}
else
{
l9_229=varStereoViewID;
}
int l9_230=l9_229;
l9_228=1-l9_230;
}
else
{
int l9_231=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_231=0;
}
else
{
l9_231=varStereoViewID;
}
int l9_232=l9_231;
l9_228=l9_232;
}
int l9_233=l9_228;
int l9_234=intensityTextureLayout_tmp;
int l9_235=l9_233;
float2 l9_236=float2(l9_227,0.5);
bool l9_237=(int(SC_USE_UV_TRANSFORM_intensityTexture_tmp)!=0);
float3x3 l9_238=UserUniforms.intensityTextureTransform;
int2 l9_239=int2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp);
bool l9_240=(int(SC_USE_UV_MIN_MAX_intensityTexture_tmp)!=0);
float4 l9_241=UserUniforms.intensityTextureUvMinMax;
bool l9_242=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp)!=0);
float4 l9_243=UserUniforms.intensityTextureBorderColor;
float l9_244=0.0;
bool l9_245=l9_242&&(!l9_240);
float l9_246=1.0;
float l9_247=l9_236.x;
int l9_248=l9_239.x;
if (l9_248==1)
{
l9_247=fract(l9_247);
}
else
{
if (l9_248==2)
{
float l9_249=fract(l9_247);
float l9_250=l9_247-l9_249;
float l9_251=step(0.25,fract(l9_250*0.5));
l9_247=mix(l9_249,1.0-l9_249,fast::clamp(l9_251,0.0,1.0));
}
}
l9_236.x=l9_247;
float l9_252=l9_236.y;
int l9_253=l9_239.y;
if (l9_253==1)
{
l9_252=fract(l9_252);
}
else
{
if (l9_253==2)
{
float l9_254=fract(l9_252);
float l9_255=l9_252-l9_254;
float l9_256=step(0.25,fract(l9_255*0.5));
l9_252=mix(l9_254,1.0-l9_254,fast::clamp(l9_256,0.0,1.0));
}
}
l9_236.y=l9_252;
if (l9_240)
{
bool l9_257=l9_242;
bool l9_258;
if (l9_257)
{
l9_258=l9_239.x==3;
}
else
{
l9_258=l9_257;
}
float l9_259=l9_236.x;
float l9_260=l9_241.x;
float l9_261=l9_241.z;
bool l9_262=l9_258;
float l9_263=l9_246;
float l9_264=fast::clamp(l9_259,l9_260,l9_261);
float l9_265=step(abs(l9_259-l9_264),9.9999997e-06);
l9_263*=(l9_265+((1.0-float(l9_262))*(1.0-l9_265)));
l9_259=l9_264;
l9_236.x=l9_259;
l9_246=l9_263;
bool l9_266=l9_242;
bool l9_267;
if (l9_266)
{
l9_267=l9_239.y==3;
}
else
{
l9_267=l9_266;
}
float l9_268=l9_236.y;
float l9_269=l9_241.y;
float l9_270=l9_241.w;
bool l9_271=l9_267;
float l9_272=l9_246;
float l9_273=fast::clamp(l9_268,l9_269,l9_270);
float l9_274=step(abs(l9_268-l9_273),9.9999997e-06);
l9_272*=(l9_274+((1.0-float(l9_271))*(1.0-l9_274)));
l9_268=l9_273;
l9_236.y=l9_268;
l9_246=l9_272;
}
float2 l9_275=l9_236;
bool l9_276=l9_237;
float3x3 l9_277=l9_238;
if (l9_276)
{
l9_275=float2((l9_277*float3(l9_275,1.0)).xy);
}
float2 l9_278=l9_275;
l9_236=l9_278;
float l9_279=l9_236.x;
int l9_280=l9_239.x;
bool l9_281=l9_245;
float l9_282=l9_246;
if ((l9_280==0)||(l9_280==3))
{
float l9_283=l9_279;
float l9_284=0.0;
float l9_285=1.0;
bool l9_286=l9_281;
float l9_287=l9_282;
float l9_288=fast::clamp(l9_283,l9_284,l9_285);
float l9_289=step(abs(l9_283-l9_288),9.9999997e-06);
l9_287*=(l9_289+((1.0-float(l9_286))*(1.0-l9_289)));
l9_283=l9_288;
l9_279=l9_283;
l9_282=l9_287;
}
l9_236.x=l9_279;
l9_246=l9_282;
float l9_290=l9_236.y;
int l9_291=l9_239.y;
bool l9_292=l9_245;
float l9_293=l9_246;
if ((l9_291==0)||(l9_291==3))
{
float l9_294=l9_290;
float l9_295=0.0;
float l9_296=1.0;
bool l9_297=l9_292;
float l9_298=l9_293;
float l9_299=fast::clamp(l9_294,l9_295,l9_296);
float l9_300=step(abs(l9_294-l9_299),9.9999997e-06);
l9_298*=(l9_300+((1.0-float(l9_297))*(1.0-l9_300)));
l9_294=l9_299;
l9_290=l9_294;
l9_293=l9_298;
}
l9_236.y=l9_290;
l9_246=l9_293;
float2 l9_301=l9_236;
int l9_302=l9_234;
int l9_303=l9_235;
float l9_304=l9_244;
float2 l9_305=l9_301;
int l9_306=l9_302;
int l9_307=l9_303;
float3 l9_308=float3(0.0);
if (l9_306==0)
{
l9_308=float3(l9_305,0.0);
}
else
{
if (l9_306==1)
{
l9_308=float3(l9_305.x,(l9_305.y*0.5)+(0.5-(float(l9_307)*0.5)),0.0);
}
else
{
l9_308=float3(l9_305,float(l9_307));
}
}
float3 l9_309=l9_308;
float3 l9_310=l9_309;
float4 l9_311=intensityTexture.sample(intensityTextureSmpSC,l9_310.xy,bias(l9_304));
float4 l9_312=l9_311;
if (l9_242)
{
l9_312=mix(l9_243,l9_312,float4(l9_246));
}
float4 l9_313=l9_312;
float3 l9_314=l9_313.xyz;
float3 l9_315=l9_314;
float l9_316=16.0;
float l9_317=((((l9_315.x*256.0)+l9_315.y)+(l9_315.z/256.0))/257.00391)*l9_316;
float l9_318=l9_317;
if ((int(BLEND_MODE_FORGRAY_tmp)!=0))
{
l9_318=fast::max(l9_318,1.0);
}
if ((int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
l9_318=fast::min(l9_318,1.0);
}
float l9_319=l9_225;
float3 l9_320=param_8;
float3 l9_321=param_9;
float l9_322=l9_226;
float l9_323=l9_318;
float3 l9_324=transformColor(l9_319,l9_320,l9_321,l9_322,l9_323);
return l9_324;
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
float4 sc_OutputMotionVectorIfNeeded(thread const float4& finalColor,thread float4& varPosAndMotion,thread float4& varNormalAndMotion)
{
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float2 param=float2(varPosAndMotion.w,varNormalAndMotion.w);
float l9_0=(param.x*5.0)+0.5;
float l9_1=floor(l9_0*65535.0);
float l9_2=floor(l9_1*0.00390625);
float2 l9_3=float2(l9_2/255.0,(l9_1-(l9_2*256.0))/255.0);
float l9_4=(param.y*5.0)+0.5;
float l9_5=floor(l9_4*65535.0);
float l9_6=floor(l9_5*0.00390625);
float2 l9_7=float2(l9_6/255.0,(l9_5-(l9_6*256.0))/255.0);
float4 l9_8=float4(l9_3,l9_7);
return l9_8;
}
else
{
return finalColor;
}
}
fragment main_frag_out main_frag(main_frag_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]])
{
main_frag_out out={};
float N22_EnableBodyDepth=0.0;
float4 N22_OceanColor=float4(0.0);
float N22_BodyDepth=0.0;
float N22_cameraDepth=0.0;
float4 N22_Result=float4(0.0);
int N7_VertexColorSwitch=0;
float4 N7_BaseColorValue=float4(0.0);
bool N7_EnableBaseTexture=false;
int N7_BaseTextureUVSwitch=0;
bool N7_EnableRecolor=false;
float3 N7_RecolorR=float3(0.0);
float3 N7_RecolorG=float3(0.0);
float3 N7_RecolorB=float3(0.0);
bool N7_EnableOpacityTexture=false;
int N7_OpacityUVSwitch=0;
bool N7_EnableNormalTexture=false;
int N7_NormalUVSwitch=0;
bool N7_EnableDetailNormal=false;
int N7_Detail_NormalUVSwitch=0;
bool N7_EnableEmissiveTexture=false;
int N7_EmissiveUVSwitch=0;
float3 N7_EmissiveColor=float3(0.0);
float N7_EmissiveIntensity=0.0;
bool N7_EnableSimpleReflection=false;
float N7_ReflectionIntensity=0.0;
bool N7_EnableModulationTexture=false;
int N7_ModuationUVSwitch=0;
bool N7_EnableRimHighlight=false;
float3 N7_RimColor=float3(0.0);
float N7_RimIntensity=0.0;
float N7_RimExponent=0.0;
bool N7_EnableRimColorTexture=false;
bool N7_EnableRimInvert=false;
int N7_RimUVSwitch=0;
bool N7_EnableMaterialParamsTexture=false;
float N7_MetallicValue=0.0;
float N7_RoughnessValue=0.0;
int N7_MaterialParamsUVSwitch=0;
bool N7_EnableSpecularAO=false;
float N7_Intensity=0.0;
float N7_Darkening=0.0;
bool N7_EnableUV2=false;
int N7_UV2Switch=0;
float2 N7_UV2Scale=float2(0.0);
float2 N7_UV2Offset=float2(0.0);
bool N7_UV2Animation=false;
bool N7_EnableUV3=false;
int N7_UV3Switch=0;
float2 N7_UV3Scale=float2(0.0);
float2 N7_UV3Offset=float2(0.0);
bool N7_UV3Animation=false;
float4 N7_Albedo=float4(0.0);
float N7_Opacity=0.0;
float3 N7_Normal=float3(0.0);
float3 N7_Emissive=float3(0.0);
float N7_Metallic=0.0;
float N7_Roughness=0.0;
float3 N7_AO=float3(0.0);
float3 N7_SpecularAO=float3(0.0);
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
if ((sc_StereoRenderingMode_tmp==1)&&(sc_StereoRendering_IsClipDistanceEnabled_tmp==0))
{
if (in.varClipDistance<0.0)
{
discard_fragment();
}
}
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=in.PreviewVertexColor;
PreviewInfo.Saved=((in.PreviewVertexSaved*1.0)!=0.0) ? true : false;
float4 FinalColor=float4(0.0,0.99144,1.0,1.0);
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPosAndMotion.xyz);
Globals.PositionWS=in.varPosAndMotion.xyz;
Globals.VertexNormal_WorldSpace=normalize(in.varNormalAndMotion.xyz);
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
Globals.Surface_UVCoord0=in.varTex01.xy;
Globals.Surface_UVCoord1=in.varTex01.zw;
Globals.VertexColor=in.varColor;
float4 l9_0=gl_FragCoord;
float2 l9_1=l9_0.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2=l9_1;
float2 l9_3=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_4=1;
int l9_5=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5=0;
}
else
{
l9_5=in.varStereoViewID;
}
int l9_6=l9_5;
int l9_7=l9_6;
float3 l9_8=float3(l9_2,0.0);
int l9_9=l9_4;
int l9_10=l9_7;
if (l9_9==1)
{
l9_8.y=((2.0*l9_8.y)+float(l9_10))-1.0;
}
float2 l9_11=l9_8.xy;
l9_3=l9_11;
}
else
{
l9_3=l9_2;
}
float2 l9_12=l9_3;
float2 l9_13=l9_12;
Globals.gScreenCoord=l9_13;
Globals.SurfacePosition_WorldSpace=in.varPosAndMotion.xyz;
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
float Output_N24=0.0;
float param=(*sc_set0.UserUniforms).bodyIntersection;
Output_N24=param;
float4 Output_N5=float4(0.0);
float4 param_1=(*sc_set0.UserUniforms).baseColor;
Output_N5=param_1;
float3 Output_N85=float3(0.0);
float3 param_2=(*sc_set0.UserUniforms).recolorRed;
Output_N85=param_2;
float3 Output_N86=float3(0.0);
float3 param_3=(*sc_set0.UserUniforms).recolorGreen;
Output_N86=param_3;
float3 Output_N87=float3(0.0);
float3 param_4=(*sc_set0.UserUniforms).recolorBlue;
Output_N87=param_4;
float3 Output_N236=float3(0.0);
float3 param_5=(*sc_set0.UserUniforms).emissiveColor;
Output_N236=param_5;
float Output_N233=0.0;
float param_6=(*sc_set0.UserUniforms).emissiveIntensity;
Output_N233=param_6;
float Output_N225=0.0;
float param_7=(*sc_set0.UserUniforms).reflectionIntensity;
Output_N225=param_7;
float3 Output_N309=float3(0.0);
float3 param_8=(*sc_set0.UserUniforms).rimColor;
Output_N309=param_8;
float Output_N310=0.0;
float param_9=(*sc_set0.UserUniforms).rimIntensity;
Output_N310=param_9;
float Output_N311=0.0;
float param_10=(*sc_set0.UserUniforms).rimExponent;
Output_N311=param_10;
float Output_N242=0.0;
float param_11=(*sc_set0.UserUniforms).metallic;
Output_N242=param_11;
float Output_N243=0.0;
float param_12=(*sc_set0.UserUniforms).roughness;
Output_N243=param_12;
float Output_N244=0.0;
float param_13=(*sc_set0.UserUniforms).specularAoIntensity;
Output_N244=param_13;
float Output_N245=0.0;
float param_14=(*sc_set0.UserUniforms).specularAoDarkening;
Output_N245=param_14;
float2 Output_N14=float2(0.0);
float2 param_15=(*sc_set0.UserUniforms).uv2Scale;
Output_N14=param_15;
float2 Output_N15=float2(0.0);
float2 param_16=(*sc_set0.UserUniforms).uv2Offset;
Output_N15=param_16;
float2 Output_N50=float2(0.0);
float2 param_17=(*sc_set0.UserUniforms).uv3Scale;
Output_N50=param_17;
float2 Output_N51=float2(0.0);
float2 param_18=(*sc_set0.UserUniforms).uv3Offset;
Output_N51=param_18;
float4 Albedo_N7=float4(0.0);
float Opacity_N7=0.0;
float3 Normal_N7=float3(0.0);
float3 Emissive_N7=float3(0.0);
float Metallic_N7=0.0;
float Roughness_N7=0.0;
float3 AO_N7=float3(0.0);
float3 SpecularAO_N7=float3(0.0);
float4 param_19=Output_N5;
float3 param_20=Output_N85;
float3 param_21=Output_N86;
float3 param_22=Output_N87;
float3 param_23=Output_N236;
float param_24=Output_N233;
float param_25=Output_N225;
float3 param_26=Output_N309;
float param_27=Output_N310;
float param_28=Output_N311;
float param_29=Output_N242;
float param_30=Output_N243;
float param_31=Output_N244;
float param_32=Output_N245;
float2 param_33=Output_N14;
float2 param_34=Output_N15;
float2 param_35=Output_N50;
float2 param_36=Output_N51;
ssGlobals param_45=Globals;
ssGlobals tempGlobals=param_45;
float4 param_37=float4(0.0);
float param_38=0.0;
float3 param_39=float3(0.0);
float3 param_40=float3(0.0);
float param_41=0.0;
float param_42=0.0;
float3 param_43=float3(0.0);
float3 param_44=float3(0.0);
N7_VertexColorSwitch=NODE_38_DROPLIST_ITEM_tmp;
N7_BaseColorValue=param_19;
N7_EnableBaseTexture=(int(ENABLE_BASE_TEX_tmp)!=0);
N7_BaseTextureUVSwitch=NODE_27_DROPLIST_ITEM_tmp;
N7_EnableRecolor=(int(ENABLE_RECOLOR_tmp)!=0);
N7_RecolorR=param_20;
N7_RecolorG=param_21;
N7_RecolorB=param_22;
N7_EnableOpacityTexture=(int(ENABLE_OPACITY_TEX_tmp)!=0);
N7_OpacityUVSwitch=NODE_69_DROPLIST_ITEM_tmp;
N7_EnableNormalTexture=(int(ENABLE_NORMALMAP_tmp)!=0);
N7_NormalUVSwitch=NODE_181_DROPLIST_ITEM_tmp;
N7_EnableDetailNormal=(int(ENABLE_DETAIL_NORMAL_tmp)!=0);
N7_Detail_NormalUVSwitch=NODE_184_DROPLIST_ITEM_tmp;
N7_EnableEmissiveTexture=(int(ENABLE_EMISSIVE_tmp)!=0);
N7_EmissiveUVSwitch=NODE_76_DROPLIST_ITEM_tmp;
N7_EmissiveColor=param_23;
N7_EmissiveIntensity=param_24;
N7_EnableSimpleReflection=(int(ENABLE_SIMPLE_REFLECTION_tmp)!=0);
N7_ReflectionIntensity=param_25;
N7_EnableModulationTexture=(int(Tweak_N177_tmp)!=0);
N7_ModuationUVSwitch=NODE_228_DROPLIST_ITEM_tmp;
N7_EnableRimHighlight=(int(ENABLE_RIM_HIGHLIGHT_tmp)!=0);
N7_RimColor=param_26;
N7_RimIntensity=param_27;
N7_RimExponent=param_28;
N7_EnableRimColorTexture=(int(Tweak_N216_tmp)!=0);
N7_EnableRimInvert=(int(ENABLE_RIM_INVERT_tmp)!=0);
N7_RimUVSwitch=NODE_315_DROPLIST_ITEM_tmp;
N7_EnableMaterialParamsTexture=(int(ENABLE_MATERIAL_PARAM_TEX_tmp)!=0);
N7_MetallicValue=param_29;
N7_RoughnessValue=param_30;
N7_MaterialParamsUVSwitch=NODE_221_DROPLIST_ITEM_tmp;
N7_EnableSpecularAO=(int(ENABLE_SPECULAR_AO_tmp)!=0);
N7_Intensity=param_31;
N7_Darkening=param_32;
N7_EnableUV2=(int(ENABLE_UV2_tmp)!=0);
N7_UV2Switch=NODE_13_DROPLIST_ITEM_tmp;
N7_UV2Scale=param_33;
N7_UV2Offset=param_34;
N7_UV2Animation=(int(uv2EnableAnimation_tmp)!=0);
N7_EnableUV3=(int(ENABLE_UV3_tmp)!=0);
N7_UV3Switch=NODE_49_DROPLIST_ITEM_tmp;
N7_UV3Scale=param_35;
N7_UV3Offset=param_36;
N7_UV3Animation=(int(uv3EnableAnimation_tmp)!=0);
int l9_14=N7_UV2Switch;
float2 l9_15=N7_UV2Scale;
float2 l9_16=N7_UV2Offset;
bool l9_17=N7_UV2Animation;
bool l9_18=N7_EnableUV2;
float2 l9_19=tempGlobals.Surface_UVCoord0;
float2 l9_20=l9_19;
if (l9_18==N7_EnableUV2)
{
if (l9_14==0)
{
float2 l9_21=tempGlobals.Surface_UVCoord0;
l9_20=l9_21;
}
if (l9_14==1)
{
float2 l9_22=tempGlobals.Surface_UVCoord1;
l9_20=l9_22;
}
if (l9_14==2)
{
float2 l9_23=tempGlobals.gScreenCoord;
l9_20=l9_23;
}
}
else
{
if (l9_14==0)
{
float2 l9_24=tempGlobals.Surface_UVCoord0;
l9_20=l9_24;
}
if (l9_14==1)
{
float2 l9_25=tempGlobals.Surface_UVCoord1;
l9_20=l9_25;
}
if (l9_14==2)
{
float2 l9_26=tempGlobals.gScreenCoord;
l9_20=l9_26;
}
if (l9_14==3)
{
l9_20=tempGlobals.N7_TransformedUV2;
}
}
l9_20=(l9_20*l9_15)+l9_16;
if (l9_17)
{
float l9_27=tempGlobals.gTimeElapsed;
l9_20+=(l9_16*l9_27);
}
float2 l9_28=l9_20;
tempGlobals.N7_TransformedUV2=l9_28;
int l9_29=N7_UV3Switch;
float2 l9_30=N7_UV3Scale;
float2 l9_31=N7_UV3Offset;
bool l9_32=N7_UV3Animation;
bool l9_33=N7_EnableUV3;
float2 l9_34=tempGlobals.Surface_UVCoord0;
float2 l9_35=l9_34;
if (l9_33==N7_EnableUV2)
{
if (l9_29==0)
{
float2 l9_36=tempGlobals.Surface_UVCoord0;
l9_35=l9_36;
}
if (l9_29==1)
{
float2 l9_37=tempGlobals.Surface_UVCoord1;
l9_35=l9_37;
}
if (l9_29==2)
{
float2 l9_38=tempGlobals.gScreenCoord;
l9_35=l9_38;
}
}
else
{
if (l9_29==0)
{
float2 l9_39=tempGlobals.Surface_UVCoord0;
l9_35=l9_39;
}
if (l9_29==1)
{
float2 l9_40=tempGlobals.Surface_UVCoord1;
l9_35=l9_40;
}
if (l9_29==2)
{
float2 l9_41=tempGlobals.gScreenCoord;
l9_35=l9_41;
}
if (l9_29==3)
{
l9_35=tempGlobals.N7_TransformedUV2;
}
}
l9_35=(l9_35*l9_30)+l9_31;
if (l9_32)
{
float l9_42=tempGlobals.gTimeElapsed;
l9_35+=(l9_31*l9_42);
}
float2 l9_43=l9_35;
tempGlobals.N7_TransformedUV3=l9_43;
float2 l9_44=tempGlobals.Surface_UVCoord0;
float2 l9_45=l9_44;
float2 l9_46=tempGlobals.Surface_UVCoord0;
float2 l9_47=l9_46;
N7_Opacity=1.0;
N7_Albedo=N7_BaseColorValue;
if (N7_EnableBaseTexture)
{
int l9_48=N7_BaseTextureUVSwitch;
float2 l9_49=tempGlobals.Surface_UVCoord0;
float2 l9_50=l9_49;
if (l9_48==0)
{
float2 l9_51=tempGlobals.Surface_UVCoord0;
l9_50=l9_51;
}
if (l9_48==1)
{
float2 l9_52=tempGlobals.Surface_UVCoord1;
l9_50=l9_52;
}
if (l9_48==2)
{
l9_50=tempGlobals.N7_TransformedUV2;
}
if (l9_48==3)
{
l9_50=tempGlobals.N7_TransformedUV3;
}
float2 l9_53=l9_50;
l9_45=l9_53;
float2 l9_54=l9_45;
float4 l9_55=float4(0.0);
int l9_56;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_57=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_57=0;
}
else
{
l9_57=in.varStereoViewID;
}
int l9_58=l9_57;
l9_56=1-l9_58;
}
else
{
int l9_59=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_59=0;
}
else
{
l9_59=in.varStereoViewID;
}
int l9_60=l9_59;
l9_56=l9_60;
}
int l9_61=l9_56;
int l9_62=baseTexLayout_tmp;
int l9_63=l9_61;
float2 l9_64=l9_54;
bool l9_65=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_66=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_67=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_68=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_69=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_70=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_71=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_72=0.0;
bool l9_73=l9_70&&(!l9_68);
float l9_74=1.0;
float l9_75=l9_64.x;
int l9_76=l9_67.x;
if (l9_76==1)
{
l9_75=fract(l9_75);
}
else
{
if (l9_76==2)
{
float l9_77=fract(l9_75);
float l9_78=l9_75-l9_77;
float l9_79=step(0.25,fract(l9_78*0.5));
l9_75=mix(l9_77,1.0-l9_77,fast::clamp(l9_79,0.0,1.0));
}
}
l9_64.x=l9_75;
float l9_80=l9_64.y;
int l9_81=l9_67.y;
if (l9_81==1)
{
l9_80=fract(l9_80);
}
else
{
if (l9_81==2)
{
float l9_82=fract(l9_80);
float l9_83=l9_80-l9_82;
float l9_84=step(0.25,fract(l9_83*0.5));
l9_80=mix(l9_82,1.0-l9_82,fast::clamp(l9_84,0.0,1.0));
}
}
l9_64.y=l9_80;
if (l9_68)
{
bool l9_85=l9_70;
bool l9_86;
if (l9_85)
{
l9_86=l9_67.x==3;
}
else
{
l9_86=l9_85;
}
float l9_87=l9_64.x;
float l9_88=l9_69.x;
float l9_89=l9_69.z;
bool l9_90=l9_86;
float l9_91=l9_74;
float l9_92=fast::clamp(l9_87,l9_88,l9_89);
float l9_93=step(abs(l9_87-l9_92),9.9999997e-06);
l9_91*=(l9_93+((1.0-float(l9_90))*(1.0-l9_93)));
l9_87=l9_92;
l9_64.x=l9_87;
l9_74=l9_91;
bool l9_94=l9_70;
bool l9_95;
if (l9_94)
{
l9_95=l9_67.y==3;
}
else
{
l9_95=l9_94;
}
float l9_96=l9_64.y;
float l9_97=l9_69.y;
float l9_98=l9_69.w;
bool l9_99=l9_95;
float l9_100=l9_74;
float l9_101=fast::clamp(l9_96,l9_97,l9_98);
float l9_102=step(abs(l9_96-l9_101),9.9999997e-06);
l9_100*=(l9_102+((1.0-float(l9_99))*(1.0-l9_102)));
l9_96=l9_101;
l9_64.y=l9_96;
l9_74=l9_100;
}
float2 l9_103=l9_64;
bool l9_104=l9_65;
float3x3 l9_105=l9_66;
if (l9_104)
{
l9_103=float2((l9_105*float3(l9_103,1.0)).xy);
}
float2 l9_106=l9_103;
l9_64=l9_106;
float l9_107=l9_64.x;
int l9_108=l9_67.x;
bool l9_109=l9_73;
float l9_110=l9_74;
if ((l9_108==0)||(l9_108==3))
{
float l9_111=l9_107;
float l9_112=0.0;
float l9_113=1.0;
bool l9_114=l9_109;
float l9_115=l9_110;
float l9_116=fast::clamp(l9_111,l9_112,l9_113);
float l9_117=step(abs(l9_111-l9_116),9.9999997e-06);
l9_115*=(l9_117+((1.0-float(l9_114))*(1.0-l9_117)));
l9_111=l9_116;
l9_107=l9_111;
l9_110=l9_115;
}
l9_64.x=l9_107;
l9_74=l9_110;
float l9_118=l9_64.y;
int l9_119=l9_67.y;
bool l9_120=l9_73;
float l9_121=l9_74;
if ((l9_119==0)||(l9_119==3))
{
float l9_122=l9_118;
float l9_123=0.0;
float l9_124=1.0;
bool l9_125=l9_120;
float l9_126=l9_121;
float l9_127=fast::clamp(l9_122,l9_123,l9_124);
float l9_128=step(abs(l9_122-l9_127),9.9999997e-06);
l9_126*=(l9_128+((1.0-float(l9_125))*(1.0-l9_128)));
l9_122=l9_127;
l9_118=l9_122;
l9_121=l9_126;
}
l9_64.y=l9_118;
l9_74=l9_121;
float2 l9_129=l9_64;
int l9_130=l9_62;
int l9_131=l9_63;
float l9_132=l9_72;
float2 l9_133=l9_129;
int l9_134=l9_130;
int l9_135=l9_131;
float3 l9_136=float3(0.0);
if (l9_134==0)
{
l9_136=float3(l9_133,0.0);
}
else
{
if (l9_134==1)
{
l9_136=float3(l9_133.x,(l9_133.y*0.5)+(0.5-(float(l9_135)*0.5)),0.0);
}
else
{
l9_136=float3(l9_133,float(l9_135));
}
}
float3 l9_137=l9_136;
float3 l9_138=l9_137;
float4 l9_139=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_138.xy,bias(l9_132));
float4 l9_140=l9_139;
if (l9_70)
{
l9_140=mix(l9_71,l9_140,float4(l9_74));
}
float4 l9_141=l9_140;
l9_55=l9_141;
float4 l9_142=l9_55;
N7_Albedo*=l9_142;
}
if (N7_EnableRecolor)
{
float3 l9_143=((N7_RecolorR*N7_Albedo.x)+(N7_RecolorG*N7_Albedo.y))+(N7_RecolorB*N7_Albedo.z);
N7_Albedo=float4(l9_143.x,l9_143.y,l9_143.z,N7_Albedo.w);
}
if (N7_EnableOpacityTexture)
{
int l9_144=N7_OpacityUVSwitch;
float2 l9_145=tempGlobals.Surface_UVCoord0;
float2 l9_146=l9_145;
if (l9_144==0)
{
float2 l9_147=tempGlobals.Surface_UVCoord0;
l9_146=l9_147;
}
if (l9_144==1)
{
float2 l9_148=tempGlobals.Surface_UVCoord1;
l9_146=l9_148;
}
if (l9_144==2)
{
l9_146=tempGlobals.N7_TransformedUV2;
}
if (l9_144==3)
{
l9_146=tempGlobals.N7_TransformedUV3;
}
float2 l9_149=l9_146;
l9_47=l9_149;
float2 l9_150=l9_47;
float4 l9_151=float4(0.0);
int l9_152;
if ((int(opacityTexHasSwappedViews_tmp)!=0))
{
int l9_153=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_153=0;
}
else
{
l9_153=in.varStereoViewID;
}
int l9_154=l9_153;
l9_152=1-l9_154;
}
else
{
int l9_155=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_155=0;
}
else
{
l9_155=in.varStereoViewID;
}
int l9_156=l9_155;
l9_152=l9_156;
}
int l9_157=l9_152;
int l9_158=opacityTexLayout_tmp;
int l9_159=l9_157;
float2 l9_160=l9_150;
bool l9_161=(int(SC_USE_UV_TRANSFORM_opacityTex_tmp)!=0);
float3x3 l9_162=(*sc_set0.UserUniforms).opacityTexTransform;
int2 l9_163=int2(SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp,SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp);
bool l9_164=(int(SC_USE_UV_MIN_MAX_opacityTex_tmp)!=0);
float4 l9_165=(*sc_set0.UserUniforms).opacityTexUvMinMax;
bool l9_166=(int(SC_USE_CLAMP_TO_BORDER_opacityTex_tmp)!=0);
float4 l9_167=(*sc_set0.UserUniforms).opacityTexBorderColor;
float l9_168=0.0;
bool l9_169=l9_166&&(!l9_164);
float l9_170=1.0;
float l9_171=l9_160.x;
int l9_172=l9_163.x;
if (l9_172==1)
{
l9_171=fract(l9_171);
}
else
{
if (l9_172==2)
{
float l9_173=fract(l9_171);
float l9_174=l9_171-l9_173;
float l9_175=step(0.25,fract(l9_174*0.5));
l9_171=mix(l9_173,1.0-l9_173,fast::clamp(l9_175,0.0,1.0));
}
}
l9_160.x=l9_171;
float l9_176=l9_160.y;
int l9_177=l9_163.y;
if (l9_177==1)
{
l9_176=fract(l9_176);
}
else
{
if (l9_177==2)
{
float l9_178=fract(l9_176);
float l9_179=l9_176-l9_178;
float l9_180=step(0.25,fract(l9_179*0.5));
l9_176=mix(l9_178,1.0-l9_178,fast::clamp(l9_180,0.0,1.0));
}
}
l9_160.y=l9_176;
if (l9_164)
{
bool l9_181=l9_166;
bool l9_182;
if (l9_181)
{
l9_182=l9_163.x==3;
}
else
{
l9_182=l9_181;
}
float l9_183=l9_160.x;
float l9_184=l9_165.x;
float l9_185=l9_165.z;
bool l9_186=l9_182;
float l9_187=l9_170;
float l9_188=fast::clamp(l9_183,l9_184,l9_185);
float l9_189=step(abs(l9_183-l9_188),9.9999997e-06);
l9_187*=(l9_189+((1.0-float(l9_186))*(1.0-l9_189)));
l9_183=l9_188;
l9_160.x=l9_183;
l9_170=l9_187;
bool l9_190=l9_166;
bool l9_191;
if (l9_190)
{
l9_191=l9_163.y==3;
}
else
{
l9_191=l9_190;
}
float l9_192=l9_160.y;
float l9_193=l9_165.y;
float l9_194=l9_165.w;
bool l9_195=l9_191;
float l9_196=l9_170;
float l9_197=fast::clamp(l9_192,l9_193,l9_194);
float l9_198=step(abs(l9_192-l9_197),9.9999997e-06);
l9_196*=(l9_198+((1.0-float(l9_195))*(1.0-l9_198)));
l9_192=l9_197;
l9_160.y=l9_192;
l9_170=l9_196;
}
float2 l9_199=l9_160;
bool l9_200=l9_161;
float3x3 l9_201=l9_162;
if (l9_200)
{
l9_199=float2((l9_201*float3(l9_199,1.0)).xy);
}
float2 l9_202=l9_199;
l9_160=l9_202;
float l9_203=l9_160.x;
int l9_204=l9_163.x;
bool l9_205=l9_169;
float l9_206=l9_170;
if ((l9_204==0)||(l9_204==3))
{
float l9_207=l9_203;
float l9_208=0.0;
float l9_209=1.0;
bool l9_210=l9_205;
float l9_211=l9_206;
float l9_212=fast::clamp(l9_207,l9_208,l9_209);
float l9_213=step(abs(l9_207-l9_212),9.9999997e-06);
l9_211*=(l9_213+((1.0-float(l9_210))*(1.0-l9_213)));
l9_207=l9_212;
l9_203=l9_207;
l9_206=l9_211;
}
l9_160.x=l9_203;
l9_170=l9_206;
float l9_214=l9_160.y;
int l9_215=l9_163.y;
bool l9_216=l9_169;
float l9_217=l9_170;
if ((l9_215==0)||(l9_215==3))
{
float l9_218=l9_214;
float l9_219=0.0;
float l9_220=1.0;
bool l9_221=l9_216;
float l9_222=l9_217;
float l9_223=fast::clamp(l9_218,l9_219,l9_220);
float l9_224=step(abs(l9_218-l9_223),9.9999997e-06);
l9_222*=(l9_224+((1.0-float(l9_221))*(1.0-l9_224)));
l9_218=l9_223;
l9_214=l9_218;
l9_217=l9_222;
}
l9_160.y=l9_214;
l9_170=l9_217;
float2 l9_225=l9_160;
int l9_226=l9_158;
int l9_227=l9_159;
float l9_228=l9_168;
float2 l9_229=l9_225;
int l9_230=l9_226;
int l9_231=l9_227;
float3 l9_232=float3(0.0);
if (l9_230==0)
{
l9_232=float3(l9_229,0.0);
}
else
{
if (l9_230==1)
{
l9_232=float3(l9_229.x,(l9_229.y*0.5)+(0.5-(float(l9_231)*0.5)),0.0);
}
else
{
l9_232=float3(l9_229,float(l9_231));
}
}
float3 l9_233=l9_232;
float3 l9_234=l9_233;
float4 l9_235=sc_set0.opacityTex.sample(sc_set0.opacityTexSmpSC,l9_234.xy,bias(l9_228));
float4 l9_236=l9_235;
if (l9_166)
{
l9_236=mix(l9_167,l9_236,float4(l9_170));
}
float4 l9_237=l9_236;
l9_151=l9_237;
float4 l9_238=l9_151;
N7_Opacity=l9_238.x;
}
N7_Opacity*=N7_Albedo.w;
if (N7_VertexColorSwitch==1)
{
float4 l9_239=tempGlobals.VertexColor;
N7_Albedo*=l9_239;
float4 l9_240=tempGlobals.VertexColor;
N7_Opacity*=l9_240.w;
}
if (N7_EnableNormalTexture)
{
float3 l9_241=float3(0.0,0.0,1.0);
int l9_242=N7_NormalUVSwitch;
float2 l9_243=tempGlobals.Surface_UVCoord0;
float2 l9_244=l9_243;
if (l9_242==0)
{
float2 l9_245=tempGlobals.Surface_UVCoord0;
l9_244=l9_245;
}
if (l9_242==1)
{
float2 l9_246=tempGlobals.Surface_UVCoord1;
l9_244=l9_246;
}
if (l9_242==2)
{
l9_244=tempGlobals.N7_TransformedUV2;
}
if (l9_242==3)
{
l9_244=tempGlobals.N7_TransformedUV3;
}
float2 l9_247=l9_244;
float2 l9_248=l9_247;
float2 l9_249=l9_248;
float4 l9_250=float4(0.0);
int l9_251;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_252=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_252=0;
}
else
{
l9_252=in.varStereoViewID;
}
int l9_253=l9_252;
l9_251=1-l9_253;
}
else
{
int l9_254=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_254=0;
}
else
{
l9_254=in.varStereoViewID;
}
int l9_255=l9_254;
l9_251=l9_255;
}
int l9_256=l9_251;
int l9_257=normalTexLayout_tmp;
int l9_258=l9_256;
float2 l9_259=l9_249;
bool l9_260=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_261=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_262=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_263=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_264=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_265=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_266=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_267=0.0;
bool l9_268=l9_265&&(!l9_263);
float l9_269=1.0;
float l9_270=l9_259.x;
int l9_271=l9_262.x;
if (l9_271==1)
{
l9_270=fract(l9_270);
}
else
{
if (l9_271==2)
{
float l9_272=fract(l9_270);
float l9_273=l9_270-l9_272;
float l9_274=step(0.25,fract(l9_273*0.5));
l9_270=mix(l9_272,1.0-l9_272,fast::clamp(l9_274,0.0,1.0));
}
}
l9_259.x=l9_270;
float l9_275=l9_259.y;
int l9_276=l9_262.y;
if (l9_276==1)
{
l9_275=fract(l9_275);
}
else
{
if (l9_276==2)
{
float l9_277=fract(l9_275);
float l9_278=l9_275-l9_277;
float l9_279=step(0.25,fract(l9_278*0.5));
l9_275=mix(l9_277,1.0-l9_277,fast::clamp(l9_279,0.0,1.0));
}
}
l9_259.y=l9_275;
if (l9_263)
{
bool l9_280=l9_265;
bool l9_281;
if (l9_280)
{
l9_281=l9_262.x==3;
}
else
{
l9_281=l9_280;
}
float l9_282=l9_259.x;
float l9_283=l9_264.x;
float l9_284=l9_264.z;
bool l9_285=l9_281;
float l9_286=l9_269;
float l9_287=fast::clamp(l9_282,l9_283,l9_284);
float l9_288=step(abs(l9_282-l9_287),9.9999997e-06);
l9_286*=(l9_288+((1.0-float(l9_285))*(1.0-l9_288)));
l9_282=l9_287;
l9_259.x=l9_282;
l9_269=l9_286;
bool l9_289=l9_265;
bool l9_290;
if (l9_289)
{
l9_290=l9_262.y==3;
}
else
{
l9_290=l9_289;
}
float l9_291=l9_259.y;
float l9_292=l9_264.y;
float l9_293=l9_264.w;
bool l9_294=l9_290;
float l9_295=l9_269;
float l9_296=fast::clamp(l9_291,l9_292,l9_293);
float l9_297=step(abs(l9_291-l9_296),9.9999997e-06);
l9_295*=(l9_297+((1.0-float(l9_294))*(1.0-l9_297)));
l9_291=l9_296;
l9_259.y=l9_291;
l9_269=l9_295;
}
float2 l9_298=l9_259;
bool l9_299=l9_260;
float3x3 l9_300=l9_261;
if (l9_299)
{
l9_298=float2((l9_300*float3(l9_298,1.0)).xy);
}
float2 l9_301=l9_298;
l9_259=l9_301;
float l9_302=l9_259.x;
int l9_303=l9_262.x;
bool l9_304=l9_268;
float l9_305=l9_269;
if ((l9_303==0)||(l9_303==3))
{
float l9_306=l9_302;
float l9_307=0.0;
float l9_308=1.0;
bool l9_309=l9_304;
float l9_310=l9_305;
float l9_311=fast::clamp(l9_306,l9_307,l9_308);
float l9_312=step(abs(l9_306-l9_311),9.9999997e-06);
l9_310*=(l9_312+((1.0-float(l9_309))*(1.0-l9_312)));
l9_306=l9_311;
l9_302=l9_306;
l9_305=l9_310;
}
l9_259.x=l9_302;
l9_269=l9_305;
float l9_313=l9_259.y;
int l9_314=l9_262.y;
bool l9_315=l9_268;
float l9_316=l9_269;
if ((l9_314==0)||(l9_314==3))
{
float l9_317=l9_313;
float l9_318=0.0;
float l9_319=1.0;
bool l9_320=l9_315;
float l9_321=l9_316;
float l9_322=fast::clamp(l9_317,l9_318,l9_319);
float l9_323=step(abs(l9_317-l9_322),9.9999997e-06);
l9_321*=(l9_323+((1.0-float(l9_320))*(1.0-l9_323)));
l9_317=l9_322;
l9_313=l9_317;
l9_316=l9_321;
}
l9_259.y=l9_313;
l9_269=l9_316;
float2 l9_324=l9_259;
int l9_325=l9_257;
int l9_326=l9_258;
float l9_327=l9_267;
float2 l9_328=l9_324;
int l9_329=l9_325;
int l9_330=l9_326;
float3 l9_331=float3(0.0);
if (l9_329==0)
{
l9_331=float3(l9_328,0.0);
}
else
{
if (l9_329==1)
{
l9_331=float3(l9_328.x,(l9_328.y*0.5)+(0.5-(float(l9_330)*0.5)),0.0);
}
else
{
l9_331=float3(l9_328,float(l9_330));
}
}
float3 l9_332=l9_331;
float3 l9_333=l9_332;
float4 l9_334=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_333.xy,bias(l9_327));
float4 l9_335=l9_334;
if (l9_265)
{
l9_335=mix(l9_266,l9_335,float4(l9_269));
}
float4 l9_336=l9_335;
l9_250=l9_336;
float4 l9_337=l9_250;
N7_Normal=(l9_337.xyz*1.9921875)-float3(1.0);
if (N7_EnableDetailNormal)
{
int l9_338=N7_Detail_NormalUVSwitch;
float2 l9_339=tempGlobals.Surface_UVCoord0;
float2 l9_340=l9_339;
if (l9_338==0)
{
float2 l9_341=tempGlobals.Surface_UVCoord0;
l9_340=l9_341;
}
if (l9_338==1)
{
float2 l9_342=tempGlobals.Surface_UVCoord1;
l9_340=l9_342;
}
if (l9_338==2)
{
l9_340=tempGlobals.N7_TransformedUV2;
}
if (l9_338==3)
{
l9_340=tempGlobals.N7_TransformedUV3;
}
float2 l9_343=l9_340;
float2 l9_344=l9_343;
float2 l9_345=l9_344;
float4 l9_346=float4(0.0);
int l9_347;
if ((int(detailNormalTexHasSwappedViews_tmp)!=0))
{
int l9_348=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_348=0;
}
else
{
l9_348=in.varStereoViewID;
}
int l9_349=l9_348;
l9_347=1-l9_349;
}
else
{
int l9_350=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_350=0;
}
else
{
l9_350=in.varStereoViewID;
}
int l9_351=l9_350;
l9_347=l9_351;
}
int l9_352=l9_347;
int l9_353=detailNormalTexLayout_tmp;
int l9_354=l9_352;
float2 l9_355=l9_345;
bool l9_356=(int(SC_USE_UV_TRANSFORM_detailNormalTex_tmp)!=0);
float3x3 l9_357=(*sc_set0.UserUniforms).detailNormalTexTransform;
int2 l9_358=int2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp);
bool l9_359=(int(SC_USE_UV_MIN_MAX_detailNormalTex_tmp)!=0);
float4 l9_360=(*sc_set0.UserUniforms).detailNormalTexUvMinMax;
bool l9_361=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp)!=0);
float4 l9_362=(*sc_set0.UserUniforms).detailNormalTexBorderColor;
float l9_363=0.0;
bool l9_364=l9_361&&(!l9_359);
float l9_365=1.0;
float l9_366=l9_355.x;
int l9_367=l9_358.x;
if (l9_367==1)
{
l9_366=fract(l9_366);
}
else
{
if (l9_367==2)
{
float l9_368=fract(l9_366);
float l9_369=l9_366-l9_368;
float l9_370=step(0.25,fract(l9_369*0.5));
l9_366=mix(l9_368,1.0-l9_368,fast::clamp(l9_370,0.0,1.0));
}
}
l9_355.x=l9_366;
float l9_371=l9_355.y;
int l9_372=l9_358.y;
if (l9_372==1)
{
l9_371=fract(l9_371);
}
else
{
if (l9_372==2)
{
float l9_373=fract(l9_371);
float l9_374=l9_371-l9_373;
float l9_375=step(0.25,fract(l9_374*0.5));
l9_371=mix(l9_373,1.0-l9_373,fast::clamp(l9_375,0.0,1.0));
}
}
l9_355.y=l9_371;
if (l9_359)
{
bool l9_376=l9_361;
bool l9_377;
if (l9_376)
{
l9_377=l9_358.x==3;
}
else
{
l9_377=l9_376;
}
float l9_378=l9_355.x;
float l9_379=l9_360.x;
float l9_380=l9_360.z;
bool l9_381=l9_377;
float l9_382=l9_365;
float l9_383=fast::clamp(l9_378,l9_379,l9_380);
float l9_384=step(abs(l9_378-l9_383),9.9999997e-06);
l9_382*=(l9_384+((1.0-float(l9_381))*(1.0-l9_384)));
l9_378=l9_383;
l9_355.x=l9_378;
l9_365=l9_382;
bool l9_385=l9_361;
bool l9_386;
if (l9_385)
{
l9_386=l9_358.y==3;
}
else
{
l9_386=l9_385;
}
float l9_387=l9_355.y;
float l9_388=l9_360.y;
float l9_389=l9_360.w;
bool l9_390=l9_386;
float l9_391=l9_365;
float l9_392=fast::clamp(l9_387,l9_388,l9_389);
float l9_393=step(abs(l9_387-l9_392),9.9999997e-06);
l9_391*=(l9_393+((1.0-float(l9_390))*(1.0-l9_393)));
l9_387=l9_392;
l9_355.y=l9_387;
l9_365=l9_391;
}
float2 l9_394=l9_355;
bool l9_395=l9_356;
float3x3 l9_396=l9_357;
if (l9_395)
{
l9_394=float2((l9_396*float3(l9_394,1.0)).xy);
}
float2 l9_397=l9_394;
l9_355=l9_397;
float l9_398=l9_355.x;
int l9_399=l9_358.x;
bool l9_400=l9_364;
float l9_401=l9_365;
if ((l9_399==0)||(l9_399==3))
{
float l9_402=l9_398;
float l9_403=0.0;
float l9_404=1.0;
bool l9_405=l9_400;
float l9_406=l9_401;
float l9_407=fast::clamp(l9_402,l9_403,l9_404);
float l9_408=step(abs(l9_402-l9_407),9.9999997e-06);
l9_406*=(l9_408+((1.0-float(l9_405))*(1.0-l9_408)));
l9_402=l9_407;
l9_398=l9_402;
l9_401=l9_406;
}
l9_355.x=l9_398;
l9_365=l9_401;
float l9_409=l9_355.y;
int l9_410=l9_358.y;
bool l9_411=l9_364;
float l9_412=l9_365;
if ((l9_410==0)||(l9_410==3))
{
float l9_413=l9_409;
float l9_414=0.0;
float l9_415=1.0;
bool l9_416=l9_411;
float l9_417=l9_412;
float l9_418=fast::clamp(l9_413,l9_414,l9_415);
float l9_419=step(abs(l9_413-l9_418),9.9999997e-06);
l9_417*=(l9_419+((1.0-float(l9_416))*(1.0-l9_419)));
l9_413=l9_418;
l9_409=l9_413;
l9_412=l9_417;
}
l9_355.y=l9_409;
l9_365=l9_412;
float2 l9_420=l9_355;
int l9_421=l9_353;
int l9_422=l9_354;
float l9_423=l9_363;
float2 l9_424=l9_420;
int l9_425=l9_421;
int l9_426=l9_422;
float3 l9_427=float3(0.0);
if (l9_425==0)
{
l9_427=float3(l9_424,0.0);
}
else
{
if (l9_425==1)
{
l9_427=float3(l9_424.x,(l9_424.y*0.5)+(0.5-(float(l9_426)*0.5)),0.0);
}
else
{
l9_427=float3(l9_424,float(l9_426));
}
}
float3 l9_428=l9_427;
float3 l9_429=l9_428;
float4 l9_430=sc_set0.detailNormalTex.sample(sc_set0.detailNormalTexSmpSC,l9_429.xy,bias(l9_423));
float4 l9_431=l9_430;
if (l9_361)
{
l9_431=mix(l9_362,l9_431,float4(l9_365));
}
float4 l9_432=l9_431;
l9_346=l9_432;
float4 l9_433=l9_346;
l9_241=(l9_433.xyz*1.9921875)-float3(1.0);
}
float3 l9_434=N7_Normal;
float3 l9_435=l9_241;
float3 l9_436=l9_434+float3(0.0,0.0,1.0);
float3 l9_437=l9_435*float3(-1.0,-1.0,1.0);
float3 l9_438=normalize((l9_436*dot(l9_436,l9_437))-(l9_437*l9_436.z));
N7_Normal=l9_438;
float3 l9_439=tempGlobals.VertexNormal_WorldSpace;
float3 l9_440=l9_439;
float3 l9_441=tempGlobals.VertexTangent_WorldSpace;
float3 l9_442=l9_441;
float3 l9_443=tempGlobals.VertexBinormal_WorldSpace;
float3 l9_444=l9_443;
float3x3 l9_445=float3x3(float3(l9_442),float3(l9_444),float3(l9_440));
N7_Normal=normalize(l9_445*N7_Normal);
}
else
{
float3 l9_446=tempGlobals.VertexNormal_WorldSpace;
N7_Normal=normalize(l9_446);
}
float2 l9_447=tempGlobals.Surface_UVCoord0;
float2 l9_448=l9_447;
float3 l9_449=float3(0.0);
float3 l9_450=float3(0.0);
N7_Emissive=float3(0.0);
if (N7_EnableEmissiveTexture)
{
int l9_451=N7_EmissiveUVSwitch;
float2 l9_452=tempGlobals.Surface_UVCoord0;
float2 l9_453=l9_452;
if (l9_451==0)
{
float2 l9_454=tempGlobals.Surface_UVCoord0;
l9_453=l9_454;
}
if (l9_451==1)
{
float2 l9_455=tempGlobals.Surface_UVCoord1;
l9_453=l9_455;
}
if (l9_451==2)
{
l9_453=tempGlobals.N7_TransformedUV2;
}
if (l9_451==3)
{
l9_453=tempGlobals.N7_TransformedUV3;
}
float2 l9_456=l9_453;
l9_448=l9_456;
float2 l9_457=l9_448;
float4 l9_458=float4(0.0);
int l9_459;
if ((int(emissiveTexHasSwappedViews_tmp)!=0))
{
int l9_460=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_460=0;
}
else
{
l9_460=in.varStereoViewID;
}
int l9_461=l9_460;
l9_459=1-l9_461;
}
else
{
int l9_462=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_462=0;
}
else
{
l9_462=in.varStereoViewID;
}
int l9_463=l9_462;
l9_459=l9_463;
}
int l9_464=l9_459;
int l9_465=emissiveTexLayout_tmp;
int l9_466=l9_464;
float2 l9_467=l9_457;
bool l9_468=(int(SC_USE_UV_TRANSFORM_emissiveTex_tmp)!=0);
float3x3 l9_469=(*sc_set0.UserUniforms).emissiveTexTransform;
int2 l9_470=int2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex_tmp,SC_SOFTWARE_WRAP_MODE_V_emissiveTex_tmp);
bool l9_471=(int(SC_USE_UV_MIN_MAX_emissiveTex_tmp)!=0);
float4 l9_472=(*sc_set0.UserUniforms).emissiveTexUvMinMax;
bool l9_473=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex_tmp)!=0);
float4 l9_474=(*sc_set0.UserUniforms).emissiveTexBorderColor;
float l9_475=0.0;
bool l9_476=l9_473&&(!l9_471);
float l9_477=1.0;
float l9_478=l9_467.x;
int l9_479=l9_470.x;
if (l9_479==1)
{
l9_478=fract(l9_478);
}
else
{
if (l9_479==2)
{
float l9_480=fract(l9_478);
float l9_481=l9_478-l9_480;
float l9_482=step(0.25,fract(l9_481*0.5));
l9_478=mix(l9_480,1.0-l9_480,fast::clamp(l9_482,0.0,1.0));
}
}
l9_467.x=l9_478;
float l9_483=l9_467.y;
int l9_484=l9_470.y;
if (l9_484==1)
{
l9_483=fract(l9_483);
}
else
{
if (l9_484==2)
{
float l9_485=fract(l9_483);
float l9_486=l9_483-l9_485;
float l9_487=step(0.25,fract(l9_486*0.5));
l9_483=mix(l9_485,1.0-l9_485,fast::clamp(l9_487,0.0,1.0));
}
}
l9_467.y=l9_483;
if (l9_471)
{
bool l9_488=l9_473;
bool l9_489;
if (l9_488)
{
l9_489=l9_470.x==3;
}
else
{
l9_489=l9_488;
}
float l9_490=l9_467.x;
float l9_491=l9_472.x;
float l9_492=l9_472.z;
bool l9_493=l9_489;
float l9_494=l9_477;
float l9_495=fast::clamp(l9_490,l9_491,l9_492);
float l9_496=step(abs(l9_490-l9_495),9.9999997e-06);
l9_494*=(l9_496+((1.0-float(l9_493))*(1.0-l9_496)));
l9_490=l9_495;
l9_467.x=l9_490;
l9_477=l9_494;
bool l9_497=l9_473;
bool l9_498;
if (l9_497)
{
l9_498=l9_470.y==3;
}
else
{
l9_498=l9_497;
}
float l9_499=l9_467.y;
float l9_500=l9_472.y;
float l9_501=l9_472.w;
bool l9_502=l9_498;
float l9_503=l9_477;
float l9_504=fast::clamp(l9_499,l9_500,l9_501);
float l9_505=step(abs(l9_499-l9_504),9.9999997e-06);
l9_503*=(l9_505+((1.0-float(l9_502))*(1.0-l9_505)));
l9_499=l9_504;
l9_467.y=l9_499;
l9_477=l9_503;
}
float2 l9_506=l9_467;
bool l9_507=l9_468;
float3x3 l9_508=l9_469;
if (l9_507)
{
l9_506=float2((l9_508*float3(l9_506,1.0)).xy);
}
float2 l9_509=l9_506;
l9_467=l9_509;
float l9_510=l9_467.x;
int l9_511=l9_470.x;
bool l9_512=l9_476;
float l9_513=l9_477;
if ((l9_511==0)||(l9_511==3))
{
float l9_514=l9_510;
float l9_515=0.0;
float l9_516=1.0;
bool l9_517=l9_512;
float l9_518=l9_513;
float l9_519=fast::clamp(l9_514,l9_515,l9_516);
float l9_520=step(abs(l9_514-l9_519),9.9999997e-06);
l9_518*=(l9_520+((1.0-float(l9_517))*(1.0-l9_520)));
l9_514=l9_519;
l9_510=l9_514;
l9_513=l9_518;
}
l9_467.x=l9_510;
l9_477=l9_513;
float l9_521=l9_467.y;
int l9_522=l9_470.y;
bool l9_523=l9_476;
float l9_524=l9_477;
if ((l9_522==0)||(l9_522==3))
{
float l9_525=l9_521;
float l9_526=0.0;
float l9_527=1.0;
bool l9_528=l9_523;
float l9_529=l9_524;
float l9_530=fast::clamp(l9_525,l9_526,l9_527);
float l9_531=step(abs(l9_525-l9_530),9.9999997e-06);
l9_529*=(l9_531+((1.0-float(l9_528))*(1.0-l9_531)));
l9_525=l9_530;
l9_521=l9_525;
l9_524=l9_529;
}
l9_467.y=l9_521;
l9_477=l9_524;
float2 l9_532=l9_467;
int l9_533=l9_465;
int l9_534=l9_466;
float l9_535=l9_475;
float2 l9_536=l9_532;
int l9_537=l9_533;
int l9_538=l9_534;
float3 l9_539=float3(0.0);
if (l9_537==0)
{
l9_539=float3(l9_536,0.0);
}
else
{
if (l9_537==1)
{
l9_539=float3(l9_536.x,(l9_536.y*0.5)+(0.5-(float(l9_538)*0.5)),0.0);
}
else
{
l9_539=float3(l9_536,float(l9_538));
}
}
float3 l9_540=l9_539;
float3 l9_541=l9_540;
float4 l9_542=sc_set0.emissiveTex.sample(sc_set0.emissiveTexSmpSC,l9_541.xy,bias(l9_535));
float4 l9_543=l9_542;
if (l9_473)
{
l9_543=mix(l9_474,l9_543,float4(l9_477));
}
float4 l9_544=l9_543;
l9_458=l9_544;
float4 l9_545=l9_458;
N7_Emissive=l9_545.xyz;
}
if (N7_VertexColorSwitch==2)
{
float4 l9_546=tempGlobals.VertexColor;
N7_Emissive+=l9_546.xyz;
}
if ((N7_VertexColorSwitch==2)||N7_EnableEmissiveTexture)
{
float3 l9_547=(N7_Emissive*N7_EmissiveColor)*float3(N7_EmissiveIntensity);
float3 l9_548=float3(2.2);
float l9_549;
if (l9_547.x<=0.0)
{
l9_549=0.0;
}
else
{
l9_549=pow(l9_547.x,l9_548.x);
}
float l9_550=l9_549;
float l9_551;
if (l9_547.y<=0.0)
{
l9_551=0.0;
}
else
{
l9_551=pow(l9_547.y,l9_548.y);
}
float l9_552=l9_551;
float l9_553;
if (l9_547.z<=0.0)
{
l9_553=0.0;
}
else
{
l9_553=pow(l9_547.z,l9_548.z);
}
float3 l9_554=float3(l9_550,l9_552,l9_553);
N7_Emissive=l9_554;
}
if (N7_EnableSimpleReflection)
{
float3 l9_555=tempGlobals.ViewDirWS;
float3 l9_556=l9_555;
float3 l9_557=reflect(l9_556,N7_Normal);
l9_557.z=-l9_557.z;
float3 l9_558=l9_557;
float l9_559=((l9_558.x*l9_558.x)+(l9_558.y*l9_558.y))+((l9_558.z+1.0)*(l9_558.z+1.0));
float l9_560;
if (l9_559<=0.0)
{
l9_560=0.0;
}
else
{
l9_560=sqrt(l9_559);
}
float l9_561=l9_560;
float l9_562=2.0*l9_561;
float2 l9_563=(l9_558.xy/float2(l9_562))+float2(0.5);
float2 l9_564=l9_563;
float2 l9_565=float2(1.0)-l9_564;
float2 l9_566=l9_565;
float4 l9_567=float4(0.0);
int l9_568;
if ((int(reflectionTexHasSwappedViews_tmp)!=0))
{
int l9_569=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_569=0;
}
else
{
l9_569=in.varStereoViewID;
}
int l9_570=l9_569;
l9_568=1-l9_570;
}
else
{
int l9_571=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_571=0;
}
else
{
l9_571=in.varStereoViewID;
}
int l9_572=l9_571;
l9_568=l9_572;
}
int l9_573=l9_568;
int l9_574=reflectionTexLayout_tmp;
int l9_575=l9_573;
float2 l9_576=l9_566;
bool l9_577=(int(SC_USE_UV_TRANSFORM_reflectionTex_tmp)!=0);
float3x3 l9_578=(*sc_set0.UserUniforms).reflectionTexTransform;
int2 l9_579=int2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex_tmp,SC_SOFTWARE_WRAP_MODE_V_reflectionTex_tmp);
bool l9_580=(int(SC_USE_UV_MIN_MAX_reflectionTex_tmp)!=0);
float4 l9_581=(*sc_set0.UserUniforms).reflectionTexUvMinMax;
bool l9_582=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex_tmp)!=0);
float4 l9_583=(*sc_set0.UserUniforms).reflectionTexBorderColor;
float l9_584=0.0;
bool l9_585=l9_582&&(!l9_580);
float l9_586=1.0;
float l9_587=l9_576.x;
int l9_588=l9_579.x;
if (l9_588==1)
{
l9_587=fract(l9_587);
}
else
{
if (l9_588==2)
{
float l9_589=fract(l9_587);
float l9_590=l9_587-l9_589;
float l9_591=step(0.25,fract(l9_590*0.5));
l9_587=mix(l9_589,1.0-l9_589,fast::clamp(l9_591,0.0,1.0));
}
}
l9_576.x=l9_587;
float l9_592=l9_576.y;
int l9_593=l9_579.y;
if (l9_593==1)
{
l9_592=fract(l9_592);
}
else
{
if (l9_593==2)
{
float l9_594=fract(l9_592);
float l9_595=l9_592-l9_594;
float l9_596=step(0.25,fract(l9_595*0.5));
l9_592=mix(l9_594,1.0-l9_594,fast::clamp(l9_596,0.0,1.0));
}
}
l9_576.y=l9_592;
if (l9_580)
{
bool l9_597=l9_582;
bool l9_598;
if (l9_597)
{
l9_598=l9_579.x==3;
}
else
{
l9_598=l9_597;
}
float l9_599=l9_576.x;
float l9_600=l9_581.x;
float l9_601=l9_581.z;
bool l9_602=l9_598;
float l9_603=l9_586;
float l9_604=fast::clamp(l9_599,l9_600,l9_601);
float l9_605=step(abs(l9_599-l9_604),9.9999997e-06);
l9_603*=(l9_605+((1.0-float(l9_602))*(1.0-l9_605)));
l9_599=l9_604;
l9_576.x=l9_599;
l9_586=l9_603;
bool l9_606=l9_582;
bool l9_607;
if (l9_606)
{
l9_607=l9_579.y==3;
}
else
{
l9_607=l9_606;
}
float l9_608=l9_576.y;
float l9_609=l9_581.y;
float l9_610=l9_581.w;
bool l9_611=l9_607;
float l9_612=l9_586;
float l9_613=fast::clamp(l9_608,l9_609,l9_610);
float l9_614=step(abs(l9_608-l9_613),9.9999997e-06);
l9_612*=(l9_614+((1.0-float(l9_611))*(1.0-l9_614)));
l9_608=l9_613;
l9_576.y=l9_608;
l9_586=l9_612;
}
float2 l9_615=l9_576;
bool l9_616=l9_577;
float3x3 l9_617=l9_578;
if (l9_616)
{
l9_615=float2((l9_617*float3(l9_615,1.0)).xy);
}
float2 l9_618=l9_615;
l9_576=l9_618;
float l9_619=l9_576.x;
int l9_620=l9_579.x;
bool l9_621=l9_585;
float l9_622=l9_586;
if ((l9_620==0)||(l9_620==3))
{
float l9_623=l9_619;
float l9_624=0.0;
float l9_625=1.0;
bool l9_626=l9_621;
float l9_627=l9_622;
float l9_628=fast::clamp(l9_623,l9_624,l9_625);
float l9_629=step(abs(l9_623-l9_628),9.9999997e-06);
l9_627*=(l9_629+((1.0-float(l9_626))*(1.0-l9_629)));
l9_623=l9_628;
l9_619=l9_623;
l9_622=l9_627;
}
l9_576.x=l9_619;
l9_586=l9_622;
float l9_630=l9_576.y;
int l9_631=l9_579.y;
bool l9_632=l9_585;
float l9_633=l9_586;
if ((l9_631==0)||(l9_631==3))
{
float l9_634=l9_630;
float l9_635=0.0;
float l9_636=1.0;
bool l9_637=l9_632;
float l9_638=l9_633;
float l9_639=fast::clamp(l9_634,l9_635,l9_636);
float l9_640=step(abs(l9_634-l9_639),9.9999997e-06);
l9_638*=(l9_640+((1.0-float(l9_637))*(1.0-l9_640)));
l9_634=l9_639;
l9_630=l9_634;
l9_633=l9_638;
}
l9_576.y=l9_630;
l9_586=l9_633;
float2 l9_641=l9_576;
int l9_642=l9_574;
int l9_643=l9_575;
float l9_644=l9_584;
float2 l9_645=l9_641;
int l9_646=l9_642;
int l9_647=l9_643;
float3 l9_648=float3(0.0);
if (l9_646==0)
{
l9_648=float3(l9_645,0.0);
}
else
{
if (l9_646==1)
{
l9_648=float3(l9_645.x,(l9_645.y*0.5)+(0.5-(float(l9_647)*0.5)),0.0);
}
else
{
l9_648=float3(l9_645,float(l9_647));
}
}
float3 l9_649=l9_648;
float3 l9_650=l9_649;
float4 l9_651=sc_set0.reflectionTex.sample(sc_set0.reflectionTexSmpSC,l9_650.xy,bias(l9_644));
float4 l9_652=l9_651;
if (l9_582)
{
l9_652=mix(l9_583,l9_652,float4(l9_586));
}
float4 l9_653=l9_652;
l9_567=l9_653;
float4 l9_654=l9_567;
l9_449=l9_654.xyz;
if (N7_EnableModulationTexture)
{
int l9_655=N7_ModuationUVSwitch;
float2 l9_656=tempGlobals.Surface_UVCoord0;
float2 l9_657=l9_656;
if (l9_655==0)
{
float2 l9_658=tempGlobals.Surface_UVCoord0;
l9_657=l9_658;
}
if (l9_655==1)
{
float2 l9_659=tempGlobals.Surface_UVCoord1;
l9_657=l9_659;
}
if (l9_655==2)
{
l9_657=tempGlobals.N7_TransformedUV2;
}
if (l9_655==3)
{
l9_657=tempGlobals.N7_TransformedUV3;
}
float2 l9_660=l9_657;
float2 l9_661=l9_660;
float2 l9_662=l9_661;
float4 l9_663=float4(0.0);
int l9_664;
if ((int(reflectionModulationTexHasSwappedViews_tmp)!=0))
{
int l9_665=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_665=0;
}
else
{
l9_665=in.varStereoViewID;
}
int l9_666=l9_665;
l9_664=1-l9_666;
}
else
{
int l9_667=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_667=0;
}
else
{
l9_667=in.varStereoViewID;
}
int l9_668=l9_667;
l9_664=l9_668;
}
int l9_669=l9_664;
int l9_670=reflectionModulationTexLayout_tmp;
int l9_671=l9_669;
float2 l9_672=l9_662;
bool l9_673=(int(SC_USE_UV_TRANSFORM_reflectionModulationTex_tmp)!=0);
float3x3 l9_674=(*sc_set0.UserUniforms).reflectionModulationTexTransform;
int2 l9_675=int2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex_tmp,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex_tmp);
bool l9_676=(int(SC_USE_UV_MIN_MAX_reflectionModulationTex_tmp)!=0);
float4 l9_677=(*sc_set0.UserUniforms).reflectionModulationTexUvMinMax;
bool l9_678=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex_tmp)!=0);
float4 l9_679=(*sc_set0.UserUniforms).reflectionModulationTexBorderColor;
float l9_680=0.0;
bool l9_681=l9_678&&(!l9_676);
float l9_682=1.0;
float l9_683=l9_672.x;
int l9_684=l9_675.x;
if (l9_684==1)
{
l9_683=fract(l9_683);
}
else
{
if (l9_684==2)
{
float l9_685=fract(l9_683);
float l9_686=l9_683-l9_685;
float l9_687=step(0.25,fract(l9_686*0.5));
l9_683=mix(l9_685,1.0-l9_685,fast::clamp(l9_687,0.0,1.0));
}
}
l9_672.x=l9_683;
float l9_688=l9_672.y;
int l9_689=l9_675.y;
if (l9_689==1)
{
l9_688=fract(l9_688);
}
else
{
if (l9_689==2)
{
float l9_690=fract(l9_688);
float l9_691=l9_688-l9_690;
float l9_692=step(0.25,fract(l9_691*0.5));
l9_688=mix(l9_690,1.0-l9_690,fast::clamp(l9_692,0.0,1.0));
}
}
l9_672.y=l9_688;
if (l9_676)
{
bool l9_693=l9_678;
bool l9_694;
if (l9_693)
{
l9_694=l9_675.x==3;
}
else
{
l9_694=l9_693;
}
float l9_695=l9_672.x;
float l9_696=l9_677.x;
float l9_697=l9_677.z;
bool l9_698=l9_694;
float l9_699=l9_682;
float l9_700=fast::clamp(l9_695,l9_696,l9_697);
float l9_701=step(abs(l9_695-l9_700),9.9999997e-06);
l9_699*=(l9_701+((1.0-float(l9_698))*(1.0-l9_701)));
l9_695=l9_700;
l9_672.x=l9_695;
l9_682=l9_699;
bool l9_702=l9_678;
bool l9_703;
if (l9_702)
{
l9_703=l9_675.y==3;
}
else
{
l9_703=l9_702;
}
float l9_704=l9_672.y;
float l9_705=l9_677.y;
float l9_706=l9_677.w;
bool l9_707=l9_703;
float l9_708=l9_682;
float l9_709=fast::clamp(l9_704,l9_705,l9_706);
float l9_710=step(abs(l9_704-l9_709),9.9999997e-06);
l9_708*=(l9_710+((1.0-float(l9_707))*(1.0-l9_710)));
l9_704=l9_709;
l9_672.y=l9_704;
l9_682=l9_708;
}
float2 l9_711=l9_672;
bool l9_712=l9_673;
float3x3 l9_713=l9_674;
if (l9_712)
{
l9_711=float2((l9_713*float3(l9_711,1.0)).xy);
}
float2 l9_714=l9_711;
l9_672=l9_714;
float l9_715=l9_672.x;
int l9_716=l9_675.x;
bool l9_717=l9_681;
float l9_718=l9_682;
if ((l9_716==0)||(l9_716==3))
{
float l9_719=l9_715;
float l9_720=0.0;
float l9_721=1.0;
bool l9_722=l9_717;
float l9_723=l9_718;
float l9_724=fast::clamp(l9_719,l9_720,l9_721);
float l9_725=step(abs(l9_719-l9_724),9.9999997e-06);
l9_723*=(l9_725+((1.0-float(l9_722))*(1.0-l9_725)));
l9_719=l9_724;
l9_715=l9_719;
l9_718=l9_723;
}
l9_672.x=l9_715;
l9_682=l9_718;
float l9_726=l9_672.y;
int l9_727=l9_675.y;
bool l9_728=l9_681;
float l9_729=l9_682;
if ((l9_727==0)||(l9_727==3))
{
float l9_730=l9_726;
float l9_731=0.0;
float l9_732=1.0;
bool l9_733=l9_728;
float l9_734=l9_729;
float l9_735=fast::clamp(l9_730,l9_731,l9_732);
float l9_736=step(abs(l9_730-l9_735),9.9999997e-06);
l9_734*=(l9_736+((1.0-float(l9_733))*(1.0-l9_736)));
l9_730=l9_735;
l9_726=l9_730;
l9_729=l9_734;
}
l9_672.y=l9_726;
l9_682=l9_729;
float2 l9_737=l9_672;
int l9_738=l9_670;
int l9_739=l9_671;
float l9_740=l9_680;
float2 l9_741=l9_737;
int l9_742=l9_738;
int l9_743=l9_739;
float3 l9_744=float3(0.0);
if (l9_742==0)
{
l9_744=float3(l9_741,0.0);
}
else
{
if (l9_742==1)
{
l9_744=float3(l9_741.x,(l9_741.y*0.5)+(0.5-(float(l9_743)*0.5)),0.0);
}
else
{
l9_744=float3(l9_741,float(l9_743));
}
}
float3 l9_745=l9_744;
float3 l9_746=l9_745;
float4 l9_747=sc_set0.reflectionModulationTex.sample(sc_set0.reflectionModulationTexSmpSC,l9_746.xy,bias(l9_740));
float4 l9_748=l9_747;
if (l9_678)
{
l9_748=mix(l9_679,l9_748,float4(l9_682));
}
float4 l9_749=l9_748;
l9_663=l9_749;
float4 l9_750=l9_663;
float3 l9_751=l9_750.xyz;
l9_449*=l9_751;
}
float3 l9_752=l9_449;
float3 l9_753;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_753=float3(pow(l9_752.x,2.2),pow(l9_752.y,2.2),pow(l9_752.z,2.2));
}
else
{
l9_753=l9_752*l9_752;
}
float3 l9_754=l9_753;
l9_449=l9_754;
l9_449*=N7_ReflectionIntensity;
}
if (N7_EnableRimHighlight)
{
float3 l9_755=N7_RimColor*N7_RimIntensity;
if (N7_EnableRimColorTexture)
{
int l9_756=N7_RimUVSwitch;
float2 l9_757=tempGlobals.Surface_UVCoord0;
float2 l9_758=l9_757;
if (l9_756==0)
{
float2 l9_759=tempGlobals.Surface_UVCoord0;
l9_758=l9_759;
}
if (l9_756==1)
{
float2 l9_760=tempGlobals.Surface_UVCoord1;
l9_758=l9_760;
}
if (l9_756==2)
{
l9_758=tempGlobals.N7_TransformedUV2;
}
if (l9_756==3)
{
l9_758=tempGlobals.N7_TransformedUV3;
}
float2 l9_761=l9_758;
float2 l9_762=l9_761;
float2 l9_763=l9_762;
float4 l9_764=float4(0.0);
int l9_765;
if ((int(rimColorTexHasSwappedViews_tmp)!=0))
{
int l9_766=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_766=0;
}
else
{
l9_766=in.varStereoViewID;
}
int l9_767=l9_766;
l9_765=1-l9_767;
}
else
{
int l9_768=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_768=0;
}
else
{
l9_768=in.varStereoViewID;
}
int l9_769=l9_768;
l9_765=l9_769;
}
int l9_770=l9_765;
int l9_771=rimColorTexLayout_tmp;
int l9_772=l9_770;
float2 l9_773=l9_763;
bool l9_774=(int(SC_USE_UV_TRANSFORM_rimColorTex_tmp)!=0);
float3x3 l9_775=(*sc_set0.UserUniforms).rimColorTexTransform;
int2 l9_776=int2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex_tmp,SC_SOFTWARE_WRAP_MODE_V_rimColorTex_tmp);
bool l9_777=(int(SC_USE_UV_MIN_MAX_rimColorTex_tmp)!=0);
float4 l9_778=(*sc_set0.UserUniforms).rimColorTexUvMinMax;
bool l9_779=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex_tmp)!=0);
float4 l9_780=(*sc_set0.UserUniforms).rimColorTexBorderColor;
float l9_781=0.0;
bool l9_782=l9_779&&(!l9_777);
float l9_783=1.0;
float l9_784=l9_773.x;
int l9_785=l9_776.x;
if (l9_785==1)
{
l9_784=fract(l9_784);
}
else
{
if (l9_785==2)
{
float l9_786=fract(l9_784);
float l9_787=l9_784-l9_786;
float l9_788=step(0.25,fract(l9_787*0.5));
l9_784=mix(l9_786,1.0-l9_786,fast::clamp(l9_788,0.0,1.0));
}
}
l9_773.x=l9_784;
float l9_789=l9_773.y;
int l9_790=l9_776.y;
if (l9_790==1)
{
l9_789=fract(l9_789);
}
else
{
if (l9_790==2)
{
float l9_791=fract(l9_789);
float l9_792=l9_789-l9_791;
float l9_793=step(0.25,fract(l9_792*0.5));
l9_789=mix(l9_791,1.0-l9_791,fast::clamp(l9_793,0.0,1.0));
}
}
l9_773.y=l9_789;
if (l9_777)
{
bool l9_794=l9_779;
bool l9_795;
if (l9_794)
{
l9_795=l9_776.x==3;
}
else
{
l9_795=l9_794;
}
float l9_796=l9_773.x;
float l9_797=l9_778.x;
float l9_798=l9_778.z;
bool l9_799=l9_795;
float l9_800=l9_783;
float l9_801=fast::clamp(l9_796,l9_797,l9_798);
float l9_802=step(abs(l9_796-l9_801),9.9999997e-06);
l9_800*=(l9_802+((1.0-float(l9_799))*(1.0-l9_802)));
l9_796=l9_801;
l9_773.x=l9_796;
l9_783=l9_800;
bool l9_803=l9_779;
bool l9_804;
if (l9_803)
{
l9_804=l9_776.y==3;
}
else
{
l9_804=l9_803;
}
float l9_805=l9_773.y;
float l9_806=l9_778.y;
float l9_807=l9_778.w;
bool l9_808=l9_804;
float l9_809=l9_783;
float l9_810=fast::clamp(l9_805,l9_806,l9_807);
float l9_811=step(abs(l9_805-l9_810),9.9999997e-06);
l9_809*=(l9_811+((1.0-float(l9_808))*(1.0-l9_811)));
l9_805=l9_810;
l9_773.y=l9_805;
l9_783=l9_809;
}
float2 l9_812=l9_773;
bool l9_813=l9_774;
float3x3 l9_814=l9_775;
if (l9_813)
{
l9_812=float2((l9_814*float3(l9_812,1.0)).xy);
}
float2 l9_815=l9_812;
l9_773=l9_815;
float l9_816=l9_773.x;
int l9_817=l9_776.x;
bool l9_818=l9_782;
float l9_819=l9_783;
if ((l9_817==0)||(l9_817==3))
{
float l9_820=l9_816;
float l9_821=0.0;
float l9_822=1.0;
bool l9_823=l9_818;
float l9_824=l9_819;
float l9_825=fast::clamp(l9_820,l9_821,l9_822);
float l9_826=step(abs(l9_820-l9_825),9.9999997e-06);
l9_824*=(l9_826+((1.0-float(l9_823))*(1.0-l9_826)));
l9_820=l9_825;
l9_816=l9_820;
l9_819=l9_824;
}
l9_773.x=l9_816;
l9_783=l9_819;
float l9_827=l9_773.y;
int l9_828=l9_776.y;
bool l9_829=l9_782;
float l9_830=l9_783;
if ((l9_828==0)||(l9_828==3))
{
float l9_831=l9_827;
float l9_832=0.0;
float l9_833=1.0;
bool l9_834=l9_829;
float l9_835=l9_830;
float l9_836=fast::clamp(l9_831,l9_832,l9_833);
float l9_837=step(abs(l9_831-l9_836),9.9999997e-06);
l9_835*=(l9_837+((1.0-float(l9_834))*(1.0-l9_837)));
l9_831=l9_836;
l9_827=l9_831;
l9_830=l9_835;
}
l9_773.y=l9_827;
l9_783=l9_830;
float2 l9_838=l9_773;
int l9_839=l9_771;
int l9_840=l9_772;
float l9_841=l9_781;
float2 l9_842=l9_838;
int l9_843=l9_839;
int l9_844=l9_840;
float3 l9_845=float3(0.0);
if (l9_843==0)
{
l9_845=float3(l9_842,0.0);
}
else
{
if (l9_843==1)
{
l9_845=float3(l9_842.x,(l9_842.y*0.5)+(0.5-(float(l9_844)*0.5)),0.0);
}
else
{
l9_845=float3(l9_842,float(l9_844));
}
}
float3 l9_846=l9_845;
float3 l9_847=l9_846;
float4 l9_848=sc_set0.rimColorTex.sample(sc_set0.rimColorTexSmpSC,l9_847.xy,bias(l9_841));
float4 l9_849=l9_848;
if (l9_779)
{
l9_849=mix(l9_780,l9_849,float4(l9_783));
}
float4 l9_850=l9_849;
l9_764=l9_850;
float4 l9_851=l9_764;
l9_755*=l9_851.xyz;
}
float3 l9_852=tempGlobals.ViewDirWS;
float3 l9_853=l9_852;
float l9_854=abs(dot(N7_Normal,l9_853));
if (!N7_EnableRimInvert)
{
l9_854=1.0-l9_854;
}
float l9_855=l9_854;
float l9_856=N7_RimExponent;
float l9_857;
if (l9_855<=0.0)
{
l9_857=0.0;
}
else
{
l9_857=pow(l9_855,l9_856);
}
float l9_858=l9_857;
float l9_859=l9_858;
float3 l9_860=l9_755;
float3 l9_861;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_861=float3(pow(l9_860.x,2.2),pow(l9_860.y,2.2),pow(l9_860.z,2.2));
}
else
{
l9_861=l9_860*l9_860;
}
float3 l9_862=l9_861;
l9_450+=(l9_862*l9_859);
}
float3 l9_863=(N7_Emissive+l9_449)+l9_450;
float3 l9_864=float3(0.45454547);
float l9_865;
if (l9_863.x<=0.0)
{
l9_865=0.0;
}
else
{
l9_865=pow(l9_863.x,l9_864.x);
}
float l9_866=l9_865;
float l9_867;
if (l9_863.y<=0.0)
{
l9_867=0.0;
}
else
{
l9_867=pow(l9_863.y,l9_864.y);
}
float l9_868=l9_867;
float l9_869;
if (l9_863.z<=0.0)
{
l9_869=0.0;
}
else
{
l9_869=pow(l9_863.z,l9_864.z);
}
float3 l9_870=float3(l9_866,l9_868,l9_869);
N7_Emissive=l9_870;
N7_Metallic=N7_MetallicValue;
N7_Roughness=N7_RoughnessValue;
float3 l9_871;
if (N7_VertexColorSwitch==3)
{
float4 l9_872=tempGlobals.VertexColor;
l9_871=l9_872.xyz;
}
else
{
l9_871=float3(1.0);
}
N7_AO=l9_871;
if (N7_EnableMaterialParamsTexture)
{
int l9_873=N7_MaterialParamsUVSwitch;
float2 l9_874=tempGlobals.Surface_UVCoord0;
float2 l9_875=l9_874;
if (l9_873==0)
{
float2 l9_876=tempGlobals.Surface_UVCoord0;
l9_875=l9_876;
}
if (l9_873==1)
{
float2 l9_877=tempGlobals.Surface_UVCoord1;
l9_875=l9_877;
}
if (l9_873==2)
{
l9_875=tempGlobals.N7_TransformedUV2;
}
if (l9_873==3)
{
l9_875=tempGlobals.N7_TransformedUV3;
}
float2 l9_878=l9_875;
float2 l9_879=l9_878;
float2 l9_880=l9_879;
float4 l9_881=float4(0.0);
int l9_882;
if ((int(materialParamsTexHasSwappedViews_tmp)!=0))
{
int l9_883=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_883=0;
}
else
{
l9_883=in.varStereoViewID;
}
int l9_884=l9_883;
l9_882=1-l9_884;
}
else
{
int l9_885=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_885=0;
}
else
{
l9_885=in.varStereoViewID;
}
int l9_886=l9_885;
l9_882=l9_886;
}
int l9_887=l9_882;
int l9_888=materialParamsTexLayout_tmp;
int l9_889=l9_887;
float2 l9_890=l9_880;
bool l9_891=(int(SC_USE_UV_TRANSFORM_materialParamsTex_tmp)!=0);
float3x3 l9_892=(*sc_set0.UserUniforms).materialParamsTexTransform;
int2 l9_893=int2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex_tmp,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex_tmp);
bool l9_894=(int(SC_USE_UV_MIN_MAX_materialParamsTex_tmp)!=0);
float4 l9_895=(*sc_set0.UserUniforms).materialParamsTexUvMinMax;
bool l9_896=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex_tmp)!=0);
float4 l9_897=(*sc_set0.UserUniforms).materialParamsTexBorderColor;
float l9_898=0.0;
bool l9_899=l9_896&&(!l9_894);
float l9_900=1.0;
float l9_901=l9_890.x;
int l9_902=l9_893.x;
if (l9_902==1)
{
l9_901=fract(l9_901);
}
else
{
if (l9_902==2)
{
float l9_903=fract(l9_901);
float l9_904=l9_901-l9_903;
float l9_905=step(0.25,fract(l9_904*0.5));
l9_901=mix(l9_903,1.0-l9_903,fast::clamp(l9_905,0.0,1.0));
}
}
l9_890.x=l9_901;
float l9_906=l9_890.y;
int l9_907=l9_893.y;
if (l9_907==1)
{
l9_906=fract(l9_906);
}
else
{
if (l9_907==2)
{
float l9_908=fract(l9_906);
float l9_909=l9_906-l9_908;
float l9_910=step(0.25,fract(l9_909*0.5));
l9_906=mix(l9_908,1.0-l9_908,fast::clamp(l9_910,0.0,1.0));
}
}
l9_890.y=l9_906;
if (l9_894)
{
bool l9_911=l9_896;
bool l9_912;
if (l9_911)
{
l9_912=l9_893.x==3;
}
else
{
l9_912=l9_911;
}
float l9_913=l9_890.x;
float l9_914=l9_895.x;
float l9_915=l9_895.z;
bool l9_916=l9_912;
float l9_917=l9_900;
float l9_918=fast::clamp(l9_913,l9_914,l9_915);
float l9_919=step(abs(l9_913-l9_918),9.9999997e-06);
l9_917*=(l9_919+((1.0-float(l9_916))*(1.0-l9_919)));
l9_913=l9_918;
l9_890.x=l9_913;
l9_900=l9_917;
bool l9_920=l9_896;
bool l9_921;
if (l9_920)
{
l9_921=l9_893.y==3;
}
else
{
l9_921=l9_920;
}
float l9_922=l9_890.y;
float l9_923=l9_895.y;
float l9_924=l9_895.w;
bool l9_925=l9_921;
float l9_926=l9_900;
float l9_927=fast::clamp(l9_922,l9_923,l9_924);
float l9_928=step(abs(l9_922-l9_927),9.9999997e-06);
l9_926*=(l9_928+((1.0-float(l9_925))*(1.0-l9_928)));
l9_922=l9_927;
l9_890.y=l9_922;
l9_900=l9_926;
}
float2 l9_929=l9_890;
bool l9_930=l9_891;
float3x3 l9_931=l9_892;
if (l9_930)
{
l9_929=float2((l9_931*float3(l9_929,1.0)).xy);
}
float2 l9_932=l9_929;
l9_890=l9_932;
float l9_933=l9_890.x;
int l9_934=l9_893.x;
bool l9_935=l9_899;
float l9_936=l9_900;
if ((l9_934==0)||(l9_934==3))
{
float l9_937=l9_933;
float l9_938=0.0;
float l9_939=1.0;
bool l9_940=l9_935;
float l9_941=l9_936;
float l9_942=fast::clamp(l9_937,l9_938,l9_939);
float l9_943=step(abs(l9_937-l9_942),9.9999997e-06);
l9_941*=(l9_943+((1.0-float(l9_940))*(1.0-l9_943)));
l9_937=l9_942;
l9_933=l9_937;
l9_936=l9_941;
}
l9_890.x=l9_933;
l9_900=l9_936;
float l9_944=l9_890.y;
int l9_945=l9_893.y;
bool l9_946=l9_899;
float l9_947=l9_900;
if ((l9_945==0)||(l9_945==3))
{
float l9_948=l9_944;
float l9_949=0.0;
float l9_950=1.0;
bool l9_951=l9_946;
float l9_952=l9_947;
float l9_953=fast::clamp(l9_948,l9_949,l9_950);
float l9_954=step(abs(l9_948-l9_953),9.9999997e-06);
l9_952*=(l9_954+((1.0-float(l9_951))*(1.0-l9_954)));
l9_948=l9_953;
l9_944=l9_948;
l9_947=l9_952;
}
l9_890.y=l9_944;
l9_900=l9_947;
float2 l9_955=l9_890;
int l9_956=l9_888;
int l9_957=l9_889;
float l9_958=l9_898;
float2 l9_959=l9_955;
int l9_960=l9_956;
int l9_961=l9_957;
float3 l9_962=float3(0.0);
if (l9_960==0)
{
l9_962=float3(l9_959,0.0);
}
else
{
if (l9_960==1)
{
l9_962=float3(l9_959.x,(l9_959.y*0.5)+(0.5-(float(l9_961)*0.5)),0.0);
}
else
{
l9_962=float3(l9_959,float(l9_961));
}
}
float3 l9_963=l9_962;
float3 l9_964=l9_963;
float4 l9_965=sc_set0.materialParamsTex.sample(sc_set0.materialParamsTexSmpSC,l9_964.xy,bias(l9_958));
float4 l9_966=l9_965;
if (l9_896)
{
l9_966=mix(l9_897,l9_966,float4(l9_900));
}
float4 l9_967=l9_966;
l9_881=l9_967;
float4 l9_968=l9_881;
float3 l9_969=l9_968.xyz;
N7_Metallic*=l9_969.x;
N7_Roughness*=l9_969.y;
N7_AO*=l9_969.z;
}
if (N7_EnableSpecularAO)
{
N7_SpecularAO=mix(float3(0.039999999),N7_Albedo.xyz*N7_Metallic,float3(N7_Metallic));
N7_SpecularAO=mix((N7_SpecularAO*(1.0-N7_Darkening))*N7_SpecularAO,float3(1.0),float3(N7_AO.x));
N7_SpecularAO=mix(float3(1.0),N7_SpecularAO,float3(N7_Intensity));
}
else
{
N7_SpecularAO=float3(1.0);
}
if (N7_EnableSimpleReflection)
{
N7_SpecularAO=float3(0.0);
}
param_37=N7_Albedo;
param_38=N7_Opacity;
param_39=N7_Normal;
param_40=N7_Emissive;
param_41=N7_Metallic;
param_42=N7_Roughness;
param_43=N7_AO;
param_44=N7_SpecularAO;
Albedo_N7=param_37;
Opacity_N7=param_38;
Normal_N7=param_39;
Emissive_N7=param_40;
Metallic_N7=param_41;
Roughness_N7=param_42;
AO_N7=param_43;
SpecularAO_N7=param_44;
float4 Output_N36=float4(0.0);
float3 param_46=Albedo_N7.xyz;
float param_47=Opacity_N7;
float3 param_48=Normal_N7;
float3 param_49=Emissive_N7;
float param_50=Metallic_N7;
float param_51=Roughness_N7;
float3 param_52=AO_N7;
float3 param_53=SpecularAO_N7;
ssGlobals param_55=Globals;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_55.BumpedNormal=param_48;
}
param_47=fast::clamp(param_47,0.0,1.0);
float l9_970=param_47;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_970<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_971=gl_FragCoord;
float2 l9_972=floor(mod(l9_971.xy,float2(4.0)));
float l9_973=(mod(dot(l9_972,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_970<l9_973)
{
discard_fragment();
}
}
param_46=fast::max(param_46,float3(0.0));
float4 param_54;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_54=float4(param_46,param_47);
}
else
{
param_49=fast::max(param_49,float3(0.0));
param_50=fast::clamp(param_50,0.0,1.0);
param_51=fast::clamp(param_51,0.0,1.0);
param_52=fast::clamp(param_52,float3(0.0),float3(1.0));
param_53=fast::clamp(param_53,float3(0.0),float3(1.0));
float3 l9_974=param_46;
float l9_975=param_47;
float3 l9_976=param_55.BumpedNormal;
float3 l9_977=param_55.PositionWS;
float3 l9_978=param_55.ViewDirWS;
float3 l9_979=param_49;
float l9_980=param_50;
float l9_981=param_51;
float3 l9_982=param_52;
float3 l9_983=param_53;
SurfaceProperties l9_984;
l9_984.albedo=float3(0.0);
l9_984.opacity=1.0;
l9_984.normal=float3(0.0);
l9_984.positionWS=float3(0.0);
l9_984.viewDirWS=float3(0.0);
l9_984.metallic=0.0;
l9_984.roughness=0.0;
l9_984.emissive=float3(0.0);
l9_984.ao=float3(1.0);
l9_984.specularAo=float3(1.0);
l9_984.bakedShadows=float3(1.0);
SurfaceProperties l9_985=l9_984;
SurfaceProperties l9_986=l9_985;
l9_986.opacity=l9_975;
float3 l9_987=l9_974;
float3 l9_988;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_988=float3(pow(l9_987.x,2.2),pow(l9_987.y,2.2),pow(l9_987.z,2.2));
}
else
{
l9_988=l9_987*l9_987;
}
float3 l9_989=l9_988;
l9_986.albedo=l9_989;
l9_986.normal=normalize(l9_976);
l9_986.positionWS=l9_977;
l9_986.viewDirWS=l9_978;
float3 l9_990=l9_979;
float3 l9_991;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_991=float3(pow(l9_990.x,2.2),pow(l9_990.y,2.2),pow(l9_990.z,2.2));
}
else
{
l9_991=l9_990*l9_990;
}
float3 l9_992=l9_991;
l9_986.emissive=l9_992;
l9_986.metallic=l9_980;
l9_986.roughness=l9_981;
l9_986.ao=l9_982;
l9_986.specularAo=l9_983;
if ((int(sc_SSAOEnabled_tmp)!=0))
{
float3 l9_993=l9_986.positionWS;
l9_986.ao=evaluateSSAO(l9_993,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC);
}
SurfaceProperties l9_994=l9_986;
SurfaceProperties l9_995=l9_994;
float3 l9_996=mix(float3(0.039999999),l9_995.albedo*l9_995.metallic,float3(l9_995.metallic));
float3 l9_997=mix(l9_995.albedo*(1.0-l9_995.metallic),float3(0.0),float3(l9_995.metallic));
l9_994.albedo=l9_997;
l9_994.specColor=l9_996;
SurfaceProperties l9_998=l9_994;
l9_986=l9_998;
SurfaceProperties l9_999=l9_986;
LightingComponents l9_1000;
l9_1000.directDiffuse=float3(0.0);
l9_1000.directSpecular=float3(0.0);
l9_1000.indirectDiffuse=float3(1.0);
l9_1000.indirectSpecular=float3(0.0);
l9_1000.emitted=float3(0.0);
l9_1000.transmitted=float3(0.0);
LightingComponents l9_1001=l9_1000;
LightingComponents l9_1002=l9_1001;
float3 l9_1003=l9_999.viewDirWS;
int l9_1004=0;
float4 l9_1005=float4(l9_999.bakedShadows,1.0);
if (sc_DirectionalLightsCount_tmp>0)
{
sc_DirectionalLight_t l9_1006;
LightProperties l9_1007;
int l9_1008=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_1008<sc_DirectionalLightsCount_tmp)
{
l9_1006.direction=(*sc_set0.UserUniforms).sc_DirectionalLights[l9_1008].direction;
l9_1006.color=(*sc_set0.UserUniforms).sc_DirectionalLights[l9_1008].color;
l9_1007.direction=l9_1006.direction;
l9_1007.color=l9_1006.color.xyz;
l9_1007.attenuation=l9_1006.color.w;
l9_1007.attenuation*=l9_1005[(l9_1004<3) ? l9_1004 : 3];
l9_1004++;
LightingComponents l9_1009=l9_1002;
LightProperties l9_1010=l9_1007;
SurfaceProperties l9_1011=l9_999;
float3 l9_1012=l9_1003;
SurfaceProperties l9_1013=l9_1011;
float3 l9_1014=l9_1010.direction;
float l9_1015=dot(l9_1013.normal,l9_1014);
float l9_1016=fast::clamp(l9_1015,0.0,1.0);
float3 l9_1017=float3(l9_1016);
l9_1009.directDiffuse+=((l9_1017*l9_1010.color)*l9_1010.attenuation);
SurfaceProperties l9_1018=l9_1011;
float3 l9_1019=l9_1010.direction;
float3 l9_1020=l9_1012;
l9_1009.directSpecular+=((calculateDirectSpecular(l9_1018,l9_1019,l9_1020)*l9_1010.color)*l9_1010.attenuation);
LightingComponents l9_1021=l9_1009;
l9_1002=l9_1021;
l9_1008++;
continue;
}
else
{
break;
}
}
}
if (sc_PointLightsCount_tmp>0)
{
sc_PointLight_t_1 l9_1022;
LightProperties l9_1023;
int l9_1024=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_1024<sc_PointLightsCount_tmp)
{
l9_1022.falloffEnabled=(*sc_set0.UserUniforms).sc_PointLights[l9_1024].falloffEnabled!=0;
l9_1022.falloffEndDistance=(*sc_set0.UserUniforms).sc_PointLights[l9_1024].falloffEndDistance;
l9_1022.negRcpFalloffEndDistance4=(*sc_set0.UserUniforms).sc_PointLights[l9_1024].negRcpFalloffEndDistance4;
l9_1022.angleScale=(*sc_set0.UserUniforms).sc_PointLights[l9_1024].angleScale;
l9_1022.angleOffset=(*sc_set0.UserUniforms).sc_PointLights[l9_1024].angleOffset;
l9_1022.direction=(*sc_set0.UserUniforms).sc_PointLights[l9_1024].direction;
l9_1022.position=(*sc_set0.UserUniforms).sc_PointLights[l9_1024].position;
l9_1022.color=(*sc_set0.UserUniforms).sc_PointLights[l9_1024].color;
float3 l9_1025=l9_1022.position-l9_999.positionWS;
l9_1023.direction=normalize(l9_1025);
l9_1023.color=l9_1022.color.xyz;
l9_1023.attenuation=l9_1022.color.w;
l9_1023.attenuation*=l9_1005[(l9_1004<3) ? l9_1004 : 3];
float3 l9_1026=l9_1023.direction;
float3 l9_1027=l9_1022.direction;
float l9_1028=l9_1022.angleScale;
float l9_1029=l9_1022.angleOffset;
float l9_1030=dot(l9_1026,l9_1027);
float l9_1031=fast::clamp((l9_1030*l9_1028)+l9_1029,0.0,1.0);
float l9_1032=l9_1031*l9_1031;
l9_1023.attenuation*=l9_1032;
if (l9_1022.falloffEnabled)
{
float l9_1033=length(l9_1025);
float l9_1034=l9_1022.falloffEndDistance;
l9_1023.attenuation*=computeDistanceAttenuation(l9_1033,l9_1034);
}
l9_1004++;
LightingComponents l9_1035=l9_1002;
LightProperties l9_1036=l9_1023;
SurfaceProperties l9_1037=l9_999;
float3 l9_1038=l9_1003;
SurfaceProperties l9_1039=l9_1037;
float3 l9_1040=l9_1036.direction;
float l9_1041=dot(l9_1039.normal,l9_1040);
float l9_1042=fast::clamp(l9_1041,0.0,1.0);
float3 l9_1043=float3(l9_1042);
l9_1035.directDiffuse+=((l9_1043*l9_1036.color)*l9_1036.attenuation);
SurfaceProperties l9_1044=l9_1037;
float3 l9_1045=l9_1036.direction;
float3 l9_1046=l9_1038;
l9_1035.directSpecular+=((calculateDirectSpecular(l9_1044,l9_1045,l9_1046)*l9_1036.color)*l9_1036.attenuation);
LightingComponents l9_1047=l9_1035;
l9_1002=l9_1047;
l9_1024++;
continue;
}
else
{
break;
}
}
}
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float3 l9_1048=float3(0.0);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float2 l9_1049=abs(in.varShadowTex-float2(0.5));
float l9_1050=fast::max(l9_1049.x,l9_1049.y);
float l9_1051=step(l9_1050,0.5);
float4 l9_1052=sc_set0.sc_ShadowTexture.sample(sc_set0.sc_ShadowTextureSmpSC,in.varShadowTex)*l9_1051;
float3 l9_1053=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_1052.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float l9_1054=l9_1052.w*(*sc_set0.UserUniforms).sc_ShadowDensity;
l9_1048=mix(float3(1.0),l9_1053,float3(l9_1054));
}
else
{
l9_1048=float3(1.0);
}
float3 l9_1055=l9_1048;
float3 l9_1056=l9_1055;
l9_1002.directDiffuse*=l9_1056;
l9_1002.directSpecular*=l9_1056;
}
if (((*sc_set0.UserUniforms).sc_RayTracingReceiverEffectsMask&4)!=0)
{
float4 l9_1057=gl_FragCoord;
float2 l9_1058=l9_1057.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1059=l9_1058;
float2 l9_1060=l9_1059;
float l9_1061=0.0;
int l9_1062;
if ((int(sc_RayTracingShadowsHasSwappedViews_tmp)!=0))
{
int l9_1063=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1063=0;
}
else
{
l9_1063=in.varStereoViewID;
}
int l9_1064=l9_1063;
l9_1062=1-l9_1064;
}
else
{
int l9_1065=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1065=0;
}
else
{
l9_1065=in.varStereoViewID;
}
int l9_1066=l9_1065;
l9_1062=l9_1066;
}
int l9_1067=l9_1062;
float2 l9_1068=l9_1060;
int l9_1069=sc_RayTracingShadowsLayout_tmp;
int l9_1070=l9_1067;
float l9_1071=l9_1061;
float2 l9_1072=l9_1068;
int l9_1073=l9_1069;
int l9_1074=l9_1070;
float3 l9_1075=float3(0.0);
if (l9_1073==0)
{
l9_1075=float3(l9_1072,0.0);
}
else
{
if (l9_1073==1)
{
l9_1075=float3(l9_1072.x,(l9_1072.y*0.5)+(0.5-(float(l9_1074)*0.5)),0.0);
}
else
{
l9_1075=float3(l9_1072,float(l9_1074));
}
}
float3 l9_1076=l9_1075;
float3 l9_1077=l9_1076;
float4 l9_1078=sc_set0.sc_RayTracingShadows.sample(sc_set0.sc_RayTracingShadowsSmpSC,l9_1077.xy,bias(l9_1071));
float4 l9_1079=l9_1078;
float4 l9_1080=l9_1079;
float l9_1081=l9_1080.x;
float l9_1082=1.0-l9_1081;
l9_1002.directDiffuse*=l9_1082;
l9_1002.directSpecular*=l9_1082;
}
SurfaceProperties l9_1083=l9_999;
float3 l9_1084=l9_1083.normal;
float3 l9_1085=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
float3 l9_1086=l9_1084;
float3 l9_1087=l9_1086;
float l9_1088=(*sc_set0.UserUniforms).sc_EnvmapRotation.y;
float2 l9_1089=float2(0.0);
float l9_1090=l9_1087.x;
float l9_1091=-l9_1087.z;
float l9_1092=(l9_1090<0.0) ? (-1.0) : 1.0;
float l9_1093=l9_1092*acos(fast::clamp(l9_1091/length(float2(l9_1090,l9_1091)),-1.0,1.0));
l9_1089.x=l9_1093-1.5707964;
l9_1089.y=acos(l9_1087.y);
l9_1089/=float2(6.2831855,3.1415927);
l9_1089.y=1.0-l9_1089.y;
l9_1089.x+=(l9_1088/360.0);
l9_1089.x=fract((l9_1089.x+floor(l9_1089.x))+1.0);
float2 l9_1094=l9_1089;
float2 l9_1095=l9_1094;
float4 l9_1096=float4(0.0);
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 l9_1097=l9_1095;
float2 l9_1098=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_1099=5.0;
l9_1095=calcSeamlessPanoramicUvsForSampling(l9_1097,l9_1098,l9_1099);
}
float2 l9_1100=l9_1095;
float l9_1101=13.0;
int l9_1102;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1103=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1103=0;
}
else
{
l9_1103=in.varStereoViewID;
}
int l9_1104=l9_1103;
l9_1102=1-l9_1104;
}
else
{
int l9_1105=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1105=0;
}
else
{
l9_1105=in.varStereoViewID;
}
int l9_1106=l9_1105;
l9_1102=l9_1106;
}
int l9_1107=l9_1102;
float2 l9_1108=l9_1100;
int l9_1109=sc_EnvmapSpecularLayout_tmp;
int l9_1110=l9_1107;
float l9_1111=l9_1101;
float2 l9_1112=l9_1108;
int l9_1113=l9_1109;
int l9_1114=l9_1110;
float3 l9_1115=float3(0.0);
if (l9_1113==0)
{
l9_1115=float3(l9_1112,0.0);
}
else
{
if (l9_1113==1)
{
l9_1115=float3(l9_1112.x,(l9_1112.y*0.5)+(0.5-(float(l9_1114)*0.5)),0.0);
}
else
{
l9_1115=float3(l9_1112,float(l9_1114));
}
}
float3 l9_1116=l9_1115;
float3 l9_1117=l9_1116;
float4 l9_1118=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1117.xy,bias(l9_1111));
float4 l9_1119=l9_1118;
l9_1096=l9_1119;
}
else
{
if ((int(sc_HasDiffuseEnvmap_tmp)!=0))
{
float2 l9_1120=l9_1095;
float2 l9_1121=(*sc_set0.UserUniforms).sc_EnvmapDiffuseSize.xy;
float l9_1122=0.0;
l9_1095=calcSeamlessPanoramicUvsForSampling(l9_1120,l9_1121,l9_1122);
float2 l9_1123=l9_1095;
float l9_1124=-13.0;
int l9_1125;
if ((int(sc_EnvmapDiffuseHasSwappedViews_tmp)!=0))
{
int l9_1126=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1126=0;
}
else
{
l9_1126=in.varStereoViewID;
}
int l9_1127=l9_1126;
l9_1125=1-l9_1127;
}
else
{
int l9_1128=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1128=0;
}
else
{
l9_1128=in.varStereoViewID;
}
int l9_1129=l9_1128;
l9_1125=l9_1129;
}
int l9_1130=l9_1125;
float2 l9_1131=l9_1123;
int l9_1132=sc_EnvmapDiffuseLayout_tmp;
int l9_1133=l9_1130;
float l9_1134=l9_1124;
float2 l9_1135=l9_1131;
int l9_1136=l9_1132;
int l9_1137=l9_1133;
float3 l9_1138=float3(0.0);
if (l9_1136==0)
{
l9_1138=float3(l9_1135,0.0);
}
else
{
if (l9_1136==1)
{
l9_1138=float3(l9_1135.x,(l9_1135.y*0.5)+(0.5-(float(l9_1137)*0.5)),0.0);
}
else
{
l9_1138=float3(l9_1135,float(l9_1137));
}
}
float3 l9_1139=l9_1138;
float3 l9_1140=l9_1139;
float4 l9_1141=sc_set0.sc_EnvmapDiffuse.sample(sc_set0.sc_EnvmapDiffuseSmpSC,l9_1140.xy,bias(l9_1134));
float4 l9_1142=l9_1141;
l9_1096=l9_1142;
}
else
{
float2 l9_1143=l9_1095;
float l9_1144=13.0;
int l9_1145;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1146=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1146=0;
}
else
{
l9_1146=in.varStereoViewID;
}
int l9_1147=l9_1146;
l9_1145=1-l9_1147;
}
else
{
int l9_1148=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1148=0;
}
else
{
l9_1148=in.varStereoViewID;
}
int l9_1149=l9_1148;
l9_1145=l9_1149;
}
int l9_1150=l9_1145;
float2 l9_1151=l9_1143;
int l9_1152=sc_EnvmapSpecularLayout_tmp;
int l9_1153=l9_1150;
float l9_1154=l9_1144;
float2 l9_1155=l9_1151;
int l9_1156=l9_1152;
int l9_1157=l9_1153;
float3 l9_1158=float3(0.0);
if (l9_1156==0)
{
l9_1158=float3(l9_1155,0.0);
}
else
{
if (l9_1156==1)
{
l9_1158=float3(l9_1155.x,(l9_1155.y*0.5)+(0.5-(float(l9_1157)*0.5)),0.0);
}
else
{
l9_1158=float3(l9_1155,float(l9_1157));
}
}
float3 l9_1159=l9_1158;
float3 l9_1160=l9_1159;
float4 l9_1161=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1160.xy,bias(l9_1154));
float4 l9_1162=l9_1161;
l9_1096=l9_1162;
}
}
float4 l9_1163=l9_1096;
float3 l9_1164=l9_1163.xyz*(1.0/l9_1163.w);
float3 l9_1165=l9_1164*(*sc_set0.UserUniforms).sc_EnvmapExposure;
l9_1085=l9_1165;
}
else
{
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_SphericalHarmonics_tmp)
{
float3 l9_1166=(*sc_set0.UserUniforms).sc_Sh[0];
float3 l9_1167=(*sc_set0.UserUniforms).sc_Sh[1];
float3 l9_1168=(*sc_set0.UserUniforms).sc_Sh[2];
float3 l9_1169=(*sc_set0.UserUniforms).sc_Sh[3];
float3 l9_1170=(*sc_set0.UserUniforms).sc_Sh[4];
float3 l9_1171=(*sc_set0.UserUniforms).sc_Sh[5];
float3 l9_1172=(*sc_set0.UserUniforms).sc_Sh[6];
float3 l9_1173=(*sc_set0.UserUniforms).sc_Sh[7];
float3 l9_1174=(*sc_set0.UserUniforms).sc_Sh[8];
float3 l9_1175=-l9_1084;
float l9_1176=0.0;
l9_1176=l9_1175.x;
float l9_1177=l9_1175.y;
float l9_1178=l9_1175.z;
float l9_1179=l9_1176*l9_1176;
float l9_1180=l9_1177*l9_1177;
float l9_1181=l9_1178*l9_1178;
float l9_1182=l9_1176*l9_1177;
float l9_1183=l9_1177*l9_1178;
float l9_1184=l9_1176*l9_1178;
float3 l9_1185=((((((l9_1174*0.42904299)*(l9_1179-l9_1180))+((l9_1172*0.74312502)*l9_1181))+(l9_1166*0.88622701))-(l9_1172*0.24770799))+((((l9_1170*l9_1182)+(l9_1173*l9_1184))+(l9_1171*l9_1183))*0.85808599))+((((l9_1169*l9_1176)+(l9_1167*l9_1177))+(l9_1168*l9_1178))*1.0233279);
l9_1085=l9_1185*(*sc_set0.UserUniforms).sc_ShIntensity;
}
}
if (((*sc_set0.UserUniforms).sc_RayTracingReceiverEffectsMask&2)!=0)
{
float4 l9_1186=gl_FragCoord;
float2 l9_1187=l9_1186.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1188=l9_1187;
float2 l9_1189=l9_1188;
float l9_1190=0.0;
int l9_1191;
if ((int(sc_RayTracingGlobalIlluminationHasSwappedViews_tmp)!=0))
{
int l9_1192=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1192=0;
}
else
{
l9_1192=in.varStereoViewID;
}
int l9_1193=l9_1192;
l9_1191=1-l9_1193;
}
else
{
int l9_1194=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1194=0;
}
else
{
l9_1194=in.varStereoViewID;
}
int l9_1195=l9_1194;
l9_1191=l9_1195;
}
int l9_1196=l9_1191;
float2 l9_1197=l9_1189;
int l9_1198=sc_RayTracingGlobalIlluminationLayout_tmp;
int l9_1199=l9_1196;
float l9_1200=l9_1190;
float2 l9_1201=l9_1197;
int l9_1202=l9_1198;
int l9_1203=l9_1199;
float3 l9_1204=float3(0.0);
if (l9_1202==0)
{
l9_1204=float3(l9_1201,0.0);
}
else
{
if (l9_1202==1)
{
l9_1204=float3(l9_1201.x,(l9_1201.y*0.5)+(0.5-(float(l9_1203)*0.5)),0.0);
}
else
{
l9_1204=float3(l9_1201,float(l9_1203));
}
}
float3 l9_1205=l9_1204;
float3 l9_1206=l9_1205;
float4 l9_1207=sc_set0.sc_RayTracingGlobalIllumination.sample(sc_set0.sc_RayTracingGlobalIlluminationSmpSC,l9_1206.xy,bias(l9_1200));
float4 l9_1208=l9_1207;
float4 l9_1209=l9_1208;
float4 l9_1210=l9_1209;
l9_1085=mix(l9_1085,l9_1210.xyz,float3(l9_1210.w));
}
if (sc_AmbientLightsCount_tmp>0)
{
if (sc_AmbientLightMode0_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_1085+=((*sc_set0.UserUniforms).sc_AmbientLights[0].color*(*sc_set0.UserUniforms).sc_AmbientLights[0].intensity);
}
else
{
l9_1085.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[0].color.x);
}
}
if (sc_AmbientLightsCount_tmp>1)
{
if (sc_AmbientLightMode1_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_1085+=((*sc_set0.UserUniforms).sc_AmbientLights[1].color*(*sc_set0.UserUniforms).sc_AmbientLights[1].intensity);
}
else
{
l9_1085.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[1].color.x);
}
}
if (sc_AmbientLightsCount_tmp>2)
{
if (sc_AmbientLightMode2_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_1085+=((*sc_set0.UserUniforms).sc_AmbientLights[2].color*(*sc_set0.UserUniforms).sc_AmbientLights[2].intensity);
}
else
{
l9_1085.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[2].color.x);
}
}
if ((int(sc_LightEstimation_tmp)!=0))
{
float3 l9_1211=l9_1084;
float3 l9_1212=(*sc_set0.UserUniforms).sc_LightEstimationData.ambientLight;
sc_SphericalGaussianLight_t l9_1213;
float l9_1214;
int l9_1215=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_1215<sc_LightEstimationSGCount_tmp)
{
l9_1213.color=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1215].color;
l9_1213.sharpness=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1215].sharpness;
l9_1213.axis=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1215].axis;
float3 l9_1216=l9_1211;
float l9_1217=dot(l9_1213.axis,l9_1216);
float l9_1218=l9_1213.sharpness;
float l9_1219=0.36000001;
float l9_1220=1.0/(4.0*l9_1219);
float l9_1221=exp(-l9_1218);
float l9_1222=l9_1221*l9_1221;
float l9_1223=1.0/l9_1218;
float l9_1224=(1.0+(2.0*l9_1222))-l9_1223;
float l9_1225=((l9_1221-l9_1222)*l9_1223)-l9_1222;
float l9_1226=sqrt(1.0-l9_1224);
float l9_1227=l9_1219*l9_1217;
float l9_1228=l9_1220*l9_1226;
float l9_1229=l9_1227+l9_1228;
float l9_1230=l9_1217;
float l9_1231=fast::clamp(l9_1230,0.0,1.0);
float l9_1232=l9_1231;
if (step(abs(l9_1227),l9_1228)>0.5)
{
l9_1214=(l9_1229*l9_1229)/l9_1226;
}
else
{
l9_1214=l9_1232;
}
l9_1232=l9_1214;
float l9_1233=(l9_1224*l9_1232)+l9_1225;
sc_SphericalGaussianLight_t l9_1234=l9_1213;
float3 l9_1235=(l9_1234.color/float3(l9_1234.sharpness))*6.2831855;
float3 l9_1236=(l9_1235*l9_1233)/float3(3.1415927);
l9_1212+=l9_1236;
l9_1215++;
continue;
}
else
{
break;
}
}
float3 l9_1237=l9_1212;
l9_1085+=l9_1237;
}
float3 l9_1238=l9_1085;
float3 l9_1239=l9_1238;
l9_1002.indirectDiffuse=l9_1239;
SurfaceProperties l9_1240=l9_999;
float3 l9_1241=l9_1003;
float3 l9_1242=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
SurfaceProperties l9_1243=l9_1240;
float3 l9_1244=l9_1241;
float3 l9_1245=l9_1243.normal;
float3 l9_1246=reflect(-l9_1244,l9_1245);
float3 l9_1247=l9_1245;
float3 l9_1248=l9_1246;
float l9_1249=l9_1243.roughness;
l9_1246=getSpecularDominantDir(l9_1247,l9_1248,l9_1249);
float l9_1250=l9_1243.roughness;
float l9_1251=pow(l9_1250,0.66666669);
float l9_1252=fast::clamp(l9_1251,0.0,1.0);
float l9_1253=l9_1252*5.0;
float l9_1254=l9_1253;
float l9_1255=l9_1254;
float3 l9_1256=l9_1246;
float l9_1257=l9_1255;
float3 l9_1258=l9_1256;
float l9_1259=l9_1257;
float4 l9_1260=float4(0.0);
float3 l9_1261=l9_1258;
float l9_1262=(*sc_set0.UserUniforms).sc_EnvmapRotation.y;
float2 l9_1263=float2(0.0);
float l9_1264=l9_1261.x;
float l9_1265=-l9_1261.z;
float l9_1266=(l9_1264<0.0) ? (-1.0) : 1.0;
float l9_1267=l9_1266*acos(fast::clamp(l9_1265/length(float2(l9_1264,l9_1265)),-1.0,1.0));
l9_1263.x=l9_1267-1.5707964;
l9_1263.y=acos(l9_1261.y);
l9_1263/=float2(6.2831855,3.1415927);
l9_1263.y=1.0-l9_1263.y;
l9_1263.x+=(l9_1262/360.0);
l9_1263.x=fract((l9_1263.x+floor(l9_1263.x))+1.0);
float2 l9_1268=l9_1263;
float2 l9_1269=l9_1268;
if (SC_DEVICE_CLASS_tmp>=2)
{
float l9_1270=floor(l9_1259);
float l9_1271=ceil(l9_1259);
float l9_1272=l9_1259-l9_1270;
float2 l9_1273=l9_1269;
float2 l9_1274=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_1275=l9_1270;
float2 l9_1276=calcSeamlessPanoramicUvsForSampling(l9_1273,l9_1274,l9_1275);
float2 l9_1277=l9_1276;
float l9_1278=l9_1270;
float2 l9_1279=l9_1277;
float l9_1280=l9_1278;
int l9_1281;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1282=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1282=0;
}
else
{
l9_1282=in.varStereoViewID;
}
int l9_1283=l9_1282;
l9_1281=1-l9_1283;
}
else
{
int l9_1284=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1284=0;
}
else
{
l9_1284=in.varStereoViewID;
}
int l9_1285=l9_1284;
l9_1281=l9_1285;
}
int l9_1286=l9_1281;
float2 l9_1287=l9_1279;
int l9_1288=sc_EnvmapSpecularLayout_tmp;
int l9_1289=l9_1286;
float l9_1290=l9_1280;
float2 l9_1291=l9_1287;
int l9_1292=l9_1288;
int l9_1293=l9_1289;
float3 l9_1294=float3(0.0);
if (l9_1292==0)
{
l9_1294=float3(l9_1291,0.0);
}
else
{
if (l9_1292==1)
{
l9_1294=float3(l9_1291.x,(l9_1291.y*0.5)+(0.5-(float(l9_1293)*0.5)),0.0);
}
else
{
l9_1294=float3(l9_1291,float(l9_1293));
}
}
float3 l9_1295=l9_1294;
float3 l9_1296=l9_1295;
float4 l9_1297=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1296.xy,level(l9_1290));
float4 l9_1298=l9_1297;
float4 l9_1299=l9_1298;
float4 l9_1300=l9_1299;
float2 l9_1301=l9_1269;
float2 l9_1302=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_1303=l9_1271;
float2 l9_1304=calcSeamlessPanoramicUvsForSampling(l9_1301,l9_1302,l9_1303);
float2 l9_1305=l9_1304;
float l9_1306=l9_1271;
float2 l9_1307=l9_1305;
float l9_1308=l9_1306;
int l9_1309;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1310=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1310=0;
}
else
{
l9_1310=in.varStereoViewID;
}
int l9_1311=l9_1310;
l9_1309=1-l9_1311;
}
else
{
int l9_1312=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1312=0;
}
else
{
l9_1312=in.varStereoViewID;
}
int l9_1313=l9_1312;
l9_1309=l9_1313;
}
int l9_1314=l9_1309;
float2 l9_1315=l9_1307;
int l9_1316=sc_EnvmapSpecularLayout_tmp;
int l9_1317=l9_1314;
float l9_1318=l9_1308;
float2 l9_1319=l9_1315;
int l9_1320=l9_1316;
int l9_1321=l9_1317;
float3 l9_1322=float3(0.0);
if (l9_1320==0)
{
l9_1322=float3(l9_1319,0.0);
}
else
{
if (l9_1320==1)
{
l9_1322=float3(l9_1319.x,(l9_1319.y*0.5)+(0.5-(float(l9_1321)*0.5)),0.0);
}
else
{
l9_1322=float3(l9_1319,float(l9_1321));
}
}
float3 l9_1323=l9_1322;
float3 l9_1324=l9_1323;
float4 l9_1325=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1324.xy,level(l9_1318));
float4 l9_1326=l9_1325;
float4 l9_1327=l9_1326;
float4 l9_1328=l9_1327;
l9_1260=mix(l9_1300,l9_1328,float4(l9_1272));
}
else
{
float2 l9_1329=l9_1269;
float l9_1330=l9_1259;
float2 l9_1331=l9_1329;
float l9_1332=l9_1330;
int l9_1333;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1334=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1334=0;
}
else
{
l9_1334=in.varStereoViewID;
}
int l9_1335=l9_1334;
l9_1333=1-l9_1335;
}
else
{
int l9_1336=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1336=0;
}
else
{
l9_1336=in.varStereoViewID;
}
int l9_1337=l9_1336;
l9_1333=l9_1337;
}
int l9_1338=l9_1333;
float2 l9_1339=l9_1331;
int l9_1340=sc_EnvmapSpecularLayout_tmp;
int l9_1341=l9_1338;
float l9_1342=l9_1332;
float2 l9_1343=l9_1339;
int l9_1344=l9_1340;
int l9_1345=l9_1341;
float3 l9_1346=float3(0.0);
if (l9_1344==0)
{
l9_1346=float3(l9_1343,0.0);
}
else
{
if (l9_1344==1)
{
l9_1346=float3(l9_1343.x,(l9_1343.y*0.5)+(0.5-(float(l9_1345)*0.5)),0.0);
}
else
{
l9_1346=float3(l9_1343,float(l9_1345));
}
}
float3 l9_1347=l9_1346;
float3 l9_1348=l9_1347;
float4 l9_1349=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1348.xy,level(l9_1342));
float4 l9_1350=l9_1349;
float4 l9_1351=l9_1350;
l9_1260=l9_1351;
}
float4 l9_1352=l9_1260;
float3 l9_1353=l9_1352.xyz*(1.0/l9_1352.w);
float3 l9_1354=l9_1353;
float3 l9_1355=l9_1354*(*sc_set0.UserUniforms).sc_EnvmapExposure;
l9_1355+=float3(1e-06);
float3 l9_1356=l9_1355;
float3 l9_1357=l9_1356;
if (((*sc_set0.UserUniforms).sc_RayTracingReceiverEffectsMask&1)!=0)
{
float4 l9_1358=gl_FragCoord;
float2 l9_1359=l9_1358.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1360=l9_1359;
float2 l9_1361=l9_1360;
float l9_1362=0.0;
int l9_1363;
if ((int(sc_RayTracingReflectionsHasSwappedViews_tmp)!=0))
{
int l9_1364=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1364=0;
}
else
{
l9_1364=in.varStereoViewID;
}
int l9_1365=l9_1364;
l9_1363=1-l9_1365;
}
else
{
int l9_1366=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1366=0;
}
else
{
l9_1366=in.varStereoViewID;
}
int l9_1367=l9_1366;
l9_1363=l9_1367;
}
int l9_1368=l9_1363;
float2 l9_1369=l9_1361;
int l9_1370=sc_RayTracingReflectionsLayout_tmp;
int l9_1371=l9_1368;
float l9_1372=l9_1362;
float2 l9_1373=l9_1369;
int l9_1374=l9_1370;
int l9_1375=l9_1371;
float3 l9_1376=float3(0.0);
if (l9_1374==0)
{
l9_1376=float3(l9_1373,0.0);
}
else
{
if (l9_1374==1)
{
l9_1376=float3(l9_1373.x,(l9_1373.y*0.5)+(0.5-(float(l9_1375)*0.5)),0.0);
}
else
{
l9_1376=float3(l9_1373,float(l9_1375));
}
}
float3 l9_1377=l9_1376;
float3 l9_1378=l9_1377;
float4 l9_1379=sc_set0.sc_RayTracingReflections.sample(sc_set0.sc_RayTracingReflectionsSmpSC,l9_1378.xy,bias(l9_1372));
float4 l9_1380=l9_1379;
float4 l9_1381=l9_1380;
float4 l9_1382=l9_1381;
l9_1357=mix(l9_1357,l9_1382.xyz,float3(l9_1382.w));
}
float l9_1383=abs(dot(l9_1245,l9_1244));
SurfaceProperties l9_1384=l9_1243;
float l9_1385=l9_1383;
float3 l9_1386=l9_1357*envBRDFApprox(l9_1384,l9_1385);
l9_1242+=l9_1386;
}
if ((int(sc_LightEstimation_tmp)!=0))
{
SurfaceProperties l9_1387=l9_1240;
float3 l9_1388=l9_1241;
float l9_1389=fast::clamp(l9_1387.roughness*l9_1387.roughness,0.0099999998,1.0);
float3 l9_1390=(*sc_set0.UserUniforms).sc_LightEstimationData.ambientLight*l9_1387.specColor;
sc_SphericalGaussianLight_t l9_1391;
sc_SphericalGaussianLight_t l9_1392;
sc_SphericalGaussianLight_t l9_1393;
int l9_1394=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_1394<sc_LightEstimationSGCount_tmp)
{
l9_1391.color=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1394].color;
l9_1391.sharpness=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1394].sharpness;
l9_1391.axis=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_1394].axis;
float3 l9_1395=l9_1387.normal;
float l9_1396=l9_1389;
float3 l9_1397=l9_1388;
float3 l9_1398=l9_1387.specColor;
float3 l9_1399=l9_1395;
float l9_1400=l9_1396;
l9_1392.axis=l9_1399;
float l9_1401=l9_1400*l9_1400;
l9_1392.sharpness=2.0/l9_1401;
l9_1392.color=float3(1.0/(3.1415927*l9_1401));
sc_SphericalGaussianLight_t l9_1402=l9_1392;
sc_SphericalGaussianLight_t l9_1403=l9_1402;
sc_SphericalGaussianLight_t l9_1404=l9_1403;
float3 l9_1405=l9_1397;
l9_1393.axis=reflect(-l9_1405,l9_1404.axis);
l9_1393.color=l9_1404.color;
l9_1393.sharpness=l9_1404.sharpness;
l9_1393.sharpness/=(4.0*fast::max(dot(l9_1404.axis,l9_1405),9.9999997e-05));
sc_SphericalGaussianLight_t l9_1406=l9_1393;
sc_SphericalGaussianLight_t l9_1407=l9_1406;
sc_SphericalGaussianLight_t l9_1408=l9_1407;
sc_SphericalGaussianLight_t l9_1409=l9_1391;
float l9_1410=length((l9_1408.axis*l9_1408.sharpness)+(l9_1409.axis*l9_1409.sharpness));
float3 l9_1411=(l9_1408.color*exp((l9_1410-l9_1408.sharpness)-l9_1409.sharpness))*l9_1409.color;
float l9_1412=1.0-exp((-2.0)*l9_1410);
float3 l9_1413=((l9_1411*6.2831855)*l9_1412)/float3(l9_1410);
float3 l9_1414=l9_1413;
float3 l9_1415=l9_1407.axis;
float l9_1416=l9_1396*l9_1396;
float l9_1417=dot(l9_1395,l9_1415);
float l9_1418=fast::clamp(l9_1417,0.0,1.0);
float l9_1419=l9_1418;
float l9_1420=dot(l9_1395,l9_1397);
float l9_1421=fast::clamp(l9_1420,0.0,1.0);
float l9_1422=l9_1421;
float3 l9_1423=normalize(l9_1407.axis+l9_1397);
float l9_1424=l9_1416;
float l9_1425=l9_1419;
float l9_1426=1.0/(l9_1425+sqrt(l9_1424+(((1.0-l9_1424)*l9_1425)*l9_1425)));
float l9_1427=l9_1416;
float l9_1428=l9_1422;
float l9_1429=1.0/(l9_1428+sqrt(l9_1427+(((1.0-l9_1427)*l9_1428)*l9_1428)));
l9_1414*=(l9_1426*l9_1429);
float l9_1430=dot(l9_1415,l9_1423);
float l9_1431=fast::clamp(l9_1430,0.0,1.0);
float l9_1432=pow(1.0-l9_1431,5.0);
l9_1414*=(l9_1398+((float3(1.0)-l9_1398)*l9_1432));
l9_1414*=l9_1419;
float3 l9_1433=l9_1414;
l9_1390+=l9_1433;
l9_1394++;
continue;
}
else
{
break;
}
}
float3 l9_1434=l9_1390;
l9_1242+=l9_1434;
}
float3 l9_1435=l9_1242;
l9_1002.indirectSpecular=l9_1435;
LightingComponents l9_1436=l9_1002;
LightingComponents l9_1437=l9_1436;
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_1437.directDiffuse=float3(0.0);
l9_1437.indirectDiffuse=float3(0.0);
float4 l9_1438=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_1439=out.sc_FragData0;
l9_1438=l9_1439;
}
else
{
float4 l9_1440=gl_FragCoord;
float2 l9_1441=l9_1440.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1442=l9_1441;
float2 l9_1443=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_1444=1;
int l9_1445=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1445=0;
}
else
{
l9_1445=in.varStereoViewID;
}
int l9_1446=l9_1445;
int l9_1447=l9_1446;
float3 l9_1448=float3(l9_1442,0.0);
int l9_1449=l9_1444;
int l9_1450=l9_1447;
if (l9_1449==1)
{
l9_1448.y=((2.0*l9_1448.y)+float(l9_1450))-1.0;
}
float2 l9_1451=l9_1448.xy;
l9_1443=l9_1451;
}
else
{
l9_1443=l9_1442;
}
float2 l9_1452=l9_1443;
float2 l9_1453=l9_1452;
float2 l9_1454=l9_1453;
float2 l9_1455=l9_1454;
float l9_1456=0.0;
int l9_1457;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_1458=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1458=0;
}
else
{
l9_1458=in.varStereoViewID;
}
int l9_1459=l9_1458;
l9_1457=1-l9_1459;
}
else
{
int l9_1460=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1460=0;
}
else
{
l9_1460=in.varStereoViewID;
}
int l9_1461=l9_1460;
l9_1457=l9_1461;
}
int l9_1462=l9_1457;
float2 l9_1463=l9_1455;
int l9_1464=sc_ScreenTextureLayout_tmp;
int l9_1465=l9_1462;
float l9_1466=l9_1456;
float2 l9_1467=l9_1463;
int l9_1468=l9_1464;
int l9_1469=l9_1465;
float3 l9_1470=float3(0.0);
if (l9_1468==0)
{
l9_1470=float3(l9_1467,0.0);
}
else
{
if (l9_1468==1)
{
l9_1470=float3(l9_1467.x,(l9_1467.y*0.5)+(0.5-(float(l9_1469)*0.5)),0.0);
}
else
{
l9_1470=float3(l9_1467,float(l9_1469));
}
}
float3 l9_1471=l9_1470;
float3 l9_1472=l9_1471;
float4 l9_1473=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_1472.xy,bias(l9_1466));
float4 l9_1474=l9_1473;
float4 l9_1475=l9_1474;
l9_1438=l9_1475;
}
float4 l9_1476=l9_1438;
float3 l9_1477=l9_1476.xyz;
float3 l9_1478;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_1478=float3(pow(l9_1477.x,2.2),pow(l9_1477.y,2.2),pow(l9_1477.z,2.2));
}
else
{
l9_1478=l9_1477*l9_1477;
}
float3 l9_1479=l9_1478;
float3 l9_1480=l9_1479;
l9_1437.transmitted=l9_1480*mix(float3(1.0),l9_986.albedo,float3(l9_986.opacity));
l9_986.opacity=1.0;
}
bool l9_1481=false;
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_1481=true;
}
SurfaceProperties l9_1482=l9_986;
LightingComponents l9_1483=l9_1437;
bool l9_1484=l9_1481;
float3 l9_1485=l9_1482.albedo*(l9_1483.directDiffuse+(l9_1483.indirectDiffuse*l9_1482.ao));
float3 l9_1486=l9_1483.directSpecular+(l9_1483.indirectSpecular*l9_1482.specularAo);
float3 l9_1487=l9_1482.emissive;
float3 l9_1488=l9_1483.transmitted;
if (l9_1484)
{
float l9_1489=l9_1482.opacity;
l9_1485*=srgbToLinear(l9_1489);
}
float3 l9_1490=((l9_1485+l9_1486)+l9_1487)+l9_1488;
float3 l9_1491=l9_1490;
float4 l9_1492=float4(l9_1491,l9_986.opacity);
if ((int(sc_IsEditor_tmp)!=0))
{
l9_1492.x+=((l9_986.ao.x*l9_986.specularAo.x)*9.9999997e-06);
}
if (!(int(sc_BlendMode_Multiply_tmp)!=0))
{
float3 l9_1493=l9_1492.xyz;
float l9_1494=1.8;
float l9_1495=1.4;
float l9_1496=0.5;
float l9_1497=1.5;
float3 l9_1498=(l9_1493*((l9_1493*l9_1494)+float3(l9_1495)))/((l9_1493*((l9_1493*l9_1494)+float3(l9_1496)))+float3(l9_1497));
l9_1492=float4(l9_1498.x,l9_1498.y,l9_1498.z,l9_1492.w);
}
float3 l9_1499=l9_1492.xyz;
float l9_1500=l9_1499.x;
float l9_1501=l9_1499.y;
float l9_1502=l9_1499.z;
float3 l9_1503=float3(linearToSrgb(l9_1500),linearToSrgb(l9_1501),linearToSrgb(l9_1502));
l9_1492=float4(l9_1503.x,l9_1503.y,l9_1503.z,l9_1492.w);
float4 l9_1504=l9_1492;
param_54=l9_1504;
}
param_54=fast::max(param_54,float4(0.0));
Output_N36=param_54;
float2 ScreenCoord_N26=float2(0.0);
ScreenCoord_N26=Globals.gScreenCoord;
float Depth_N25=0.0;
int l9_1505;
if ((int(bodyDepthTexHasSwappedViews_tmp)!=0))
{
int l9_1506=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1506=0;
}
else
{
l9_1506=in.varStereoViewID;
}
int l9_1507=l9_1506;
l9_1505=1-l9_1507;
}
else
{
int l9_1508=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1508=0;
}
else
{
l9_1508=in.varStereoViewID;
}
int l9_1509=l9_1508;
l9_1505=l9_1509;
}
int l9_1510=l9_1505;
int param_56=bodyDepthTexLayout_tmp;
int param_57=l9_1510;
float2 param_58=ScreenCoord_N26;
bool param_59=(int(SC_USE_UV_TRANSFORM_bodyDepthTex_tmp)!=0);
float3x3 param_60=(*sc_set0.UserUniforms).bodyDepthTexTransform;
int2 param_61=int2(SC_SOFTWARE_WRAP_MODE_U_bodyDepthTex_tmp,SC_SOFTWARE_WRAP_MODE_V_bodyDepthTex_tmp);
bool param_62=(int(SC_USE_UV_MIN_MAX_bodyDepthTex_tmp)!=0);
float4 param_63=(*sc_set0.UserUniforms).bodyDepthTexUvMinMax;
bool param_64=(int(SC_USE_CLAMP_TO_BORDER_bodyDepthTex_tmp)!=0);
float4 param_65=(*sc_set0.UserUniforms).bodyDepthTexBorderColor;
float param_66=0.0;
bool l9_1511=param_64&&(!param_62);
float l9_1512=1.0;
float l9_1513=param_58.x;
int l9_1514=param_61.x;
if (l9_1514==1)
{
l9_1513=fract(l9_1513);
}
else
{
if (l9_1514==2)
{
float l9_1515=fract(l9_1513);
float l9_1516=l9_1513-l9_1515;
float l9_1517=step(0.25,fract(l9_1516*0.5));
l9_1513=mix(l9_1515,1.0-l9_1515,fast::clamp(l9_1517,0.0,1.0));
}
}
param_58.x=l9_1513;
float l9_1518=param_58.y;
int l9_1519=param_61.y;
if (l9_1519==1)
{
l9_1518=fract(l9_1518);
}
else
{
if (l9_1519==2)
{
float l9_1520=fract(l9_1518);
float l9_1521=l9_1518-l9_1520;
float l9_1522=step(0.25,fract(l9_1521*0.5));
l9_1518=mix(l9_1520,1.0-l9_1520,fast::clamp(l9_1522,0.0,1.0));
}
}
param_58.y=l9_1518;
if (param_62)
{
bool l9_1523=param_64;
bool l9_1524;
if (l9_1523)
{
l9_1524=param_61.x==3;
}
else
{
l9_1524=l9_1523;
}
float l9_1525=param_58.x;
float l9_1526=param_63.x;
float l9_1527=param_63.z;
bool l9_1528=l9_1524;
float l9_1529=l9_1512;
float l9_1530=fast::clamp(l9_1525,l9_1526,l9_1527);
float l9_1531=step(abs(l9_1525-l9_1530),9.9999997e-06);
l9_1529*=(l9_1531+((1.0-float(l9_1528))*(1.0-l9_1531)));
l9_1525=l9_1530;
param_58.x=l9_1525;
l9_1512=l9_1529;
bool l9_1532=param_64;
bool l9_1533;
if (l9_1532)
{
l9_1533=param_61.y==3;
}
else
{
l9_1533=l9_1532;
}
float l9_1534=param_58.y;
float l9_1535=param_63.y;
float l9_1536=param_63.w;
bool l9_1537=l9_1533;
float l9_1538=l9_1512;
float l9_1539=fast::clamp(l9_1534,l9_1535,l9_1536);
float l9_1540=step(abs(l9_1534-l9_1539),9.9999997e-06);
l9_1538*=(l9_1540+((1.0-float(l9_1537))*(1.0-l9_1540)));
l9_1534=l9_1539;
param_58.y=l9_1534;
l9_1512=l9_1538;
}
float2 l9_1541=param_58;
bool l9_1542=param_59;
float3x3 l9_1543=param_60;
if (l9_1542)
{
l9_1541=float2((l9_1543*float3(l9_1541,1.0)).xy);
}
float2 l9_1544=l9_1541;
param_58=l9_1544;
float l9_1545=param_58.x;
int l9_1546=param_61.x;
bool l9_1547=l9_1511;
float l9_1548=l9_1512;
if ((l9_1546==0)||(l9_1546==3))
{
float l9_1549=l9_1545;
float l9_1550=0.0;
float l9_1551=1.0;
bool l9_1552=l9_1547;
float l9_1553=l9_1548;
float l9_1554=fast::clamp(l9_1549,l9_1550,l9_1551);
float l9_1555=step(abs(l9_1549-l9_1554),9.9999997e-06);
l9_1553*=(l9_1555+((1.0-float(l9_1552))*(1.0-l9_1555)));
l9_1549=l9_1554;
l9_1545=l9_1549;
l9_1548=l9_1553;
}
param_58.x=l9_1545;
l9_1512=l9_1548;
float l9_1556=param_58.y;
int l9_1557=param_61.y;
bool l9_1558=l9_1511;
float l9_1559=l9_1512;
if ((l9_1557==0)||(l9_1557==3))
{
float l9_1560=l9_1556;
float l9_1561=0.0;
float l9_1562=1.0;
bool l9_1563=l9_1558;
float l9_1564=l9_1559;
float l9_1565=fast::clamp(l9_1560,l9_1561,l9_1562);
float l9_1566=step(abs(l9_1560-l9_1565),9.9999997e-06);
l9_1564*=(l9_1566+((1.0-float(l9_1563))*(1.0-l9_1566)));
l9_1560=l9_1565;
l9_1556=l9_1560;
l9_1559=l9_1564;
}
param_58.y=l9_1556;
l9_1512=l9_1559;
float2 l9_1567=param_58;
int l9_1568=param_56;
int l9_1569=param_57;
float l9_1570=param_66;
float2 l9_1571=l9_1567;
int l9_1572=l9_1568;
int l9_1573=l9_1569;
float3 l9_1574=float3(0.0);
if (l9_1572==0)
{
l9_1574=float3(l9_1571,0.0);
}
else
{
if (l9_1572==1)
{
l9_1574=float3(l9_1571.x,(l9_1571.y*0.5)+(0.5-(float(l9_1573)*0.5)),0.0);
}
else
{
l9_1574=float3(l9_1571,float(l9_1573));
}
}
float3 l9_1575=l9_1574;
float3 l9_1576=l9_1575;
float4 l9_1577=sc_set0.bodyDepthTex.sample(sc_set0.bodyDepthTexSmpSC,l9_1576.xy,bias(l9_1570));
float4 l9_1578=l9_1577;
if (param_64)
{
l9_1578=mix(param_65,l9_1578,float4(l9_1512));
}
float4 l9_1579=l9_1578;
float param_67=l9_1579.x;
float4 param_68=(*sc_set0.UserUniforms).bodyDepthTexProjectionMatrixTerms;
float l9_1580=param_68.x;
float l9_1581=param_68.y;
bool l9_1582=param_68.z==0.0;
param_67=(param_67*2.0)-1.0;
float l9_1583;
if (l9_1582)
{
l9_1583=(param_67-l9_1581)/l9_1580;
}
else
{
l9_1583=l9_1581/((-param_67)-l9_1580);
}
float l9_1584=l9_1583;
Depth_N25=l9_1584;
float Depth_N29=0.0;
float l9_1585=(*sc_set0.UserUniforms).sc_Camera.clipPlanes.x;
float l9_1586=(*sc_set0.UserUniforms).sc_Camera.clipPlanes.y;
float4 l9_1587=gl_FragCoord;
float param_69=(l9_1586*l9_1585)/(l9_1586+(l9_1587.z*(l9_1585-l9_1586)));
Depth_N29=param_69;
float4 Result_N22=float4(0.0);
float param_70=Output_N24;
float4 param_71=Output_N36;
float param_72=Depth_N25;
float param_73=Depth_N29;
ssGlobals param_75=Globals;
tempGlobals=param_75;
float4 param_74=float4(0.0);
N22_EnableBodyDepth=param_70;
N22_OceanColor=param_71;
N22_BodyDepth=param_72;
N22_cameraDepth=param_73;
float l9_1588=N22_BodyDepth-(1.0-N22_cameraDepth);
float l9_1589=l9_1588*0.035;
float l9_1590=100.0;
float l9_1591;
if (l9_1589<=0.0)
{
l9_1591=0.0;
}
else
{
l9_1591=pow(l9_1589,l9_1590);
}
float l9_1592=l9_1591;
l9_1588=1.0-fast::clamp(l9_1592,0.0,1.0);
if ((N22_EnableBodyDepth==1.0)&&(l9_1588<1.0))
{
discard_fragment();
}
N22_Result=N22_OceanColor;
param_74=N22_Result;
Result_N22=param_74;
FinalColor=Result_N22;
float4 param_76=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_1593=param_76;
float4 l9_1594=l9_1593;
float l9_1595=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_1595=l9_1594.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_1595=fast::clamp(l9_1594.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_1595=fast::clamp(dot(l9_1594.xyz,float3(l9_1594.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_1595=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_1595=(1.0-dot(l9_1594.xyz,float3(0.33333001)))*l9_1594.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_1595=(1.0-fast::clamp(dot(l9_1594.xyz,float3(1.0)),0.0,1.0))*l9_1594.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_1595=fast::clamp(dot(l9_1594.xyz,float3(1.0)),0.0,1.0)*l9_1594.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_1595=fast::clamp(dot(l9_1594.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_1595=fast::clamp(dot(l9_1594.xyz,float3(1.0)),0.0,1.0)*l9_1594.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_1595=dot(l9_1594.xyz,float3(0.33333001))*l9_1594.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_1595=1.0-fast::clamp(dot(l9_1594.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_1595=fast::clamp(dot(l9_1594.xyz,float3(1.0)),0.0,1.0);
}
}
}
}
}
}
}
}
}
}
}
}
float l9_1596=l9_1595;
float l9_1597=l9_1596;
float l9_1598=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_1597;
float3 l9_1599=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_1593.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_1600=float4(l9_1599.x,l9_1599.y,l9_1599.z,l9_1598);
param_76=l9_1600;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_76=float4(param_76.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_1601=param_76;
float4 l9_1602=float4(0.0);
float4 l9_1603=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_1604=out.sc_FragData0;
l9_1603=l9_1604;
}
else
{
float4 l9_1605=gl_FragCoord;
float2 l9_1606=l9_1605.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1607=l9_1606;
float2 l9_1608=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_1609=1;
int l9_1610=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1610=0;
}
else
{
l9_1610=in.varStereoViewID;
}
int l9_1611=l9_1610;
int l9_1612=l9_1611;
float3 l9_1613=float3(l9_1607,0.0);
int l9_1614=l9_1609;
int l9_1615=l9_1612;
if (l9_1614==1)
{
l9_1613.y=((2.0*l9_1613.y)+float(l9_1615))-1.0;
}
float2 l9_1616=l9_1613.xy;
l9_1608=l9_1616;
}
else
{
l9_1608=l9_1607;
}
float2 l9_1617=l9_1608;
float2 l9_1618=l9_1617;
float2 l9_1619=l9_1618;
float2 l9_1620=l9_1619;
float l9_1621=0.0;
int l9_1622;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_1623=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1623=0;
}
else
{
l9_1623=in.varStereoViewID;
}
int l9_1624=l9_1623;
l9_1622=1-l9_1624;
}
else
{
int l9_1625=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1625=0;
}
else
{
l9_1625=in.varStereoViewID;
}
int l9_1626=l9_1625;
l9_1622=l9_1626;
}
int l9_1627=l9_1622;
float2 l9_1628=l9_1620;
int l9_1629=sc_ScreenTextureLayout_tmp;
int l9_1630=l9_1627;
float l9_1631=l9_1621;
float2 l9_1632=l9_1628;
int l9_1633=l9_1629;
int l9_1634=l9_1630;
float3 l9_1635=float3(0.0);
if (l9_1633==0)
{
l9_1635=float3(l9_1632,0.0);
}
else
{
if (l9_1633==1)
{
l9_1635=float3(l9_1632.x,(l9_1632.y*0.5)+(0.5-(float(l9_1634)*0.5)),0.0);
}
else
{
l9_1635=float3(l9_1632,float(l9_1634));
}
}
float3 l9_1636=l9_1635;
float3 l9_1637=l9_1636;
float4 l9_1638=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_1637.xy,bias(l9_1631));
float4 l9_1639=l9_1638;
float4 l9_1640=l9_1639;
l9_1603=l9_1640;
}
float4 l9_1641=l9_1603;
float3 l9_1642=l9_1641.xyz;
float3 l9_1643=l9_1642;
float3 l9_1644=l9_1601.xyz;
float3 l9_1645=definedBlend(l9_1643,l9_1644,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_1602=float4(l9_1645.x,l9_1645.y,l9_1645.z,l9_1602.w);
float3 l9_1646=mix(l9_1642,l9_1602.xyz,float3(l9_1601.w));
l9_1602=float4(l9_1646.x,l9_1646.y,l9_1646.z,l9_1602.w);
l9_1602.w=1.0;
float4 l9_1647=l9_1602;
param_76=l9_1647;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_1648=float4(in.varScreenPos.xyz,1.0);
param_76=l9_1648;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_1649=gl_FragCoord;
float l9_1650=fast::clamp(abs(l9_1649.z),0.0,1.0);
float4 l9_1651=float4(l9_1650,1.0-l9_1650,1.0,1.0);
param_76=l9_1651;
}
else
{
float4 l9_1652=param_76;
float4 l9_1653=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_1653=float4(mix(float3(1.0),l9_1652.xyz,float3(l9_1652.w)),l9_1652.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_1654=l9_1652.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_1654=fast::clamp(l9_1654,0.0,1.0);
}
l9_1653=float4(l9_1652.xyz*l9_1654,l9_1654);
}
else
{
l9_1653=l9_1652;
}
}
float4 l9_1655=l9_1653;
param_76=l9_1655;
}
}
}
}
}
float4 l9_1656=param_76;
FinalColor=l9_1656;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
if (PreviewInfo.Saved)
{
FinalColor=float4(PreviewInfo.Color);
}
else
{
FinalColor=float4(0.0);
}
}
float4 l9_1657=float4(0.0);
l9_1657=float4(0.0);
float4 l9_1658=l9_1657;
float4 Cost=l9_1658;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float4 param_77=FinalColor;
FinalColor=sc_OutputMotionVectorIfNeeded(param_77,in.varPosAndMotion,in.varNormalAndMotion);
float4 param_78=FinalColor;
float4 l9_1659=param_78;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_1659.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.sc_FragData0=l9_1659;
return out;
}
} // FRAGMENT SHADER

namespace SNAP_RECV {
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float2 N7_TransformedUV2;
float2 N7_TransformedUV3;
float3 BumpedNormal;
float3 ViewDirWS;
float3 PositionWS;
float3 VertexNormal_WorldSpace;
float3 VertexTangent_WorldSpace;
float3 VertexBinormal_WorldSpace;
float2 Surface_UVCoord0;
float2 Surface_UVCoord1;
float4 VertexColor;
float2 gScreenCoord;
float3 SurfacePosition_WorldSpace;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int sc_RayTracingReceiverEffectsMask;
float4 sc_RayTracingReflectionsSize;
float4 sc_RayTracingReflectionsDims;
float4 sc_RayTracingReflectionsView;
float4 sc_RayTracingGlobalIlluminationSize;
float4 sc_RayTracingGlobalIlluminationDims;
float4 sc_RayTracingGlobalIlluminationView;
float4 sc_RayTracingShadowsSize;
float4 sc_RayTracingShadowsDims;
float4 sc_RayTracingShadowsView;
float3 sc_RayTracingOriginScale;
uint sc_RayTracingReceiverMask;
float3 sc_RayTracingOriginScaleInv;
float3 sc_RayTracingOriginOffset;
uint sc_RayTracingReceiverId;
float4 voxelization_params_0;
float4 voxelization_params_frustum_lrbt;
float4 voxelization_params_frustum_nf;
float3 voxelization_params_camera_pos;
float4x4 sc_ModelMatrixVoxelization;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float3 oceanPos;
float4 heightmapSize;
float4 heightmapDims;
float4 heightmapView;
float3x3 heightmapTransform;
float4 heightmapUvMinMax;
float4 heightmapBorderColor;
float2 unpackVal;
float3 oceanMin;
float3 oceanMax;
float enableFluid;
float2 pressureRange;
float4 fluidPressureSize;
float4 fluidPressureDims;
float4 fluidPressureView;
float3x3 fluidPressureTransform;
float4 fluidPressureUvMinMax;
float4 fluidPressureBorderColor;
float fluidMul;
float speed;
float bodyIntersection;
float4 baseColor;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float3 recolorRed;
float3 recolorGreen;
float3 recolorBlue;
float4 opacityTexSize;
float4 opacityTexDims;
float4 opacityTexView;
float3x3 opacityTexTransform;
float4 opacityTexUvMinMax;
float4 opacityTexBorderColor;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float4 detailNormalTexSize;
float4 detailNormalTexDims;
float4 detailNormalTexView;
float3x3 detailNormalTexTransform;
float4 detailNormalTexUvMinMax;
float4 detailNormalTexBorderColor;
float4 emissiveTexSize;
float4 emissiveTexDims;
float4 emissiveTexView;
float3x3 emissiveTexTransform;
float4 emissiveTexUvMinMax;
float4 emissiveTexBorderColor;
float3 emissiveColor;
float emissiveIntensity;
float4 reflectionTexSize;
float4 reflectionTexDims;
float4 reflectionTexView;
float3x3 reflectionTexTransform;
float4 reflectionTexUvMinMax;
float4 reflectionTexBorderColor;
float reflectionIntensity;
float4 reflectionModulationTexSize;
float4 reflectionModulationTexDims;
float4 reflectionModulationTexView;
float3x3 reflectionModulationTexTransform;
float4 reflectionModulationTexUvMinMax;
float4 reflectionModulationTexBorderColor;
float3 rimColor;
float rimIntensity;
float rimExponent;
float4 rimColorTexSize;
float4 rimColorTexDims;
float4 rimColorTexView;
float3x3 rimColorTexTransform;
float4 rimColorTexUvMinMax;
float4 rimColorTexBorderColor;
float metallic;
float roughness;
float4 materialParamsTexSize;
float4 materialParamsTexDims;
float4 materialParamsTexView;
float3x3 materialParamsTexTransform;
float4 materialParamsTexUvMinMax;
float4 materialParamsTexBorderColor;
float specularAoIntensity;
float specularAoDarkening;
float2 uv2Scale;
float2 uv2Offset;
float2 uv3Scale;
float2 uv3Offset;
float4 bodyDepthTexSize;
float4 bodyDepthTexDims;
float4 bodyDepthTexView;
float3x3 bodyDepthTexTransform;
float4 bodyDepthTexUvMinMax;
float4 bodyDepthTexBorderColor;
float4 bodyDepthTexProjectionMatrixTerms;
float Port_BobPosSpeed_N153;
float Port_BobPosAmount_N153;
float Port_BobRotSpeed_N153;
float Port_BobRotAmount_N153;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct sc_Set0
{
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> baseTex [[id(1)]];
texture2d<float> bodyDepthTex [[id(2)]];
texture2d<float> detailNormalTex [[id(3)]];
texture2d<float> emissiveTex [[id(4)]];
texture2d<float> fluidPressure [[id(5)]];
texture2d<float> heightmap [[id(6)]];
texture2d<float> intensityTexture [[id(7)]];
texture2d<float> materialParamsTex [[id(8)]];
texture2d<float> normalTex [[id(9)]];
texture2d<float> opacityTex [[id(10)]];
texture2d<float> reflectionModulationTex [[id(11)]];
texture2d<float> reflectionTex [[id(12)]];
texture2d<float> rimColorTex [[id(13)]];
texture2d<float> sc_EnvmapDiffuse [[id(14)]];
texture2d<float> sc_EnvmapSpecular [[id(15)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(24)]];
texture2d<float> sc_RayTracingReflections [[id(25)]];
texture2d<float> sc_RayTracingShadows [[id(26)]];
texture2d<float> sc_SSAOTexture [[id(27)]];
texture2d<float> sc_ScreenTexture [[id(28)]];
texture2d<float> sc_ShadowTexture [[id(29)]];
sampler baseTexSmpSC [[id(31)]];
sampler bodyDepthTexSmpSC [[id(32)]];
sampler detailNormalTexSmpSC [[id(33)]];
sampler emissiveTexSmpSC [[id(34)]];
sampler fluidPressureSmpSC [[id(35)]];
sampler heightmapSmpSC [[id(36)]];
sampler intensityTextureSmpSC [[id(37)]];
sampler materialParamsTexSmpSC [[id(38)]];
sampler normalTexSmpSC [[id(39)]];
sampler opacityTexSmpSC [[id(40)]];
sampler reflectionModulationTexSmpSC [[id(41)]];
sampler reflectionTexSmpSC [[id(42)]];
sampler rimColorTexSmpSC [[id(43)]];
sampler sc_EnvmapDiffuseSmpSC [[id(44)]];
sampler sc_EnvmapSpecularSmpSC [[id(45)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(47)]];
sampler sc_RayTracingReflectionsSmpSC [[id(48)]];
sampler sc_RayTracingShadowsSmpSC [[id(49)]];
sampler sc_SSAOTextureSmpSC [[id(50)]];
sampler sc_ScreenTextureSmpSC [[id(51)]];
sampler sc_ShadowTextureSmpSC [[id(52)]];
constant userUniformsObj* UserUniforms [[id(54)]];
};
struct main_recv_out
{
uint4 sc_RayTracingPositionAndMask [[color(0)]];
uint4 sc_RayTracingNormalAndMore [[color(1)]];
};
struct main_recv_in
{
float4 varPosAndMotion [[user(locn0)]];
float4 varNormalAndMotion [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varTex01 [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
fragment main_recv_out main_recv(main_recv_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]])
{
main_recv_out out={};
float N22_EnableBodyDepth=0.0;
float N22_BodyDepth=0.0;
float N22_cameraDepth=0.0;
int N7_VertexColorSwitch=0;
float4 N7_BaseColorValue=float4(0.0);
bool N7_EnableBaseTexture=false;
int N7_BaseTextureUVSwitch=0;
bool N7_EnableRecolor=false;
float3 N7_RecolorR=float3(0.0);
float3 N7_RecolorG=float3(0.0);
float3 N7_RecolorB=float3(0.0);
bool N7_EnableOpacityTexture=false;
int N7_OpacityUVSwitch=0;
bool N7_EnableNormalTexture=false;
int N7_NormalUVSwitch=0;
bool N7_EnableDetailNormal=false;
int N7_Detail_NormalUVSwitch=0;
bool N7_EnableMaterialParamsTexture=false;
float N7_RoughnessValue=0.0;
int N7_MaterialParamsUVSwitch=0;
bool N7_EnableUV2=false;
int N7_UV2Switch=0;
float2 N7_UV2Scale=float2(0.0);
float2 N7_UV2Offset=float2(0.0);
bool N7_UV2Animation=false;
bool N7_EnableUV3=false;
int N7_UV3Switch=0;
float2 N7_UV3Scale=float2(0.0);
float2 N7_UV3Offset=float2(0.0);
bool N7_UV3Animation=false;
float4 N7_Albedo=float4(0.0);
float N7_Opacity=0.0;
float3 N7_Normal=float3(0.0);
float N7_Roughness=0.0;
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPosAndMotion.xyz);
Globals.PositionWS=in.varPosAndMotion.xyz;
Globals.VertexNormal_WorldSpace=normalize(in.varNormalAndMotion.xyz);
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
Globals.Surface_UVCoord0=in.varTex01.xy;
Globals.Surface_UVCoord1=in.varTex01.zw;
Globals.VertexColor=in.varColor;
float4 l9_0=gl_FragCoord;
float2 l9_1=l9_0.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2=l9_1;
float2 l9_3=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_4=1;
int l9_5=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5=0;
}
else
{
l9_5=in.varStereoViewID;
}
int l9_6=l9_5;
int l9_7=l9_6;
float3 l9_8=float3(l9_2,0.0);
int l9_9=l9_4;
int l9_10=l9_7;
if (l9_9==1)
{
l9_8.y=((2.0*l9_8.y)+float(l9_10))-1.0;
}
float2 l9_11=l9_8.xy;
l9_3=l9_11;
}
else
{
l9_3=l9_2;
}
float2 l9_12=l9_3;
float2 l9_13=l9_12;
Globals.gScreenCoord=l9_13;
Globals.SurfacePosition_WorldSpace=in.varPosAndMotion.xyz;
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
float Output_N24=0.0;
float param=(*sc_set0.UserUniforms).bodyIntersection;
Output_N24=param;
float4 Output_N5=float4(0.0);
float4 param_1=(*sc_set0.UserUniforms).baseColor;
Output_N5=param_1;
float3 Output_N85=float3(0.0);
float3 param_2=(*sc_set0.UserUniforms).recolorRed;
Output_N85=param_2;
float3 Output_N86=float3(0.0);
float3 param_3=(*sc_set0.UserUniforms).recolorGreen;
Output_N86=param_3;
float3 Output_N87=float3(0.0);
float3 param_4=(*sc_set0.UserUniforms).recolorBlue;
Output_N87=param_4;
float Output_N243=0.0;
float param_5=(*sc_set0.UserUniforms).roughness;
Output_N243=param_5;
float2 Output_N14=float2(0.0);
float2 param_6=(*sc_set0.UserUniforms).uv2Scale;
Output_N14=param_6;
float2 Output_N15=float2(0.0);
float2 param_7=(*sc_set0.UserUniforms).uv2Offset;
Output_N15=param_7;
float2 Output_N50=float2(0.0);
float2 param_8=(*sc_set0.UserUniforms).uv3Scale;
Output_N50=param_8;
float2 Output_N51=float2(0.0);
float2 param_9=(*sc_set0.UserUniforms).uv3Offset;
Output_N51=param_9;
float Opacity_N7=0.0;
float3 Normal_N7=float3(0.0);
float Roughness_N7=0.0;
float4 param_10=Output_N5;
float3 param_11=Output_N85;
float3 param_12=Output_N86;
float3 param_13=Output_N87;
float param_14=Output_N243;
float2 param_15=Output_N14;
float2 param_16=Output_N15;
float2 param_17=Output_N50;
float2 param_18=Output_N51;
ssGlobals param_22=Globals;
ssGlobals tempGlobals=param_22;
float param_19=0.0;
float3 param_20=float3(0.0);
float param_21=0.0;
N7_VertexColorSwitch=NODE_38_DROPLIST_ITEM_tmp;
N7_BaseColorValue=param_10;
N7_EnableBaseTexture=(int(ENABLE_BASE_TEX_tmp)!=0);
N7_BaseTextureUVSwitch=NODE_27_DROPLIST_ITEM_tmp;
N7_EnableRecolor=(int(ENABLE_RECOLOR_tmp)!=0);
N7_RecolorR=param_11;
N7_RecolorG=param_12;
N7_RecolorB=param_13;
N7_EnableOpacityTexture=(int(ENABLE_OPACITY_TEX_tmp)!=0);
N7_OpacityUVSwitch=NODE_69_DROPLIST_ITEM_tmp;
N7_EnableNormalTexture=(int(ENABLE_NORMALMAP_tmp)!=0);
N7_NormalUVSwitch=NODE_181_DROPLIST_ITEM_tmp;
N7_EnableDetailNormal=(int(ENABLE_DETAIL_NORMAL_tmp)!=0);
N7_Detail_NormalUVSwitch=NODE_184_DROPLIST_ITEM_tmp;
N7_EnableMaterialParamsTexture=(int(ENABLE_MATERIAL_PARAM_TEX_tmp)!=0);
N7_RoughnessValue=param_14;
N7_MaterialParamsUVSwitch=NODE_221_DROPLIST_ITEM_tmp;
N7_EnableUV2=(int(ENABLE_UV2_tmp)!=0);
N7_UV2Switch=NODE_13_DROPLIST_ITEM_tmp;
N7_UV2Scale=param_15;
N7_UV2Offset=param_16;
N7_UV2Animation=(int(uv2EnableAnimation_tmp)!=0);
N7_EnableUV3=(int(ENABLE_UV3_tmp)!=0);
N7_UV3Switch=NODE_49_DROPLIST_ITEM_tmp;
N7_UV3Scale=param_17;
N7_UV3Offset=param_18;
N7_UV3Animation=(int(uv3EnableAnimation_tmp)!=0);
int l9_14=N7_UV2Switch;
float2 l9_15=N7_UV2Scale;
float2 l9_16=N7_UV2Offset;
bool l9_17=N7_UV2Animation;
bool l9_18=N7_EnableUV2;
float2 l9_19=tempGlobals.Surface_UVCoord0;
float2 l9_20=l9_19;
if (l9_18==N7_EnableUV2)
{
if (l9_14==0)
{
float2 l9_21=tempGlobals.Surface_UVCoord0;
l9_20=l9_21;
}
if (l9_14==1)
{
float2 l9_22=tempGlobals.Surface_UVCoord1;
l9_20=l9_22;
}
if (l9_14==2)
{
float2 l9_23=tempGlobals.gScreenCoord;
l9_20=l9_23;
}
}
else
{
if (l9_14==0)
{
float2 l9_24=tempGlobals.Surface_UVCoord0;
l9_20=l9_24;
}
if (l9_14==1)
{
float2 l9_25=tempGlobals.Surface_UVCoord1;
l9_20=l9_25;
}
if (l9_14==2)
{
float2 l9_26=tempGlobals.gScreenCoord;
l9_20=l9_26;
}
if (l9_14==3)
{
l9_20=tempGlobals.N7_TransformedUV2;
}
}
l9_20=(l9_20*l9_15)+l9_16;
if (l9_17)
{
float l9_27=tempGlobals.gTimeElapsed;
l9_20+=(l9_16*l9_27);
}
float2 l9_28=l9_20;
tempGlobals.N7_TransformedUV2=l9_28;
int l9_29=N7_UV3Switch;
float2 l9_30=N7_UV3Scale;
float2 l9_31=N7_UV3Offset;
bool l9_32=N7_UV3Animation;
bool l9_33=N7_EnableUV3;
float2 l9_34=tempGlobals.Surface_UVCoord0;
float2 l9_35=l9_34;
if (l9_33==N7_EnableUV2)
{
if (l9_29==0)
{
float2 l9_36=tempGlobals.Surface_UVCoord0;
l9_35=l9_36;
}
if (l9_29==1)
{
float2 l9_37=tempGlobals.Surface_UVCoord1;
l9_35=l9_37;
}
if (l9_29==2)
{
float2 l9_38=tempGlobals.gScreenCoord;
l9_35=l9_38;
}
}
else
{
if (l9_29==0)
{
float2 l9_39=tempGlobals.Surface_UVCoord0;
l9_35=l9_39;
}
if (l9_29==1)
{
float2 l9_40=tempGlobals.Surface_UVCoord1;
l9_35=l9_40;
}
if (l9_29==2)
{
float2 l9_41=tempGlobals.gScreenCoord;
l9_35=l9_41;
}
if (l9_29==3)
{
l9_35=tempGlobals.N7_TransformedUV2;
}
}
l9_35=(l9_35*l9_30)+l9_31;
if (l9_32)
{
float l9_42=tempGlobals.gTimeElapsed;
l9_35+=(l9_31*l9_42);
}
float2 l9_43=l9_35;
tempGlobals.N7_TransformedUV3=l9_43;
float2 l9_44=tempGlobals.Surface_UVCoord0;
float2 l9_45=l9_44;
float2 l9_46=tempGlobals.Surface_UVCoord0;
float2 l9_47=l9_46;
N7_Opacity=1.0;
N7_Albedo=N7_BaseColorValue;
if (N7_EnableBaseTexture)
{
int l9_48=N7_BaseTextureUVSwitch;
float2 l9_49=tempGlobals.Surface_UVCoord0;
float2 l9_50=l9_49;
if (l9_48==0)
{
float2 l9_51=tempGlobals.Surface_UVCoord0;
l9_50=l9_51;
}
if (l9_48==1)
{
float2 l9_52=tempGlobals.Surface_UVCoord1;
l9_50=l9_52;
}
if (l9_48==2)
{
l9_50=tempGlobals.N7_TransformedUV2;
}
if (l9_48==3)
{
l9_50=tempGlobals.N7_TransformedUV3;
}
float2 l9_53=l9_50;
l9_45=l9_53;
float2 l9_54=l9_45;
float4 l9_55=float4(0.0);
int l9_56;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_57=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_57=0;
}
else
{
l9_57=in.varStereoViewID;
}
int l9_58=l9_57;
l9_56=1-l9_58;
}
else
{
int l9_59=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_59=0;
}
else
{
l9_59=in.varStereoViewID;
}
int l9_60=l9_59;
l9_56=l9_60;
}
int l9_61=l9_56;
int l9_62=baseTexLayout_tmp;
int l9_63=l9_61;
float2 l9_64=l9_54;
bool l9_65=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_66=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_67=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_68=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_69=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_70=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_71=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_72=0.0;
bool l9_73=l9_70&&(!l9_68);
float l9_74=1.0;
float l9_75=l9_64.x;
int l9_76=l9_67.x;
if (l9_76==1)
{
l9_75=fract(l9_75);
}
else
{
if (l9_76==2)
{
float l9_77=fract(l9_75);
float l9_78=l9_75-l9_77;
float l9_79=step(0.25,fract(l9_78*0.5));
l9_75=mix(l9_77,1.0-l9_77,fast::clamp(l9_79,0.0,1.0));
}
}
l9_64.x=l9_75;
float l9_80=l9_64.y;
int l9_81=l9_67.y;
if (l9_81==1)
{
l9_80=fract(l9_80);
}
else
{
if (l9_81==2)
{
float l9_82=fract(l9_80);
float l9_83=l9_80-l9_82;
float l9_84=step(0.25,fract(l9_83*0.5));
l9_80=mix(l9_82,1.0-l9_82,fast::clamp(l9_84,0.0,1.0));
}
}
l9_64.y=l9_80;
if (l9_68)
{
bool l9_85=l9_70;
bool l9_86;
if (l9_85)
{
l9_86=l9_67.x==3;
}
else
{
l9_86=l9_85;
}
float l9_87=l9_64.x;
float l9_88=l9_69.x;
float l9_89=l9_69.z;
bool l9_90=l9_86;
float l9_91=l9_74;
float l9_92=fast::clamp(l9_87,l9_88,l9_89);
float l9_93=step(abs(l9_87-l9_92),9.9999997e-06);
l9_91*=(l9_93+((1.0-float(l9_90))*(1.0-l9_93)));
l9_87=l9_92;
l9_64.x=l9_87;
l9_74=l9_91;
bool l9_94=l9_70;
bool l9_95;
if (l9_94)
{
l9_95=l9_67.y==3;
}
else
{
l9_95=l9_94;
}
float l9_96=l9_64.y;
float l9_97=l9_69.y;
float l9_98=l9_69.w;
bool l9_99=l9_95;
float l9_100=l9_74;
float l9_101=fast::clamp(l9_96,l9_97,l9_98);
float l9_102=step(abs(l9_96-l9_101),9.9999997e-06);
l9_100*=(l9_102+((1.0-float(l9_99))*(1.0-l9_102)));
l9_96=l9_101;
l9_64.y=l9_96;
l9_74=l9_100;
}
float2 l9_103=l9_64;
bool l9_104=l9_65;
float3x3 l9_105=l9_66;
if (l9_104)
{
l9_103=float2((l9_105*float3(l9_103,1.0)).xy);
}
float2 l9_106=l9_103;
l9_64=l9_106;
float l9_107=l9_64.x;
int l9_108=l9_67.x;
bool l9_109=l9_73;
float l9_110=l9_74;
if ((l9_108==0)||(l9_108==3))
{
float l9_111=l9_107;
float l9_112=0.0;
float l9_113=1.0;
bool l9_114=l9_109;
float l9_115=l9_110;
float l9_116=fast::clamp(l9_111,l9_112,l9_113);
float l9_117=step(abs(l9_111-l9_116),9.9999997e-06);
l9_115*=(l9_117+((1.0-float(l9_114))*(1.0-l9_117)));
l9_111=l9_116;
l9_107=l9_111;
l9_110=l9_115;
}
l9_64.x=l9_107;
l9_74=l9_110;
float l9_118=l9_64.y;
int l9_119=l9_67.y;
bool l9_120=l9_73;
float l9_121=l9_74;
if ((l9_119==0)||(l9_119==3))
{
float l9_122=l9_118;
float l9_123=0.0;
float l9_124=1.0;
bool l9_125=l9_120;
float l9_126=l9_121;
float l9_127=fast::clamp(l9_122,l9_123,l9_124);
float l9_128=step(abs(l9_122-l9_127),9.9999997e-06);
l9_126*=(l9_128+((1.0-float(l9_125))*(1.0-l9_128)));
l9_122=l9_127;
l9_118=l9_122;
l9_121=l9_126;
}
l9_64.y=l9_118;
l9_74=l9_121;
float2 l9_129=l9_64;
int l9_130=l9_62;
int l9_131=l9_63;
float l9_132=l9_72;
float2 l9_133=l9_129;
int l9_134=l9_130;
int l9_135=l9_131;
float3 l9_136=float3(0.0);
if (l9_134==0)
{
l9_136=float3(l9_133,0.0);
}
else
{
if (l9_134==1)
{
l9_136=float3(l9_133.x,(l9_133.y*0.5)+(0.5-(float(l9_135)*0.5)),0.0);
}
else
{
l9_136=float3(l9_133,float(l9_135));
}
}
float3 l9_137=l9_136;
float3 l9_138=l9_137;
float4 l9_139=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_138.xy,bias(l9_132));
float4 l9_140=l9_139;
if (l9_70)
{
l9_140=mix(l9_71,l9_140,float4(l9_74));
}
float4 l9_141=l9_140;
l9_55=l9_141;
float4 l9_142=l9_55;
N7_Albedo*=l9_142;
}
if (N7_EnableRecolor)
{
float3 l9_143=((N7_RecolorR*N7_Albedo.x)+(N7_RecolorG*N7_Albedo.y))+(N7_RecolorB*N7_Albedo.z);
N7_Albedo=float4(l9_143.x,l9_143.y,l9_143.z,N7_Albedo.w);
}
if (N7_EnableOpacityTexture)
{
int l9_144=N7_OpacityUVSwitch;
float2 l9_145=tempGlobals.Surface_UVCoord0;
float2 l9_146=l9_145;
if (l9_144==0)
{
float2 l9_147=tempGlobals.Surface_UVCoord0;
l9_146=l9_147;
}
if (l9_144==1)
{
float2 l9_148=tempGlobals.Surface_UVCoord1;
l9_146=l9_148;
}
if (l9_144==2)
{
l9_146=tempGlobals.N7_TransformedUV2;
}
if (l9_144==3)
{
l9_146=tempGlobals.N7_TransformedUV3;
}
float2 l9_149=l9_146;
l9_47=l9_149;
float2 l9_150=l9_47;
float4 l9_151=float4(0.0);
int l9_152;
if ((int(opacityTexHasSwappedViews_tmp)!=0))
{
int l9_153=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_153=0;
}
else
{
l9_153=in.varStereoViewID;
}
int l9_154=l9_153;
l9_152=1-l9_154;
}
else
{
int l9_155=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_155=0;
}
else
{
l9_155=in.varStereoViewID;
}
int l9_156=l9_155;
l9_152=l9_156;
}
int l9_157=l9_152;
int l9_158=opacityTexLayout_tmp;
int l9_159=l9_157;
float2 l9_160=l9_150;
bool l9_161=(int(SC_USE_UV_TRANSFORM_opacityTex_tmp)!=0);
float3x3 l9_162=(*sc_set0.UserUniforms).opacityTexTransform;
int2 l9_163=int2(SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp,SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp);
bool l9_164=(int(SC_USE_UV_MIN_MAX_opacityTex_tmp)!=0);
float4 l9_165=(*sc_set0.UserUniforms).opacityTexUvMinMax;
bool l9_166=(int(SC_USE_CLAMP_TO_BORDER_opacityTex_tmp)!=0);
float4 l9_167=(*sc_set0.UserUniforms).opacityTexBorderColor;
float l9_168=0.0;
bool l9_169=l9_166&&(!l9_164);
float l9_170=1.0;
float l9_171=l9_160.x;
int l9_172=l9_163.x;
if (l9_172==1)
{
l9_171=fract(l9_171);
}
else
{
if (l9_172==2)
{
float l9_173=fract(l9_171);
float l9_174=l9_171-l9_173;
float l9_175=step(0.25,fract(l9_174*0.5));
l9_171=mix(l9_173,1.0-l9_173,fast::clamp(l9_175,0.0,1.0));
}
}
l9_160.x=l9_171;
float l9_176=l9_160.y;
int l9_177=l9_163.y;
if (l9_177==1)
{
l9_176=fract(l9_176);
}
else
{
if (l9_177==2)
{
float l9_178=fract(l9_176);
float l9_179=l9_176-l9_178;
float l9_180=step(0.25,fract(l9_179*0.5));
l9_176=mix(l9_178,1.0-l9_178,fast::clamp(l9_180,0.0,1.0));
}
}
l9_160.y=l9_176;
if (l9_164)
{
bool l9_181=l9_166;
bool l9_182;
if (l9_181)
{
l9_182=l9_163.x==3;
}
else
{
l9_182=l9_181;
}
float l9_183=l9_160.x;
float l9_184=l9_165.x;
float l9_185=l9_165.z;
bool l9_186=l9_182;
float l9_187=l9_170;
float l9_188=fast::clamp(l9_183,l9_184,l9_185);
float l9_189=step(abs(l9_183-l9_188),9.9999997e-06);
l9_187*=(l9_189+((1.0-float(l9_186))*(1.0-l9_189)));
l9_183=l9_188;
l9_160.x=l9_183;
l9_170=l9_187;
bool l9_190=l9_166;
bool l9_191;
if (l9_190)
{
l9_191=l9_163.y==3;
}
else
{
l9_191=l9_190;
}
float l9_192=l9_160.y;
float l9_193=l9_165.y;
float l9_194=l9_165.w;
bool l9_195=l9_191;
float l9_196=l9_170;
float l9_197=fast::clamp(l9_192,l9_193,l9_194);
float l9_198=step(abs(l9_192-l9_197),9.9999997e-06);
l9_196*=(l9_198+((1.0-float(l9_195))*(1.0-l9_198)));
l9_192=l9_197;
l9_160.y=l9_192;
l9_170=l9_196;
}
float2 l9_199=l9_160;
bool l9_200=l9_161;
float3x3 l9_201=l9_162;
if (l9_200)
{
l9_199=float2((l9_201*float3(l9_199,1.0)).xy);
}
float2 l9_202=l9_199;
l9_160=l9_202;
float l9_203=l9_160.x;
int l9_204=l9_163.x;
bool l9_205=l9_169;
float l9_206=l9_170;
if ((l9_204==0)||(l9_204==3))
{
float l9_207=l9_203;
float l9_208=0.0;
float l9_209=1.0;
bool l9_210=l9_205;
float l9_211=l9_206;
float l9_212=fast::clamp(l9_207,l9_208,l9_209);
float l9_213=step(abs(l9_207-l9_212),9.9999997e-06);
l9_211*=(l9_213+((1.0-float(l9_210))*(1.0-l9_213)));
l9_207=l9_212;
l9_203=l9_207;
l9_206=l9_211;
}
l9_160.x=l9_203;
l9_170=l9_206;
float l9_214=l9_160.y;
int l9_215=l9_163.y;
bool l9_216=l9_169;
float l9_217=l9_170;
if ((l9_215==0)||(l9_215==3))
{
float l9_218=l9_214;
float l9_219=0.0;
float l9_220=1.0;
bool l9_221=l9_216;
float l9_222=l9_217;
float l9_223=fast::clamp(l9_218,l9_219,l9_220);
float l9_224=step(abs(l9_218-l9_223),9.9999997e-06);
l9_222*=(l9_224+((1.0-float(l9_221))*(1.0-l9_224)));
l9_218=l9_223;
l9_214=l9_218;
l9_217=l9_222;
}
l9_160.y=l9_214;
l9_170=l9_217;
float2 l9_225=l9_160;
int l9_226=l9_158;
int l9_227=l9_159;
float l9_228=l9_168;
float2 l9_229=l9_225;
int l9_230=l9_226;
int l9_231=l9_227;
float3 l9_232=float3(0.0);
if (l9_230==0)
{
l9_232=float3(l9_229,0.0);
}
else
{
if (l9_230==1)
{
l9_232=float3(l9_229.x,(l9_229.y*0.5)+(0.5-(float(l9_231)*0.5)),0.0);
}
else
{
l9_232=float3(l9_229,float(l9_231));
}
}
float3 l9_233=l9_232;
float3 l9_234=l9_233;
float4 l9_235=sc_set0.opacityTex.sample(sc_set0.opacityTexSmpSC,l9_234.xy,bias(l9_228));
float4 l9_236=l9_235;
if (l9_166)
{
l9_236=mix(l9_167,l9_236,float4(l9_170));
}
float4 l9_237=l9_236;
l9_151=l9_237;
float4 l9_238=l9_151;
N7_Opacity=l9_238.x;
}
N7_Opacity*=N7_Albedo.w;
if (N7_VertexColorSwitch==1)
{
float4 l9_239=tempGlobals.VertexColor;
N7_Albedo*=l9_239;
float4 l9_240=tempGlobals.VertexColor;
N7_Opacity*=l9_240.w;
}
if (N7_EnableNormalTexture)
{
float3 l9_241=float3(0.0,0.0,1.0);
int l9_242=N7_NormalUVSwitch;
float2 l9_243=tempGlobals.Surface_UVCoord0;
float2 l9_244=l9_243;
if (l9_242==0)
{
float2 l9_245=tempGlobals.Surface_UVCoord0;
l9_244=l9_245;
}
if (l9_242==1)
{
float2 l9_246=tempGlobals.Surface_UVCoord1;
l9_244=l9_246;
}
if (l9_242==2)
{
l9_244=tempGlobals.N7_TransformedUV2;
}
if (l9_242==3)
{
l9_244=tempGlobals.N7_TransformedUV3;
}
float2 l9_247=l9_244;
float2 l9_248=l9_247;
float2 l9_249=l9_248;
float4 l9_250=float4(0.0);
int l9_251;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_252=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_252=0;
}
else
{
l9_252=in.varStereoViewID;
}
int l9_253=l9_252;
l9_251=1-l9_253;
}
else
{
int l9_254=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_254=0;
}
else
{
l9_254=in.varStereoViewID;
}
int l9_255=l9_254;
l9_251=l9_255;
}
int l9_256=l9_251;
int l9_257=normalTexLayout_tmp;
int l9_258=l9_256;
float2 l9_259=l9_249;
bool l9_260=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_261=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_262=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_263=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_264=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_265=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_266=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_267=0.0;
bool l9_268=l9_265&&(!l9_263);
float l9_269=1.0;
float l9_270=l9_259.x;
int l9_271=l9_262.x;
if (l9_271==1)
{
l9_270=fract(l9_270);
}
else
{
if (l9_271==2)
{
float l9_272=fract(l9_270);
float l9_273=l9_270-l9_272;
float l9_274=step(0.25,fract(l9_273*0.5));
l9_270=mix(l9_272,1.0-l9_272,fast::clamp(l9_274,0.0,1.0));
}
}
l9_259.x=l9_270;
float l9_275=l9_259.y;
int l9_276=l9_262.y;
if (l9_276==1)
{
l9_275=fract(l9_275);
}
else
{
if (l9_276==2)
{
float l9_277=fract(l9_275);
float l9_278=l9_275-l9_277;
float l9_279=step(0.25,fract(l9_278*0.5));
l9_275=mix(l9_277,1.0-l9_277,fast::clamp(l9_279,0.0,1.0));
}
}
l9_259.y=l9_275;
if (l9_263)
{
bool l9_280=l9_265;
bool l9_281;
if (l9_280)
{
l9_281=l9_262.x==3;
}
else
{
l9_281=l9_280;
}
float l9_282=l9_259.x;
float l9_283=l9_264.x;
float l9_284=l9_264.z;
bool l9_285=l9_281;
float l9_286=l9_269;
float l9_287=fast::clamp(l9_282,l9_283,l9_284);
float l9_288=step(abs(l9_282-l9_287),9.9999997e-06);
l9_286*=(l9_288+((1.0-float(l9_285))*(1.0-l9_288)));
l9_282=l9_287;
l9_259.x=l9_282;
l9_269=l9_286;
bool l9_289=l9_265;
bool l9_290;
if (l9_289)
{
l9_290=l9_262.y==3;
}
else
{
l9_290=l9_289;
}
float l9_291=l9_259.y;
float l9_292=l9_264.y;
float l9_293=l9_264.w;
bool l9_294=l9_290;
float l9_295=l9_269;
float l9_296=fast::clamp(l9_291,l9_292,l9_293);
float l9_297=step(abs(l9_291-l9_296),9.9999997e-06);
l9_295*=(l9_297+((1.0-float(l9_294))*(1.0-l9_297)));
l9_291=l9_296;
l9_259.y=l9_291;
l9_269=l9_295;
}
float2 l9_298=l9_259;
bool l9_299=l9_260;
float3x3 l9_300=l9_261;
if (l9_299)
{
l9_298=float2((l9_300*float3(l9_298,1.0)).xy);
}
float2 l9_301=l9_298;
l9_259=l9_301;
float l9_302=l9_259.x;
int l9_303=l9_262.x;
bool l9_304=l9_268;
float l9_305=l9_269;
if ((l9_303==0)||(l9_303==3))
{
float l9_306=l9_302;
float l9_307=0.0;
float l9_308=1.0;
bool l9_309=l9_304;
float l9_310=l9_305;
float l9_311=fast::clamp(l9_306,l9_307,l9_308);
float l9_312=step(abs(l9_306-l9_311),9.9999997e-06);
l9_310*=(l9_312+((1.0-float(l9_309))*(1.0-l9_312)));
l9_306=l9_311;
l9_302=l9_306;
l9_305=l9_310;
}
l9_259.x=l9_302;
l9_269=l9_305;
float l9_313=l9_259.y;
int l9_314=l9_262.y;
bool l9_315=l9_268;
float l9_316=l9_269;
if ((l9_314==0)||(l9_314==3))
{
float l9_317=l9_313;
float l9_318=0.0;
float l9_319=1.0;
bool l9_320=l9_315;
float l9_321=l9_316;
float l9_322=fast::clamp(l9_317,l9_318,l9_319);
float l9_323=step(abs(l9_317-l9_322),9.9999997e-06);
l9_321*=(l9_323+((1.0-float(l9_320))*(1.0-l9_323)));
l9_317=l9_322;
l9_313=l9_317;
l9_316=l9_321;
}
l9_259.y=l9_313;
l9_269=l9_316;
float2 l9_324=l9_259;
int l9_325=l9_257;
int l9_326=l9_258;
float l9_327=l9_267;
float2 l9_328=l9_324;
int l9_329=l9_325;
int l9_330=l9_326;
float3 l9_331=float3(0.0);
if (l9_329==0)
{
l9_331=float3(l9_328,0.0);
}
else
{
if (l9_329==1)
{
l9_331=float3(l9_328.x,(l9_328.y*0.5)+(0.5-(float(l9_330)*0.5)),0.0);
}
else
{
l9_331=float3(l9_328,float(l9_330));
}
}
float3 l9_332=l9_331;
float3 l9_333=l9_332;
float4 l9_334=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_333.xy,bias(l9_327));
float4 l9_335=l9_334;
if (l9_265)
{
l9_335=mix(l9_266,l9_335,float4(l9_269));
}
float4 l9_336=l9_335;
l9_250=l9_336;
float4 l9_337=l9_250;
N7_Normal=(l9_337.xyz*1.9921875)-float3(1.0);
if (N7_EnableDetailNormal)
{
int l9_338=N7_Detail_NormalUVSwitch;
float2 l9_339=tempGlobals.Surface_UVCoord0;
float2 l9_340=l9_339;
if (l9_338==0)
{
float2 l9_341=tempGlobals.Surface_UVCoord0;
l9_340=l9_341;
}
if (l9_338==1)
{
float2 l9_342=tempGlobals.Surface_UVCoord1;
l9_340=l9_342;
}
if (l9_338==2)
{
l9_340=tempGlobals.N7_TransformedUV2;
}
if (l9_338==3)
{
l9_340=tempGlobals.N7_TransformedUV3;
}
float2 l9_343=l9_340;
float2 l9_344=l9_343;
float2 l9_345=l9_344;
float4 l9_346=float4(0.0);
int l9_347;
if ((int(detailNormalTexHasSwappedViews_tmp)!=0))
{
int l9_348=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_348=0;
}
else
{
l9_348=in.varStereoViewID;
}
int l9_349=l9_348;
l9_347=1-l9_349;
}
else
{
int l9_350=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_350=0;
}
else
{
l9_350=in.varStereoViewID;
}
int l9_351=l9_350;
l9_347=l9_351;
}
int l9_352=l9_347;
int l9_353=detailNormalTexLayout_tmp;
int l9_354=l9_352;
float2 l9_355=l9_345;
bool l9_356=(int(SC_USE_UV_TRANSFORM_detailNormalTex_tmp)!=0);
float3x3 l9_357=(*sc_set0.UserUniforms).detailNormalTexTransform;
int2 l9_358=int2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp);
bool l9_359=(int(SC_USE_UV_MIN_MAX_detailNormalTex_tmp)!=0);
float4 l9_360=(*sc_set0.UserUniforms).detailNormalTexUvMinMax;
bool l9_361=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp)!=0);
float4 l9_362=(*sc_set0.UserUniforms).detailNormalTexBorderColor;
float l9_363=0.0;
bool l9_364=l9_361&&(!l9_359);
float l9_365=1.0;
float l9_366=l9_355.x;
int l9_367=l9_358.x;
if (l9_367==1)
{
l9_366=fract(l9_366);
}
else
{
if (l9_367==2)
{
float l9_368=fract(l9_366);
float l9_369=l9_366-l9_368;
float l9_370=step(0.25,fract(l9_369*0.5));
l9_366=mix(l9_368,1.0-l9_368,fast::clamp(l9_370,0.0,1.0));
}
}
l9_355.x=l9_366;
float l9_371=l9_355.y;
int l9_372=l9_358.y;
if (l9_372==1)
{
l9_371=fract(l9_371);
}
else
{
if (l9_372==2)
{
float l9_373=fract(l9_371);
float l9_374=l9_371-l9_373;
float l9_375=step(0.25,fract(l9_374*0.5));
l9_371=mix(l9_373,1.0-l9_373,fast::clamp(l9_375,0.0,1.0));
}
}
l9_355.y=l9_371;
if (l9_359)
{
bool l9_376=l9_361;
bool l9_377;
if (l9_376)
{
l9_377=l9_358.x==3;
}
else
{
l9_377=l9_376;
}
float l9_378=l9_355.x;
float l9_379=l9_360.x;
float l9_380=l9_360.z;
bool l9_381=l9_377;
float l9_382=l9_365;
float l9_383=fast::clamp(l9_378,l9_379,l9_380);
float l9_384=step(abs(l9_378-l9_383),9.9999997e-06);
l9_382*=(l9_384+((1.0-float(l9_381))*(1.0-l9_384)));
l9_378=l9_383;
l9_355.x=l9_378;
l9_365=l9_382;
bool l9_385=l9_361;
bool l9_386;
if (l9_385)
{
l9_386=l9_358.y==3;
}
else
{
l9_386=l9_385;
}
float l9_387=l9_355.y;
float l9_388=l9_360.y;
float l9_389=l9_360.w;
bool l9_390=l9_386;
float l9_391=l9_365;
float l9_392=fast::clamp(l9_387,l9_388,l9_389);
float l9_393=step(abs(l9_387-l9_392),9.9999997e-06);
l9_391*=(l9_393+((1.0-float(l9_390))*(1.0-l9_393)));
l9_387=l9_392;
l9_355.y=l9_387;
l9_365=l9_391;
}
float2 l9_394=l9_355;
bool l9_395=l9_356;
float3x3 l9_396=l9_357;
if (l9_395)
{
l9_394=float2((l9_396*float3(l9_394,1.0)).xy);
}
float2 l9_397=l9_394;
l9_355=l9_397;
float l9_398=l9_355.x;
int l9_399=l9_358.x;
bool l9_400=l9_364;
float l9_401=l9_365;
if ((l9_399==0)||(l9_399==3))
{
float l9_402=l9_398;
float l9_403=0.0;
float l9_404=1.0;
bool l9_405=l9_400;
float l9_406=l9_401;
float l9_407=fast::clamp(l9_402,l9_403,l9_404);
float l9_408=step(abs(l9_402-l9_407),9.9999997e-06);
l9_406*=(l9_408+((1.0-float(l9_405))*(1.0-l9_408)));
l9_402=l9_407;
l9_398=l9_402;
l9_401=l9_406;
}
l9_355.x=l9_398;
l9_365=l9_401;
float l9_409=l9_355.y;
int l9_410=l9_358.y;
bool l9_411=l9_364;
float l9_412=l9_365;
if ((l9_410==0)||(l9_410==3))
{
float l9_413=l9_409;
float l9_414=0.0;
float l9_415=1.0;
bool l9_416=l9_411;
float l9_417=l9_412;
float l9_418=fast::clamp(l9_413,l9_414,l9_415);
float l9_419=step(abs(l9_413-l9_418),9.9999997e-06);
l9_417*=(l9_419+((1.0-float(l9_416))*(1.0-l9_419)));
l9_413=l9_418;
l9_409=l9_413;
l9_412=l9_417;
}
l9_355.y=l9_409;
l9_365=l9_412;
float2 l9_420=l9_355;
int l9_421=l9_353;
int l9_422=l9_354;
float l9_423=l9_363;
float2 l9_424=l9_420;
int l9_425=l9_421;
int l9_426=l9_422;
float3 l9_427=float3(0.0);
if (l9_425==0)
{
l9_427=float3(l9_424,0.0);
}
else
{
if (l9_425==1)
{
l9_427=float3(l9_424.x,(l9_424.y*0.5)+(0.5-(float(l9_426)*0.5)),0.0);
}
else
{
l9_427=float3(l9_424,float(l9_426));
}
}
float3 l9_428=l9_427;
float3 l9_429=l9_428;
float4 l9_430=sc_set0.detailNormalTex.sample(sc_set0.detailNormalTexSmpSC,l9_429.xy,bias(l9_423));
float4 l9_431=l9_430;
if (l9_361)
{
l9_431=mix(l9_362,l9_431,float4(l9_365));
}
float4 l9_432=l9_431;
l9_346=l9_432;
float4 l9_433=l9_346;
l9_241=(l9_433.xyz*1.9921875)-float3(1.0);
}
float3 l9_434=N7_Normal;
float3 l9_435=l9_241;
float3 l9_436=l9_434+float3(0.0,0.0,1.0);
float3 l9_437=l9_435*float3(-1.0,-1.0,1.0);
float3 l9_438=normalize((l9_436*dot(l9_436,l9_437))-(l9_437*l9_436.z));
N7_Normal=l9_438;
float3 l9_439=tempGlobals.VertexNormal_WorldSpace;
float3 l9_440=l9_439;
float3 l9_441=tempGlobals.VertexTangent_WorldSpace;
float3 l9_442=l9_441;
float3 l9_443=tempGlobals.VertexBinormal_WorldSpace;
float3 l9_444=l9_443;
float3x3 l9_445=float3x3(float3(l9_442),float3(l9_444),float3(l9_440));
N7_Normal=normalize(l9_445*N7_Normal);
}
else
{
float3 l9_446=tempGlobals.VertexNormal_WorldSpace;
N7_Normal=normalize(l9_446);
}
N7_Roughness=N7_RoughnessValue;
if (N7_EnableMaterialParamsTexture)
{
int l9_447=N7_MaterialParamsUVSwitch;
float2 l9_448=tempGlobals.Surface_UVCoord0;
float2 l9_449=l9_448;
if (l9_447==0)
{
float2 l9_450=tempGlobals.Surface_UVCoord0;
l9_449=l9_450;
}
if (l9_447==1)
{
float2 l9_451=tempGlobals.Surface_UVCoord1;
l9_449=l9_451;
}
if (l9_447==2)
{
l9_449=tempGlobals.N7_TransformedUV2;
}
if (l9_447==3)
{
l9_449=tempGlobals.N7_TransformedUV3;
}
float2 l9_452=l9_449;
float2 l9_453=l9_452;
float2 l9_454=l9_453;
float4 l9_455=float4(0.0);
int l9_456;
if ((int(materialParamsTexHasSwappedViews_tmp)!=0))
{
int l9_457=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_457=0;
}
else
{
l9_457=in.varStereoViewID;
}
int l9_458=l9_457;
l9_456=1-l9_458;
}
else
{
int l9_459=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_459=0;
}
else
{
l9_459=in.varStereoViewID;
}
int l9_460=l9_459;
l9_456=l9_460;
}
int l9_461=l9_456;
int l9_462=materialParamsTexLayout_tmp;
int l9_463=l9_461;
float2 l9_464=l9_454;
bool l9_465=(int(SC_USE_UV_TRANSFORM_materialParamsTex_tmp)!=0);
float3x3 l9_466=(*sc_set0.UserUniforms).materialParamsTexTransform;
int2 l9_467=int2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex_tmp,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex_tmp);
bool l9_468=(int(SC_USE_UV_MIN_MAX_materialParamsTex_tmp)!=0);
float4 l9_469=(*sc_set0.UserUniforms).materialParamsTexUvMinMax;
bool l9_470=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex_tmp)!=0);
float4 l9_471=(*sc_set0.UserUniforms).materialParamsTexBorderColor;
float l9_472=0.0;
bool l9_473=l9_470&&(!l9_468);
float l9_474=1.0;
float l9_475=l9_464.x;
int l9_476=l9_467.x;
if (l9_476==1)
{
l9_475=fract(l9_475);
}
else
{
if (l9_476==2)
{
float l9_477=fract(l9_475);
float l9_478=l9_475-l9_477;
float l9_479=step(0.25,fract(l9_478*0.5));
l9_475=mix(l9_477,1.0-l9_477,fast::clamp(l9_479,0.0,1.0));
}
}
l9_464.x=l9_475;
float l9_480=l9_464.y;
int l9_481=l9_467.y;
if (l9_481==1)
{
l9_480=fract(l9_480);
}
else
{
if (l9_481==2)
{
float l9_482=fract(l9_480);
float l9_483=l9_480-l9_482;
float l9_484=step(0.25,fract(l9_483*0.5));
l9_480=mix(l9_482,1.0-l9_482,fast::clamp(l9_484,0.0,1.0));
}
}
l9_464.y=l9_480;
if (l9_468)
{
bool l9_485=l9_470;
bool l9_486;
if (l9_485)
{
l9_486=l9_467.x==3;
}
else
{
l9_486=l9_485;
}
float l9_487=l9_464.x;
float l9_488=l9_469.x;
float l9_489=l9_469.z;
bool l9_490=l9_486;
float l9_491=l9_474;
float l9_492=fast::clamp(l9_487,l9_488,l9_489);
float l9_493=step(abs(l9_487-l9_492),9.9999997e-06);
l9_491*=(l9_493+((1.0-float(l9_490))*(1.0-l9_493)));
l9_487=l9_492;
l9_464.x=l9_487;
l9_474=l9_491;
bool l9_494=l9_470;
bool l9_495;
if (l9_494)
{
l9_495=l9_467.y==3;
}
else
{
l9_495=l9_494;
}
float l9_496=l9_464.y;
float l9_497=l9_469.y;
float l9_498=l9_469.w;
bool l9_499=l9_495;
float l9_500=l9_474;
float l9_501=fast::clamp(l9_496,l9_497,l9_498);
float l9_502=step(abs(l9_496-l9_501),9.9999997e-06);
l9_500*=(l9_502+((1.0-float(l9_499))*(1.0-l9_502)));
l9_496=l9_501;
l9_464.y=l9_496;
l9_474=l9_500;
}
float2 l9_503=l9_464;
bool l9_504=l9_465;
float3x3 l9_505=l9_466;
if (l9_504)
{
l9_503=float2((l9_505*float3(l9_503,1.0)).xy);
}
float2 l9_506=l9_503;
l9_464=l9_506;
float l9_507=l9_464.x;
int l9_508=l9_467.x;
bool l9_509=l9_473;
float l9_510=l9_474;
if ((l9_508==0)||(l9_508==3))
{
float l9_511=l9_507;
float l9_512=0.0;
float l9_513=1.0;
bool l9_514=l9_509;
float l9_515=l9_510;
float l9_516=fast::clamp(l9_511,l9_512,l9_513);
float l9_517=step(abs(l9_511-l9_516),9.9999997e-06);
l9_515*=(l9_517+((1.0-float(l9_514))*(1.0-l9_517)));
l9_511=l9_516;
l9_507=l9_511;
l9_510=l9_515;
}
l9_464.x=l9_507;
l9_474=l9_510;
float l9_518=l9_464.y;
int l9_519=l9_467.y;
bool l9_520=l9_473;
float l9_521=l9_474;
if ((l9_519==0)||(l9_519==3))
{
float l9_522=l9_518;
float l9_523=0.0;
float l9_524=1.0;
bool l9_525=l9_520;
float l9_526=l9_521;
float l9_527=fast::clamp(l9_522,l9_523,l9_524);
float l9_528=step(abs(l9_522-l9_527),9.9999997e-06);
l9_526*=(l9_528+((1.0-float(l9_525))*(1.0-l9_528)));
l9_522=l9_527;
l9_518=l9_522;
l9_521=l9_526;
}
l9_464.y=l9_518;
l9_474=l9_521;
float2 l9_529=l9_464;
int l9_530=l9_462;
int l9_531=l9_463;
float l9_532=l9_472;
float2 l9_533=l9_529;
int l9_534=l9_530;
int l9_535=l9_531;
float3 l9_536=float3(0.0);
if (l9_534==0)
{
l9_536=float3(l9_533,0.0);
}
else
{
if (l9_534==1)
{
l9_536=float3(l9_533.x,(l9_533.y*0.5)+(0.5-(float(l9_535)*0.5)),0.0);
}
else
{
l9_536=float3(l9_533,float(l9_535));
}
}
float3 l9_537=l9_536;
float3 l9_538=l9_537;
float4 l9_539=sc_set0.materialParamsTex.sample(sc_set0.materialParamsTexSmpSC,l9_538.xy,bias(l9_532));
float4 l9_540=l9_539;
if (l9_470)
{
l9_540=mix(l9_471,l9_540,float4(l9_474));
}
float4 l9_541=l9_540;
l9_455=l9_541;
float4 l9_542=l9_455;
float3 l9_543=l9_542.xyz;
N7_Roughness*=l9_543.y;
}
param_19=N7_Opacity;
param_20=N7_Normal;
param_21=N7_Roughness;
Opacity_N7=param_19;
Normal_N7=param_20;
Roughness_N7=param_21;
float param_23=Opacity_N7;
float3 param_24=Normal_N7;
float param_25=Roughness_N7;
ssGlobals param_26=Globals;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_26.BumpedNormal=param_24;
}
param_23=fast::clamp(param_23,0.0,1.0);
float l9_544=param_23;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_544<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_545=gl_FragCoord;
float2 l9_546=floor(mod(l9_545.xy,float2(4.0)));
float l9_547=(mod(dot(l9_546,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_544<l9_547)
{
discard_fragment();
}
}
float3 l9_548=param_26.PositionWS;
float3 l9_549=param_26.BumpedNormal;
float l9_550=param_25;
float3 l9_551=l9_548;
float3 l9_552=l9_549;
float l9_553=l9_550;
uint l9_554=0u;
uint3 l9_555=uint3(round((l9_551-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_555.x,l9_555.y,l9_555.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_556=l9_552;
float l9_557=dot(abs(l9_556),float3(1.0));
l9_556/=float3(l9_557);
float2 l9_558=float2(fast::clamp(-l9_556.z,0.0,1.0));
float2 l9_559=l9_556.xy+mix(-l9_558,l9_558,step(float2(0.0),l9_556.xy));
uint l9_560=as_type<uint>(half2(l9_559));
uint2 l9_561=uint2(l9_560&65535u,l9_560>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_561.x,l9_561.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_554;
uint l9_562=uint(fast::clamp(l9_553,0.0,1.0)*1000.0);
l9_562 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_562;
float2 ScreenCoord_N26=float2(0.0);
ScreenCoord_N26=Globals.gScreenCoord;
float Depth_N25=0.0;
int l9_563;
if ((int(bodyDepthTexHasSwappedViews_tmp)!=0))
{
int l9_564=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_564=0;
}
else
{
l9_564=in.varStereoViewID;
}
int l9_565=l9_564;
l9_563=1-l9_565;
}
else
{
int l9_566=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_566=0;
}
else
{
l9_566=in.varStereoViewID;
}
int l9_567=l9_566;
l9_563=l9_567;
}
int l9_568=l9_563;
int param_27=bodyDepthTexLayout_tmp;
int param_28=l9_568;
float2 param_29=ScreenCoord_N26;
bool param_30=(int(SC_USE_UV_TRANSFORM_bodyDepthTex_tmp)!=0);
float3x3 param_31=(*sc_set0.UserUniforms).bodyDepthTexTransform;
int2 param_32=int2(SC_SOFTWARE_WRAP_MODE_U_bodyDepthTex_tmp,SC_SOFTWARE_WRAP_MODE_V_bodyDepthTex_tmp);
bool param_33=(int(SC_USE_UV_MIN_MAX_bodyDepthTex_tmp)!=0);
float4 param_34=(*sc_set0.UserUniforms).bodyDepthTexUvMinMax;
bool param_35=(int(SC_USE_CLAMP_TO_BORDER_bodyDepthTex_tmp)!=0);
float4 param_36=(*sc_set0.UserUniforms).bodyDepthTexBorderColor;
float param_37=0.0;
bool l9_569=param_35&&(!param_33);
float l9_570=1.0;
float l9_571=param_29.x;
int l9_572=param_32.x;
if (l9_572==1)
{
l9_571=fract(l9_571);
}
else
{
if (l9_572==2)
{
float l9_573=fract(l9_571);
float l9_574=l9_571-l9_573;
float l9_575=step(0.25,fract(l9_574*0.5));
l9_571=mix(l9_573,1.0-l9_573,fast::clamp(l9_575,0.0,1.0));
}
}
param_29.x=l9_571;
float l9_576=param_29.y;
int l9_577=param_32.y;
if (l9_577==1)
{
l9_576=fract(l9_576);
}
else
{
if (l9_577==2)
{
float l9_578=fract(l9_576);
float l9_579=l9_576-l9_578;
float l9_580=step(0.25,fract(l9_579*0.5));
l9_576=mix(l9_578,1.0-l9_578,fast::clamp(l9_580,0.0,1.0));
}
}
param_29.y=l9_576;
if (param_33)
{
bool l9_581=param_35;
bool l9_582;
if (l9_581)
{
l9_582=param_32.x==3;
}
else
{
l9_582=l9_581;
}
float l9_583=param_29.x;
float l9_584=param_34.x;
float l9_585=param_34.z;
bool l9_586=l9_582;
float l9_587=l9_570;
float l9_588=fast::clamp(l9_583,l9_584,l9_585);
float l9_589=step(abs(l9_583-l9_588),9.9999997e-06);
l9_587*=(l9_589+((1.0-float(l9_586))*(1.0-l9_589)));
l9_583=l9_588;
param_29.x=l9_583;
l9_570=l9_587;
bool l9_590=param_35;
bool l9_591;
if (l9_590)
{
l9_591=param_32.y==3;
}
else
{
l9_591=l9_590;
}
float l9_592=param_29.y;
float l9_593=param_34.y;
float l9_594=param_34.w;
bool l9_595=l9_591;
float l9_596=l9_570;
float l9_597=fast::clamp(l9_592,l9_593,l9_594);
float l9_598=step(abs(l9_592-l9_597),9.9999997e-06);
l9_596*=(l9_598+((1.0-float(l9_595))*(1.0-l9_598)));
l9_592=l9_597;
param_29.y=l9_592;
l9_570=l9_596;
}
float2 l9_599=param_29;
bool l9_600=param_30;
float3x3 l9_601=param_31;
if (l9_600)
{
l9_599=float2((l9_601*float3(l9_599,1.0)).xy);
}
float2 l9_602=l9_599;
param_29=l9_602;
float l9_603=param_29.x;
int l9_604=param_32.x;
bool l9_605=l9_569;
float l9_606=l9_570;
if ((l9_604==0)||(l9_604==3))
{
float l9_607=l9_603;
float l9_608=0.0;
float l9_609=1.0;
bool l9_610=l9_605;
float l9_611=l9_606;
float l9_612=fast::clamp(l9_607,l9_608,l9_609);
float l9_613=step(abs(l9_607-l9_612),9.9999997e-06);
l9_611*=(l9_613+((1.0-float(l9_610))*(1.0-l9_613)));
l9_607=l9_612;
l9_603=l9_607;
l9_606=l9_611;
}
param_29.x=l9_603;
l9_570=l9_606;
float l9_614=param_29.y;
int l9_615=param_32.y;
bool l9_616=l9_569;
float l9_617=l9_570;
if ((l9_615==0)||(l9_615==3))
{
float l9_618=l9_614;
float l9_619=0.0;
float l9_620=1.0;
bool l9_621=l9_616;
float l9_622=l9_617;
float l9_623=fast::clamp(l9_618,l9_619,l9_620);
float l9_624=step(abs(l9_618-l9_623),9.9999997e-06);
l9_622*=(l9_624+((1.0-float(l9_621))*(1.0-l9_624)));
l9_618=l9_623;
l9_614=l9_618;
l9_617=l9_622;
}
param_29.y=l9_614;
l9_570=l9_617;
float2 l9_625=param_29;
int l9_626=param_27;
int l9_627=param_28;
float l9_628=param_37;
float2 l9_629=l9_625;
int l9_630=l9_626;
int l9_631=l9_627;
float3 l9_632=float3(0.0);
if (l9_630==0)
{
l9_632=float3(l9_629,0.0);
}
else
{
if (l9_630==1)
{
l9_632=float3(l9_629.x,(l9_629.y*0.5)+(0.5-(float(l9_631)*0.5)),0.0);
}
else
{
l9_632=float3(l9_629,float(l9_631));
}
}
float3 l9_633=l9_632;
float3 l9_634=l9_633;
float4 l9_635=sc_set0.bodyDepthTex.sample(sc_set0.bodyDepthTexSmpSC,l9_634.xy,bias(l9_628));
float4 l9_636=l9_635;
if (param_35)
{
l9_636=mix(param_36,l9_636,float4(l9_570));
}
float4 l9_637=l9_636;
float param_38=l9_637.x;
float4 param_39=(*sc_set0.UserUniforms).bodyDepthTexProjectionMatrixTerms;
float l9_638=param_39.x;
float l9_639=param_39.y;
bool l9_640=param_39.z==0.0;
param_38=(param_38*2.0)-1.0;
float l9_641;
if (l9_640)
{
l9_641=(param_38-l9_639)/l9_638;
}
else
{
l9_641=l9_639/((-param_38)-l9_638);
}
float l9_642=l9_641;
Depth_N25=l9_642;
float Depth_N29=0.0;
float l9_643=(*sc_set0.UserUniforms).sc_Camera.clipPlanes.x;
float l9_644=(*sc_set0.UserUniforms).sc_Camera.clipPlanes.y;
float4 l9_645=gl_FragCoord;
float param_40=(l9_644*l9_643)/(l9_644+(l9_645.z*(l9_643-l9_644)));
Depth_N29=param_40;
float param_41=Output_N24;
float param_42=Depth_N25;
float param_43=Depth_N29;
ssGlobals param_44=Globals;
tempGlobals=param_44;
N22_EnableBodyDepth=param_41;
N22_BodyDepth=param_42;
N22_cameraDepth=param_43;
float l9_646=N22_BodyDepth-(1.0-N22_cameraDepth);
float l9_647=l9_646*0.035;
float l9_648=100.0;
float l9_649;
if (l9_647<=0.0)
{
l9_649=0.0;
}
else
{
l9_649=pow(l9_647,l9_648);
}
float l9_650=l9_649;
l9_646=1.0-fast::clamp(l9_650,0.0,1.0);
if ((N22_EnableBodyDepth==1.0)&&(l9_646<1.0))
{
discard_fragment();
}
return out;
}
} // RECEIVER MODE SHADER
