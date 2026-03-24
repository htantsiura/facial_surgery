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
//sampler sampler bodyDepthTexSmpSC 0:25
//sampler sampler distortionTexSmpSC 0:26
//sampler sampler fluidPressureSmpSC 0:27
//sampler sampler intensityTextureSmpSC 0:28
//sampler sampler oceanHeightmapSmpSC 0:29
//sampler sampler oceanNormalSmpSC 0:30
//sampler sampler sc_EnvmapDiffuseSmpSC 0:31
//sampler sampler sc_EnvmapSpecularSmpSC 0:32
//sampler sampler sc_RayTracingGlobalIlluminationSmpSC 0:34
//sampler sampler sc_RayTracingReflectionsSmpSC 0:35
//sampler sampler sc_RayTracingShadowsSmpSC 0:36
//sampler sampler sc_SSAOTextureSmpSC 0:37
//sampler sampler sc_ScreenTextureSmpSC 0:38
//sampler sampler sc_ShadowTextureSmpSC 0:39
//sampler sampler screenTexSmpSC 0:41
//texture texture2D bodyDepthTex 0:1:0:25
//texture texture2D distortionTex 0:2:0:26
//texture texture2D fluidPressure 0:3:0:27
//texture texture2D intensityTexture 0:4:0:28
//texture texture2D oceanHeightmap 0:5:0:29
//texture texture2D oceanNormal 0:6:0:30
//texture texture2D sc_EnvmapDiffuse 0:7:0:31
//texture texture2D sc_EnvmapSpecular 0:8:0:32
//texture texture2D sc_RayTracingGlobalIllumination 0:17:0:34
//texture texture2D sc_RayTracingReflections 0:18:0:35
//texture texture2D sc_RayTracingShadows 0:19:0:36
//texture texture2D sc_SSAOTexture 0:20:0:37
//texture texture2D sc_ScreenTexture 0:21:0:38
//texture texture2D sc_ShadowTexture 0:22:0:39
//texture texture2D screenTex 0:24:0:41
//ubo float sc_BonesUBO 0:0:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:42:5536 {
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
//int PreviewNodeID 4488
//float alphaTestThreshold 4492
//float3 oceanMin 4496
//float3 oceanMax 4512
//float speed 4528
//float enableFoam 4532
//float fbmScale 4536
//float enableInfinite 4540
//float3x3 screenTexTransform 4592
//float4 screenTexUvMinMax 4640
//float4 screenTexBorderColor 4656
//float3x3 distortionTexTransform 4720
//float4 distortionTexUvMinMax 4768
//float4 distortionTexBorderColor 4784
//float distortionScale 4800
//float distortionIntensity 4804
//float3x3 oceanHeightmapTransform 4864
//float4 oceanHeightmapUvMinMax 4912
//float4 oceanHeightmapBorderColor 4928
//float3x3 oceanNormalTransform 4992
//float4 oceanNormalUvMinMax 5040
//float4 oceanNormalBorderColor 5056
//float enableFluid 5072
//float2 pressureRange 5080
//float3x3 fluidPressureTransform 5136
//float4 fluidPressureUvMinMax 5184
//float4 fluidPressureBorderColor 5200
//float fluidMul 5216
//float2 unpackVal 5224
//float4 colorTrough 5232
//float4 colorMiddle 5248
//float4 colorCrest 5264
//float bodyIntersection 5280
//float3x3 bodyDepthTexTransform 5344
//float4 bodyDepthTexUvMinMax 5392
//float4 bodyDepthTexBorderColor 5408
//float4 bodyDepthTexProjectionMatrixTerms 5424
//float Port_Position1_N030 5440
//float Port_Position2_N030 5444
//float Port_Position3_N030 5448
//float Port_Position4_N030 5452
//float Port_Opacity_N013 5456
//float3 Port_Emissive_N013 5472
//float Port_Metallic_N013 5488
//float Port_Roughness_N013 5492
//float3 Port_AO_N013 5504
//float3 Port_SpecularAO_N013 5520
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
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 30 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_bodyDepthTex 31 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_distortionTex 32 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_fluidPressure 33 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 34 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_oceanHeightmap 35 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_oceanNormal 36 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_screenTex 37 0
//spec_const bool SC_USE_UV_MIN_MAX_bodyDepthTex 38 0
//spec_const bool SC_USE_UV_MIN_MAX_distortionTex 39 0
//spec_const bool SC_USE_UV_MIN_MAX_fluidPressure 40 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 41 0
//spec_const bool SC_USE_UV_MIN_MAX_oceanHeightmap 42 0
//spec_const bool SC_USE_UV_MIN_MAX_oceanNormal 43 0
//spec_const bool SC_USE_UV_MIN_MAX_screenTex 44 0
//spec_const bool SC_USE_UV_TRANSFORM_bodyDepthTex 45 0
//spec_const bool SC_USE_UV_TRANSFORM_distortionTex 46 0
//spec_const bool SC_USE_UV_TRANSFORM_fluidPressure 47 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 48 0
//spec_const bool SC_USE_UV_TRANSFORM_oceanHeightmap 49 0
//spec_const bool SC_USE_UV_TRANSFORM_oceanNormal 50 0
//spec_const bool SC_USE_UV_TRANSFORM_screenTex 51 0
//spec_const bool UseViewSpaceDepthVariant 52 1
//spec_const bool bodyDepthTexHasSwappedViews 53 0
//spec_const bool distortionTexHasSwappedViews 54 0
//spec_const bool fluidPressureHasSwappedViews 55 0
//spec_const bool intensityTextureHasSwappedViews 56 0
//spec_const bool oceanHeightmapHasSwappedViews 57 0
//spec_const bool oceanNormalHasSwappedViews 58 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 59 0
//spec_const bool sc_BlendMode_Add 60 0
//spec_const bool sc_BlendMode_AlphaTest 61 0
//spec_const bool sc_BlendMode_AlphaToCoverage 62 0
//spec_const bool sc_BlendMode_ColoredGlass 63 0
//spec_const bool sc_BlendMode_Custom 64 0
//spec_const bool sc_BlendMode_Max 65 0
//spec_const bool sc_BlendMode_Min 66 0
//spec_const bool sc_BlendMode_MultiplyOriginal 67 0
//spec_const bool sc_BlendMode_Multiply 68 0
//spec_const bool sc_BlendMode_Normal 69 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 70 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 71 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 72 0
//spec_const bool sc_BlendMode_Screen 73 0
//spec_const bool sc_DepthOnly 74 0
//spec_const bool sc_EnvmapDiffuseHasSwappedViews 75 0
//spec_const bool sc_EnvmapSpecularHasSwappedViews 76 0
//spec_const bool sc_FramebufferFetch 77 0
//spec_const bool sc_HasDiffuseEnvmap 78 0
//spec_const bool sc_IsEditor 79 0
//spec_const bool sc_LightEstimation 80 0
//spec_const bool sc_MotionVectorsPass 81 0
//spec_const bool sc_OITCompositingPass 82 0
//spec_const bool sc_OITDepthBoundsPass 83 0
//spec_const bool sc_OITDepthGatherPass 84 0
//spec_const bool sc_OutputBounds 85 0
//spec_const bool sc_ProjectiveShadowsCaster 86 0
//spec_const bool sc_ProjectiveShadowsReceiver 87 0
//spec_const bool sc_RayTracingGlobalIlluminationHasSwappedViews 88 0
//spec_const bool sc_RayTracingReflectionsHasSwappedViews 89 0
//spec_const bool sc_RayTracingShadowsHasSwappedViews 90 0
//spec_const bool sc_RenderAlphaToColor 91 0
//spec_const bool sc_SSAOEnabled 92 0
//spec_const bool sc_ScreenTextureHasSwappedViews 93 0
//spec_const bool sc_TAAEnabled 94 0
//spec_const bool sc_VertexBlendingUseNormals 95 0
//spec_const bool sc_VertexBlending 96 0
//spec_const bool sc_Voxelization 97 0
//spec_const bool screenTexHasSwappedViews 98 0
//spec_const int SC_DEVICE_CLASS 99 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_bodyDepthTex 100 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_distortionTex 101 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_fluidPressure 102 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 103 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap 104 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_oceanNormal 105 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_screenTex 106 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_bodyDepthTex 107 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_distortionTex 108 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_fluidPressure 109 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 110 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap 111 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_oceanNormal 112 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_screenTex 113 -1
//spec_const int bodyDepthTexLayout 114 0
//spec_const int distortionTexLayout 115 0
//spec_const int fluidPressureLayout 116 0
//spec_const int intensityTextureLayout 117 0
//spec_const int oceanHeightmapLayout 118 0
//spec_const int oceanNormalLayout 119 0
//spec_const int sc_AmbientLightMode0 120 0
//spec_const int sc_AmbientLightMode1 121 0
//spec_const int sc_AmbientLightMode2 122 0
//spec_const int sc_AmbientLightMode_Constant 123 0
//spec_const int sc_AmbientLightMode_EnvironmentMap 124 0
//spec_const int sc_AmbientLightMode_FromCamera 125 0
//spec_const int sc_AmbientLightMode_SphericalHarmonics 126 0
//spec_const int sc_AmbientLightsCount 127 0
//spec_const int sc_DepthBufferMode 128 0
//spec_const int sc_DirectionalLightsCount 129 0
//spec_const int sc_EnvLightMode 130 0
//spec_const int sc_EnvmapDiffuseLayout 131 0
//spec_const int sc_EnvmapSpecularLayout 132 0
//spec_const int sc_LightEstimationSGCount 133 0
//spec_const int sc_PointLightsCount 134 0
//spec_const int sc_RayTracingGlobalIlluminationLayout 135 0
//spec_const int sc_RayTracingReflectionsLayout 136 0
//spec_const int sc_RayTracingShadowsLayout 137 0
//spec_const int sc_RenderingSpace 138 -1
//spec_const int sc_ScreenTextureLayout 139 0
//spec_const int sc_ShaderCacheConstant 140 0
//spec_const int sc_SkinBonesCount 141 0
//spec_const int sc_StereoRenderingMode 142 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 143 0
//spec_const int screenTexLayout 144 0
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
constant bool ENABLE_STIPPLE_PATTERN_TEST [[function_constant(30)]];
constant bool ENABLE_STIPPLE_PATTERN_TEST_tmp = is_function_constant_defined(ENABLE_STIPPLE_PATTERN_TEST) ? ENABLE_STIPPLE_PATTERN_TEST : false;
constant bool SC_USE_CLAMP_TO_BORDER_bodyDepthTex [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_bodyDepthTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_bodyDepthTex) ? SC_USE_CLAMP_TO_BORDER_bodyDepthTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_distortionTex [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_distortionTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_distortionTex) ? SC_USE_CLAMP_TO_BORDER_distortionTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_fluidPressure [[function_constant(33)]];
constant bool SC_USE_CLAMP_TO_BORDER_fluidPressure_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_fluidPressure) ? SC_USE_CLAMP_TO_BORDER_fluidPressure : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(34)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_oceanHeightmap [[function_constant(35)]];
constant bool SC_USE_CLAMP_TO_BORDER_oceanHeightmap_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_oceanHeightmap) ? SC_USE_CLAMP_TO_BORDER_oceanHeightmap : false;
constant bool SC_USE_CLAMP_TO_BORDER_oceanNormal [[function_constant(36)]];
constant bool SC_USE_CLAMP_TO_BORDER_oceanNormal_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_oceanNormal) ? SC_USE_CLAMP_TO_BORDER_oceanNormal : false;
constant bool SC_USE_CLAMP_TO_BORDER_screenTex [[function_constant(37)]];
constant bool SC_USE_CLAMP_TO_BORDER_screenTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_screenTex) ? SC_USE_CLAMP_TO_BORDER_screenTex : false;
constant bool SC_USE_UV_MIN_MAX_bodyDepthTex [[function_constant(38)]];
constant bool SC_USE_UV_MIN_MAX_bodyDepthTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_bodyDepthTex) ? SC_USE_UV_MIN_MAX_bodyDepthTex : false;
constant bool SC_USE_UV_MIN_MAX_distortionTex [[function_constant(39)]];
constant bool SC_USE_UV_MIN_MAX_distortionTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_distortionTex) ? SC_USE_UV_MIN_MAX_distortionTex : false;
constant bool SC_USE_UV_MIN_MAX_fluidPressure [[function_constant(40)]];
constant bool SC_USE_UV_MIN_MAX_fluidPressure_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_fluidPressure) ? SC_USE_UV_MIN_MAX_fluidPressure : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(41)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_oceanHeightmap [[function_constant(42)]];
constant bool SC_USE_UV_MIN_MAX_oceanHeightmap_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_oceanHeightmap) ? SC_USE_UV_MIN_MAX_oceanHeightmap : false;
constant bool SC_USE_UV_MIN_MAX_oceanNormal [[function_constant(43)]];
constant bool SC_USE_UV_MIN_MAX_oceanNormal_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_oceanNormal) ? SC_USE_UV_MIN_MAX_oceanNormal : false;
constant bool SC_USE_UV_MIN_MAX_screenTex [[function_constant(44)]];
constant bool SC_USE_UV_MIN_MAX_screenTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_screenTex) ? SC_USE_UV_MIN_MAX_screenTex : false;
constant bool SC_USE_UV_TRANSFORM_bodyDepthTex [[function_constant(45)]];
constant bool SC_USE_UV_TRANSFORM_bodyDepthTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_bodyDepthTex) ? SC_USE_UV_TRANSFORM_bodyDepthTex : false;
constant bool SC_USE_UV_TRANSFORM_distortionTex [[function_constant(46)]];
constant bool SC_USE_UV_TRANSFORM_distortionTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_distortionTex) ? SC_USE_UV_TRANSFORM_distortionTex : false;
constant bool SC_USE_UV_TRANSFORM_fluidPressure [[function_constant(47)]];
constant bool SC_USE_UV_TRANSFORM_fluidPressure_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_fluidPressure) ? SC_USE_UV_TRANSFORM_fluidPressure : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(48)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_oceanHeightmap [[function_constant(49)]];
constant bool SC_USE_UV_TRANSFORM_oceanHeightmap_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_oceanHeightmap) ? SC_USE_UV_TRANSFORM_oceanHeightmap : false;
constant bool SC_USE_UV_TRANSFORM_oceanNormal [[function_constant(50)]];
constant bool SC_USE_UV_TRANSFORM_oceanNormal_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_oceanNormal) ? SC_USE_UV_TRANSFORM_oceanNormal : false;
constant bool SC_USE_UV_TRANSFORM_screenTex [[function_constant(51)]];
constant bool SC_USE_UV_TRANSFORM_screenTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_screenTex) ? SC_USE_UV_TRANSFORM_screenTex : false;
constant bool UseViewSpaceDepthVariant [[function_constant(52)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool bodyDepthTexHasSwappedViews [[function_constant(53)]];
constant bool bodyDepthTexHasSwappedViews_tmp = is_function_constant_defined(bodyDepthTexHasSwappedViews) ? bodyDepthTexHasSwappedViews : false;
constant bool distortionTexHasSwappedViews [[function_constant(54)]];
constant bool distortionTexHasSwappedViews_tmp = is_function_constant_defined(distortionTexHasSwappedViews) ? distortionTexHasSwappedViews : false;
constant bool fluidPressureHasSwappedViews [[function_constant(55)]];
constant bool fluidPressureHasSwappedViews_tmp = is_function_constant_defined(fluidPressureHasSwappedViews) ? fluidPressureHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(56)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool oceanHeightmapHasSwappedViews [[function_constant(57)]];
constant bool oceanHeightmapHasSwappedViews_tmp = is_function_constant_defined(oceanHeightmapHasSwappedViews) ? oceanHeightmapHasSwappedViews : false;
constant bool oceanNormalHasSwappedViews [[function_constant(58)]];
constant bool oceanNormalHasSwappedViews_tmp = is_function_constant_defined(oceanNormalHasSwappedViews) ? oceanNormalHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(59)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(60)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(61)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(62)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(63)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(64)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(65)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(66)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(67)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(68)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(69)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(70)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(71)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(72)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(73)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(74)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_EnvmapDiffuseHasSwappedViews [[function_constant(75)]];
constant bool sc_EnvmapDiffuseHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapDiffuseHasSwappedViews) ? sc_EnvmapDiffuseHasSwappedViews : false;
constant bool sc_EnvmapSpecularHasSwappedViews [[function_constant(76)]];
constant bool sc_EnvmapSpecularHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapSpecularHasSwappedViews) ? sc_EnvmapSpecularHasSwappedViews : false;
constant bool sc_FramebufferFetch [[function_constant(77)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_HasDiffuseEnvmap [[function_constant(78)]];
constant bool sc_HasDiffuseEnvmap_tmp = is_function_constant_defined(sc_HasDiffuseEnvmap) ? sc_HasDiffuseEnvmap : false;
constant bool sc_IsEditor [[function_constant(79)]];
constant bool sc_IsEditor_tmp = is_function_constant_defined(sc_IsEditor) ? sc_IsEditor : false;
constant bool sc_LightEstimation [[function_constant(80)]];
constant bool sc_LightEstimation_tmp = is_function_constant_defined(sc_LightEstimation) ? sc_LightEstimation : false;
constant bool sc_MotionVectorsPass [[function_constant(81)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(82)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(83)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(84)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(85)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(86)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(87)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews [[function_constant(88)]];
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationHasSwappedViews) ? sc_RayTracingGlobalIlluminationHasSwappedViews : false;
constant bool sc_RayTracingReflectionsHasSwappedViews [[function_constant(89)]];
constant bool sc_RayTracingReflectionsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingReflectionsHasSwappedViews) ? sc_RayTracingReflectionsHasSwappedViews : false;
constant bool sc_RayTracingShadowsHasSwappedViews [[function_constant(90)]];
constant bool sc_RayTracingShadowsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingShadowsHasSwappedViews) ? sc_RayTracingShadowsHasSwappedViews : false;
constant bool sc_RenderAlphaToColor [[function_constant(91)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_SSAOEnabled [[function_constant(92)]];
constant bool sc_SSAOEnabled_tmp = is_function_constant_defined(sc_SSAOEnabled) ? sc_SSAOEnabled : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(93)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(94)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(95)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(96)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(97)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant bool screenTexHasSwappedViews [[function_constant(98)]];
constant bool screenTexHasSwappedViews_tmp = is_function_constant_defined(screenTexHasSwappedViews) ? screenTexHasSwappedViews : false;
constant int SC_DEVICE_CLASS [[function_constant(99)]];
constant int SC_DEVICE_CLASS_tmp = is_function_constant_defined(SC_DEVICE_CLASS) ? SC_DEVICE_CLASS : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_bodyDepthTex [[function_constant(100)]];
constant int SC_SOFTWARE_WRAP_MODE_U_bodyDepthTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_bodyDepthTex) ? SC_SOFTWARE_WRAP_MODE_U_bodyDepthTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_distortionTex [[function_constant(101)]];
constant int SC_SOFTWARE_WRAP_MODE_U_distortionTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_distortionTex) ? SC_SOFTWARE_WRAP_MODE_U_distortionTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_fluidPressure [[function_constant(102)]];
constant int SC_SOFTWARE_WRAP_MODE_U_fluidPressure_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_fluidPressure) ? SC_SOFTWARE_WRAP_MODE_U_fluidPressure : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(103)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap [[function_constant(104)]];
constant int SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap) ? SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_oceanNormal [[function_constant(105)]];
constant int SC_SOFTWARE_WRAP_MODE_U_oceanNormal_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_oceanNormal) ? SC_SOFTWARE_WRAP_MODE_U_oceanNormal : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_screenTex [[function_constant(106)]];
constant int SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_screenTex) ? SC_SOFTWARE_WRAP_MODE_U_screenTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_bodyDepthTex [[function_constant(107)]];
constant int SC_SOFTWARE_WRAP_MODE_V_bodyDepthTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_bodyDepthTex) ? SC_SOFTWARE_WRAP_MODE_V_bodyDepthTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_distortionTex [[function_constant(108)]];
constant int SC_SOFTWARE_WRAP_MODE_V_distortionTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_distortionTex) ? SC_SOFTWARE_WRAP_MODE_V_distortionTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_fluidPressure [[function_constant(109)]];
constant int SC_SOFTWARE_WRAP_MODE_V_fluidPressure_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_fluidPressure) ? SC_SOFTWARE_WRAP_MODE_V_fluidPressure : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(110)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap [[function_constant(111)]];
constant int SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap) ? SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_oceanNormal [[function_constant(112)]];
constant int SC_SOFTWARE_WRAP_MODE_V_oceanNormal_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_oceanNormal) ? SC_SOFTWARE_WRAP_MODE_V_oceanNormal : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_screenTex [[function_constant(113)]];
constant int SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_screenTex) ? SC_SOFTWARE_WRAP_MODE_V_screenTex : -1;
constant int bodyDepthTexLayout [[function_constant(114)]];
constant int bodyDepthTexLayout_tmp = is_function_constant_defined(bodyDepthTexLayout) ? bodyDepthTexLayout : 0;
constant int distortionTexLayout [[function_constant(115)]];
constant int distortionTexLayout_tmp = is_function_constant_defined(distortionTexLayout) ? distortionTexLayout : 0;
constant int fluidPressureLayout [[function_constant(116)]];
constant int fluidPressureLayout_tmp = is_function_constant_defined(fluidPressureLayout) ? fluidPressureLayout : 0;
constant int intensityTextureLayout [[function_constant(117)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int oceanHeightmapLayout [[function_constant(118)]];
constant int oceanHeightmapLayout_tmp = is_function_constant_defined(oceanHeightmapLayout) ? oceanHeightmapLayout : 0;
constant int oceanNormalLayout [[function_constant(119)]];
constant int oceanNormalLayout_tmp = is_function_constant_defined(oceanNormalLayout) ? oceanNormalLayout : 0;
constant int sc_AmbientLightMode0 [[function_constant(120)]];
constant int sc_AmbientLightMode0_tmp = is_function_constant_defined(sc_AmbientLightMode0) ? sc_AmbientLightMode0 : 0;
constant int sc_AmbientLightMode1 [[function_constant(121)]];
constant int sc_AmbientLightMode1_tmp = is_function_constant_defined(sc_AmbientLightMode1) ? sc_AmbientLightMode1 : 0;
constant int sc_AmbientLightMode2 [[function_constant(122)]];
constant int sc_AmbientLightMode2_tmp = is_function_constant_defined(sc_AmbientLightMode2) ? sc_AmbientLightMode2 : 0;
constant int sc_AmbientLightMode_Constant [[function_constant(123)]];
constant int sc_AmbientLightMode_Constant_tmp = is_function_constant_defined(sc_AmbientLightMode_Constant) ? sc_AmbientLightMode_Constant : 0;
constant int sc_AmbientLightMode_EnvironmentMap [[function_constant(124)]];
constant int sc_AmbientLightMode_EnvironmentMap_tmp = is_function_constant_defined(sc_AmbientLightMode_EnvironmentMap) ? sc_AmbientLightMode_EnvironmentMap : 0;
constant int sc_AmbientLightMode_FromCamera [[function_constant(125)]];
constant int sc_AmbientLightMode_FromCamera_tmp = is_function_constant_defined(sc_AmbientLightMode_FromCamera) ? sc_AmbientLightMode_FromCamera : 0;
constant int sc_AmbientLightMode_SphericalHarmonics [[function_constant(126)]];
constant int sc_AmbientLightMode_SphericalHarmonics_tmp = is_function_constant_defined(sc_AmbientLightMode_SphericalHarmonics) ? sc_AmbientLightMode_SphericalHarmonics : 0;
constant int sc_AmbientLightsCount [[function_constant(127)]];
constant int sc_AmbientLightsCount_tmp = is_function_constant_defined(sc_AmbientLightsCount) ? sc_AmbientLightsCount : 0;
constant int sc_DepthBufferMode [[function_constant(128)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_DirectionalLightsCount [[function_constant(129)]];
constant int sc_DirectionalLightsCount_tmp = is_function_constant_defined(sc_DirectionalLightsCount) ? sc_DirectionalLightsCount : 0;
constant int sc_EnvLightMode [[function_constant(130)]];
constant int sc_EnvLightMode_tmp = is_function_constant_defined(sc_EnvLightMode) ? sc_EnvLightMode : 0;
constant int sc_EnvmapDiffuseLayout [[function_constant(131)]];
constant int sc_EnvmapDiffuseLayout_tmp = is_function_constant_defined(sc_EnvmapDiffuseLayout) ? sc_EnvmapDiffuseLayout : 0;
constant int sc_EnvmapSpecularLayout [[function_constant(132)]];
constant int sc_EnvmapSpecularLayout_tmp = is_function_constant_defined(sc_EnvmapSpecularLayout) ? sc_EnvmapSpecularLayout : 0;
constant int sc_LightEstimationSGCount [[function_constant(133)]];
constant int sc_LightEstimationSGCount_tmp = is_function_constant_defined(sc_LightEstimationSGCount) ? sc_LightEstimationSGCount : 0;
constant int sc_PointLightsCount [[function_constant(134)]];
constant int sc_PointLightsCount_tmp = is_function_constant_defined(sc_PointLightsCount) ? sc_PointLightsCount : 0;
constant int sc_RayTracingGlobalIlluminationLayout [[function_constant(135)]];
constant int sc_RayTracingGlobalIlluminationLayout_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationLayout) ? sc_RayTracingGlobalIlluminationLayout : 0;
constant int sc_RayTracingReflectionsLayout [[function_constant(136)]];
constant int sc_RayTracingReflectionsLayout_tmp = is_function_constant_defined(sc_RayTracingReflectionsLayout) ? sc_RayTracingReflectionsLayout : 0;
constant int sc_RayTracingShadowsLayout [[function_constant(137)]];
constant int sc_RayTracingShadowsLayout_tmp = is_function_constant_defined(sc_RayTracingShadowsLayout) ? sc_RayTracingShadowsLayout : 0;
constant int sc_RenderingSpace [[function_constant(138)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(139)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(140)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(141)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(142)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(143)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;
constant int screenTexLayout [[function_constant(144)]];
constant int screenTexLayout_tmp = is_function_constant_defined(screenTexLayout) ? screenTexLayout : 0;

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
float N123_fbm;
float N123_TatalHeightRemap;
float3 SurfacePosition_WorldSpace;
float3 VertexNormal_WorldSpace;
float3 VertexTangent_WorldSpace;
float3 VertexBinormal_WorldSpace;
float2 Surface_UVCoord0;
float2 gScreenCoord;
float3 ViewDirWS;
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
float3 oceanMin;
float3 oceanMax;
float speed;
float enableFoam;
float fbmScale;
float enableInfinite;
float4 screenTexSize;
float4 screenTexDims;
float4 screenTexView;
float3x3 screenTexTransform;
float4 screenTexUvMinMax;
float4 screenTexBorderColor;
float4 distortionTexSize;
float4 distortionTexDims;
float4 distortionTexView;
float3x3 distortionTexTransform;
float4 distortionTexUvMinMax;
float4 distortionTexBorderColor;
float distortionScale;
float distortionIntensity;
float4 oceanHeightmapSize;
float4 oceanHeightmapDims;
float4 oceanHeightmapView;
float3x3 oceanHeightmapTransform;
float4 oceanHeightmapUvMinMax;
float4 oceanHeightmapBorderColor;
float4 oceanNormalSize;
float4 oceanNormalDims;
float4 oceanNormalView;
float3x3 oceanNormalTransform;
float4 oceanNormalUvMinMax;
float4 oceanNormalBorderColor;
float enableFluid;
float2 pressureRange;
float4 fluidPressureSize;
float4 fluidPressureDims;
float4 fluidPressureView;
float3x3 fluidPressureTransform;
float4 fluidPressureUvMinMax;
float4 fluidPressureBorderColor;
float fluidMul;
float2 unpackVal;
float4 colorTrough;
float4 colorMiddle;
float4 colorCrest;
float bodyIntersection;
float4 bodyDepthTexSize;
float4 bodyDepthTexDims;
float4 bodyDepthTexView;
float3x3 bodyDepthTexTransform;
float4 bodyDepthTexUvMinMax;
float4 bodyDepthTexBorderColor;
float4 bodyDepthTexProjectionMatrixTerms;
float Port_Position1_N030;
float Port_Position2_N030;
float Port_Position3_N030;
float Port_Position4_N030;
float Port_Opacity_N013;
float3 Port_Emissive_N013;
float Port_Metallic_N013;
float Port_Roughness_N013;
float3 Port_AO_N013;
float3 Port_SpecularAO_N013;
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
texture2d<float> bodyDepthTex [[id(1)]];
texture2d<float> distortionTex [[id(2)]];
texture2d<float> fluidPressure [[id(3)]];
texture2d<float> intensityTexture [[id(4)]];
texture2d<float> oceanHeightmap [[id(5)]];
texture2d<float> oceanNormal [[id(6)]];
texture2d<float> sc_EnvmapDiffuse [[id(7)]];
texture2d<float> sc_EnvmapSpecular [[id(8)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(17)]];
texture2d<float> sc_RayTracingReflections [[id(18)]];
texture2d<float> sc_RayTracingShadows [[id(19)]];
texture2d<float> sc_SSAOTexture [[id(20)]];
texture2d<float> sc_ScreenTexture [[id(21)]];
texture2d<float> sc_ShadowTexture [[id(22)]];
texture2d<float> screenTex [[id(24)]];
sampler bodyDepthTexSmpSC [[id(25)]];
sampler distortionTexSmpSC [[id(26)]];
sampler fluidPressureSmpSC [[id(27)]];
sampler intensityTextureSmpSC [[id(28)]];
sampler oceanHeightmapSmpSC [[id(29)]];
sampler oceanNormalSmpSC [[id(30)]];
sampler sc_EnvmapDiffuseSmpSC [[id(31)]];
sampler sc_EnvmapSpecularSmpSC [[id(32)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(34)]];
sampler sc_RayTracingReflectionsSmpSC [[id(35)]];
sampler sc_RayTracingShadowsSmpSC [[id(36)]];
sampler sc_SSAOTextureSmpSC [[id(37)]];
sampler sc_ScreenTextureSmpSC [[id(38)]];
sampler sc_ShadowTextureSmpSC [[id(39)]];
sampler screenTexSmpSC [[id(41)]];
constant userUniformsObj* UserUniforms [[id(42)]];
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
vertex main_vert_out main_vert(main_vert_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],uint gl_InstanceIndex [[instance_id]])
{
main_vert_out out={};
float3 N123_OceanAabbMin=float3(0.0);
float3 N123_OceanAabbMax=float3(0.0);
float N123_OceanSpeed=0.0;
float N123_EnableFoam=0.0;
float N123_FBMScale=0.0;
float N123_EnableInfinite=0.0;
float N123_EnableFluid=0.0;
float2 N123_pressureRange=float2(0.0);
float N123_FluidMul=0.0;
float2 N123_unpackVal=float2(0.0);
float3 N123_SurfacePosition=float3(0.0);
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
Globals.SurfacePosition_WorldSpace=out.varPosAndMotion.xyz;
Globals.VertexNormal_WorldSpace=out.varNormalAndMotion.xyz;
Globals.VertexTangent_WorldSpace=out.varTangent.xyz;
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*out.varTangent.w;
Globals.Surface_UVCoord0=v.texture0;
int l9_122=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_122=0;
}
else
{
l9_122=gl_InstanceIndex%2;
}
int l9_123=l9_122;
float4 Result=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_123]*float4(out.varPosAndMotion.xyz,1.0);
float3 l9_124=Result.xyz/float3(Result.w);
Result=float4(l9_124.x,l9_124.y,l9_124.z,Result.w);
Globals.gScreenCoord=(Result.xy*0.5)+float2(0.5);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
float3 WorldPosition=out.varPosAndMotion.xyz;
float3 WorldNormal=out.varNormalAndMotion.xyz;
float3 WorldTangent=out.varTangent.xyz;
float3 SurfacePosition_N123=float3(0.0);
ssGlobals param_2=Globals;
ssGlobals tempGlobals=param_2;
float3 param_1=float3(0.0);
float3 l9_125=float3(0.0);
float3 l9_126=float3(0.0);
float3 l9_127=(*sc_set0.UserUniforms).oceanMin;
l9_126=l9_127;
l9_125=l9_126;
float3 l9_128=l9_125;
N123_OceanAabbMin=l9_128;
float3 l9_129=float3(0.0);
float3 l9_130=float3(0.0);
float3 l9_131=(*sc_set0.UserUniforms).oceanMax;
l9_130=l9_131;
l9_129=l9_130;
float3 l9_132=l9_129;
N123_OceanAabbMax=l9_132;
float l9_133=0.0;
float l9_134=0.0;
float l9_135=(*sc_set0.UserUniforms).speed;
l9_134=l9_135;
l9_133=l9_134;
float l9_136=l9_133;
N123_OceanSpeed=l9_136;
float l9_137=0.0;
float l9_138=0.0;
float l9_139=(*sc_set0.UserUniforms).enableFoam;
l9_138=l9_139;
l9_137=l9_138;
float l9_140=l9_137;
N123_EnableFoam=l9_140;
float l9_141=0.0;
float l9_142=0.0;
float l9_143=(*sc_set0.UserUniforms).fbmScale;
l9_142=l9_143;
l9_141=l9_142;
float l9_144=l9_141;
N123_FBMScale=l9_144;
float l9_145=0.0;
float l9_146=0.0;
float l9_147=(*sc_set0.UserUniforms).enableInfinite;
l9_146=l9_147;
l9_145=l9_146;
float l9_148=l9_145;
N123_EnableInfinite=l9_148;
float l9_149=0.0;
float l9_150=0.0;
float l9_151=(*sc_set0.UserUniforms).enableFluid;
l9_150=l9_151;
l9_149=l9_150;
float l9_152=l9_149;
N123_EnableFluid=l9_152;
float2 l9_153=float2(0.0);
float2 l9_154=float2(0.0);
float2 l9_155=(*sc_set0.UserUniforms).pressureRange;
l9_154=l9_155;
l9_153=l9_154;
float2 l9_156=l9_153;
N123_pressureRange=l9_156;
float l9_157=0.0;
float l9_158=0.0;
float l9_159=(*sc_set0.UserUniforms).fluidMul;
l9_158=l9_159;
l9_157=l9_158;
float l9_160=l9_157;
N123_FluidMul=l9_160;
float2 l9_161=float2(0.0);
float2 l9_162=float2(0.0);
float2 l9_163=(*sc_set0.UserUniforms).unpackVal;
l9_162=l9_163;
l9_161=l9_162;
float2 l9_164=l9_161;
N123_unpackVal=l9_164;
float l9_165=0.0;
l9_165=tempGlobals.N123_TatalHeightRemap;
float4 l9_166=float4(0.0);
float4 l9_167=(*sc_set0.UserUniforms).colorTrough;
l9_166=l9_167;
float4 l9_168=float4(0.0);
float4 l9_169=(*sc_set0.UserUniforms).colorMiddle;
l9_168=l9_169;
float4 l9_170=float4(0.0);
float4 l9_171=(*sc_set0.UserUniforms).colorCrest;
l9_170=l9_171;
float l9_172=0.0;
l9_172=tempGlobals.N123_fbm;
float4 l9_173=float4(0.0);
l9_173=mix(l9_168,l9_170,float4(l9_172));
float l9_174=l9_165;
float4 l9_175=l9_166;
float l9_176=(*sc_set0.UserUniforms).Port_Position1_N030;
float4 l9_177=l9_166;
float l9_178=(*sc_set0.UserUniforms).Port_Position2_N030;
float4 l9_179=l9_166;
float l9_180=(*sc_set0.UserUniforms).Port_Position3_N030;
float4 l9_181=l9_168;
float l9_182=(*sc_set0.UserUniforms).Port_Position4_N030;
float4 l9_183=l9_173;
float4 l9_184=l9_173;
l9_174=fast::clamp(l9_174,0.0,1.0);
float4 l9_185;
if (l9_174<l9_176)
{
l9_185=mix(l9_175,l9_177,float4(fast::clamp(l9_174/l9_176,0.0,1.0)));
}
else
{
if (l9_174<l9_178)
{
l9_185=mix(l9_177,l9_179,float4(fast::clamp((l9_174-l9_176)/(l9_178-l9_176),0.0,1.0)));
}
else
{
if (l9_174<l9_180)
{
l9_185=mix(l9_179,l9_181,float4(fast::clamp((l9_174-l9_178)/(l9_180-l9_178),0.0,1.0)));
}
else
{
if (l9_174<l9_182)
{
l9_185=mix(l9_181,l9_183,float4(fast::clamp((l9_174-l9_180)/(l9_182-l9_180),0.0,1.0)));
}
else
{
l9_185=mix(l9_183,l9_184,float4(fast::clamp((l9_174-l9_182)/(1.0-l9_182),0.0,1.0)));
}
}
}
}
bool l9_186=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_187;
if (l9_186)
{
l9_187=!PreviewInfo.Saved;
}
else
{
l9_187=l9_186;
}
bool l9_188;
if (l9_187)
{
l9_188=30==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_188=l9_187;
}
if (l9_188)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=l9_185;
PreviewInfo.Color.w=1.0;
}
float2 l9_189=tempGlobals.Surface_UVCoord0;
float2 l9_190=l9_189;
float3 l9_191=tempGlobals.SurfacePosition_WorldSpace;
float3 l9_192=l9_191;
float2 l9_193=l9_190;
if (N123_EnableInfinite==1.0)
{
float2 l9_194=float2(N123_OceanAabbMin.x,N123_OceanAabbMin.z);
float2 l9_195=float2(N123_OceanAabbMax.x,N123_OceanAabbMax.z);
float3 l9_196=(*sc_set0.UserUniforms).sc_Camera.position;
float2 l9_197=float2(0.0)+(((l9_196.xz-l9_194)*1.0)/((l9_195-l9_194)+float2(1e-06)));
l9_197.y=1.0-l9_197.y;
l9_193=(l9_190+l9_197)-float2(0.5);
}
float2 l9_198=l9_193;
float4 l9_199=float4(0.0);
int l9_200;
if ((int(oceanHeightmapHasSwappedViews_tmp)!=0))
{
int l9_201=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_201=0;
}
else
{
l9_201=gl_InstanceIndex%2;
}
int l9_202=l9_201;
l9_200=1-l9_202;
}
else
{
int l9_203=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_203=0;
}
else
{
l9_203=gl_InstanceIndex%2;
}
int l9_204=l9_203;
l9_200=l9_204;
}
int l9_205=l9_200;
int l9_206=oceanHeightmapLayout_tmp;
int l9_207=l9_205;
float2 l9_208=l9_198;
bool l9_209=(int(SC_USE_UV_TRANSFORM_oceanHeightmap_tmp)!=0);
float3x3 l9_210=(*sc_set0.UserUniforms).oceanHeightmapTransform;
int2 l9_211=int2(SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap_tmp,SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap_tmp);
bool l9_212=(int(SC_USE_UV_MIN_MAX_oceanHeightmap_tmp)!=0);
float4 l9_213=(*sc_set0.UserUniforms).oceanHeightmapUvMinMax;
bool l9_214=(int(SC_USE_CLAMP_TO_BORDER_oceanHeightmap_tmp)!=0);
float4 l9_215=(*sc_set0.UserUniforms).oceanHeightmapBorderColor;
float l9_216=0.0;
bool l9_217=l9_214&&(!l9_212);
float l9_218=1.0;
float l9_219=l9_208.x;
int l9_220=l9_211.x;
if (l9_220==1)
{
l9_219=fract(l9_219);
}
else
{
if (l9_220==2)
{
float l9_221=fract(l9_219);
float l9_222=l9_219-l9_221;
float l9_223=step(0.25,fract(l9_222*0.5));
l9_219=mix(l9_221,1.0-l9_221,fast::clamp(l9_223,0.0,1.0));
}
}
l9_208.x=l9_219;
float l9_224=l9_208.y;
int l9_225=l9_211.y;
if (l9_225==1)
{
l9_224=fract(l9_224);
}
else
{
if (l9_225==2)
{
float l9_226=fract(l9_224);
float l9_227=l9_224-l9_226;
float l9_228=step(0.25,fract(l9_227*0.5));
l9_224=mix(l9_226,1.0-l9_226,fast::clamp(l9_228,0.0,1.0));
}
}
l9_208.y=l9_224;
if (l9_212)
{
bool l9_229=l9_214;
bool l9_230;
if (l9_229)
{
l9_230=l9_211.x==3;
}
else
{
l9_230=l9_229;
}
float l9_231=l9_208.x;
float l9_232=l9_213.x;
float l9_233=l9_213.z;
bool l9_234=l9_230;
float l9_235=l9_218;
float l9_236=fast::clamp(l9_231,l9_232,l9_233);
float l9_237=step(abs(l9_231-l9_236),9.9999997e-06);
l9_235*=(l9_237+((1.0-float(l9_234))*(1.0-l9_237)));
l9_231=l9_236;
l9_208.x=l9_231;
l9_218=l9_235;
bool l9_238=l9_214;
bool l9_239;
if (l9_238)
{
l9_239=l9_211.y==3;
}
else
{
l9_239=l9_238;
}
float l9_240=l9_208.y;
float l9_241=l9_213.y;
float l9_242=l9_213.w;
bool l9_243=l9_239;
float l9_244=l9_218;
float l9_245=fast::clamp(l9_240,l9_241,l9_242);
float l9_246=step(abs(l9_240-l9_245),9.9999997e-06);
l9_244*=(l9_246+((1.0-float(l9_243))*(1.0-l9_246)));
l9_240=l9_245;
l9_208.y=l9_240;
l9_218=l9_244;
}
float2 l9_247=l9_208;
bool l9_248=l9_209;
float3x3 l9_249=l9_210;
if (l9_248)
{
l9_247=float2((l9_249*float3(l9_247,1.0)).xy);
}
float2 l9_250=l9_247;
l9_208=l9_250;
float l9_251=l9_208.x;
int l9_252=l9_211.x;
bool l9_253=l9_217;
float l9_254=l9_218;
if ((l9_252==0)||(l9_252==3))
{
float l9_255=l9_251;
float l9_256=0.0;
float l9_257=1.0;
bool l9_258=l9_253;
float l9_259=l9_254;
float l9_260=fast::clamp(l9_255,l9_256,l9_257);
float l9_261=step(abs(l9_255-l9_260),9.9999997e-06);
l9_259*=(l9_261+((1.0-float(l9_258))*(1.0-l9_261)));
l9_255=l9_260;
l9_251=l9_255;
l9_254=l9_259;
}
l9_208.x=l9_251;
l9_218=l9_254;
float l9_262=l9_208.y;
int l9_263=l9_211.y;
bool l9_264=l9_217;
float l9_265=l9_218;
if ((l9_263==0)||(l9_263==3))
{
float l9_266=l9_262;
float l9_267=0.0;
float l9_268=1.0;
bool l9_269=l9_264;
float l9_270=l9_265;
float l9_271=fast::clamp(l9_266,l9_267,l9_268);
float l9_272=step(abs(l9_266-l9_271),9.9999997e-06);
l9_270*=(l9_272+((1.0-float(l9_269))*(1.0-l9_272)));
l9_266=l9_271;
l9_262=l9_266;
l9_265=l9_270;
}
l9_208.y=l9_262;
l9_218=l9_265;
float2 l9_273=l9_208;
int l9_274=l9_206;
int l9_275=l9_207;
float l9_276=l9_216;
float2 l9_277=l9_273;
int l9_278=l9_274;
int l9_279=l9_275;
float3 l9_280=float3(0.0);
if (l9_278==0)
{
l9_280=float3(l9_277,0.0);
}
else
{
if (l9_278==1)
{
l9_280=float3(l9_277.x,(l9_277.y*0.5)+(0.5-(float(l9_279)*0.5)),0.0);
}
else
{
l9_280=float3(l9_277,float(l9_279));
}
}
float3 l9_281=l9_280;
float3 l9_282=l9_281;
float4 l9_283=sc_set0.oceanHeightmap.sample(sc_set0.oceanHeightmapSmpSC,l9_282.xy,level(l9_276));
float4 l9_284=l9_283;
if (l9_214)
{
l9_284=mix(l9_215,l9_284,float4(l9_218));
}
float4 l9_285=l9_284;
l9_199=l9_285;
float4 l9_286=l9_199;
float2 l9_287=l9_286.xy;
float l9_288=N123_unpackVal.x;
float l9_289=N123_unpackVal.y;
float l9_290=0.0;
float2 l9_291=l9_287;
float l9_292=l9_288;
float l9_293=l9_289;
float l9_294=0.99998999;
float2 l9_295=l9_291;
#if (1)
{
l9_295=floor((l9_295*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_296=dot(l9_295,float2(1.0,0.0039215689));
float l9_297=l9_296;
float l9_298=0.0;
float l9_299=l9_294;
float l9_300=l9_292;
float l9_301=l9_293;
float l9_302=l9_300+(((l9_297-l9_298)*(l9_301-l9_300))/(l9_299-l9_298));
float l9_303=l9_302;
l9_290=l9_303;
float l9_304=l9_290;
float l9_305=l9_304;
float l9_306=0.0+(((l9_305-N123_unpackVal.x)*1.0)/((N123_unpackVal.y-N123_unpackVal.x)+1e-06));
tempGlobals.N123_TatalHeightRemap=l9_306;
float l9_307=l9_305;
if (N123_EnableFluid==1.0)
{
float2 l9_308=l9_190;
float4 l9_309=float4(0.0);
int l9_310;
if ((int(fluidPressureHasSwappedViews_tmp)!=0))
{
int l9_311=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_311=0;
}
else
{
l9_311=gl_InstanceIndex%2;
}
int l9_312=l9_311;
l9_310=1-l9_312;
}
else
{
int l9_313=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_313=0;
}
else
{
l9_313=gl_InstanceIndex%2;
}
int l9_314=l9_313;
l9_310=l9_314;
}
int l9_315=l9_310;
int l9_316=fluidPressureLayout_tmp;
int l9_317=l9_315;
float2 l9_318=l9_308;
bool l9_319=(int(SC_USE_UV_TRANSFORM_fluidPressure_tmp)!=0);
float3x3 l9_320=(*sc_set0.UserUniforms).fluidPressureTransform;
int2 l9_321=int2(SC_SOFTWARE_WRAP_MODE_U_fluidPressure_tmp,SC_SOFTWARE_WRAP_MODE_V_fluidPressure_tmp);
bool l9_322=(int(SC_USE_UV_MIN_MAX_fluidPressure_tmp)!=0);
float4 l9_323=(*sc_set0.UserUniforms).fluidPressureUvMinMax;
bool l9_324=(int(SC_USE_CLAMP_TO_BORDER_fluidPressure_tmp)!=0);
float4 l9_325=(*sc_set0.UserUniforms).fluidPressureBorderColor;
float l9_326=0.0;
bool l9_327=l9_324&&(!l9_322);
float l9_328=1.0;
float l9_329=l9_318.x;
int l9_330=l9_321.x;
if (l9_330==1)
{
l9_329=fract(l9_329);
}
else
{
if (l9_330==2)
{
float l9_331=fract(l9_329);
float l9_332=l9_329-l9_331;
float l9_333=step(0.25,fract(l9_332*0.5));
l9_329=mix(l9_331,1.0-l9_331,fast::clamp(l9_333,0.0,1.0));
}
}
l9_318.x=l9_329;
float l9_334=l9_318.y;
int l9_335=l9_321.y;
if (l9_335==1)
{
l9_334=fract(l9_334);
}
else
{
if (l9_335==2)
{
float l9_336=fract(l9_334);
float l9_337=l9_334-l9_336;
float l9_338=step(0.25,fract(l9_337*0.5));
l9_334=mix(l9_336,1.0-l9_336,fast::clamp(l9_338,0.0,1.0));
}
}
l9_318.y=l9_334;
if (l9_322)
{
bool l9_339=l9_324;
bool l9_340;
if (l9_339)
{
l9_340=l9_321.x==3;
}
else
{
l9_340=l9_339;
}
float l9_341=l9_318.x;
float l9_342=l9_323.x;
float l9_343=l9_323.z;
bool l9_344=l9_340;
float l9_345=l9_328;
float l9_346=fast::clamp(l9_341,l9_342,l9_343);
float l9_347=step(abs(l9_341-l9_346),9.9999997e-06);
l9_345*=(l9_347+((1.0-float(l9_344))*(1.0-l9_347)));
l9_341=l9_346;
l9_318.x=l9_341;
l9_328=l9_345;
bool l9_348=l9_324;
bool l9_349;
if (l9_348)
{
l9_349=l9_321.y==3;
}
else
{
l9_349=l9_348;
}
float l9_350=l9_318.y;
float l9_351=l9_323.y;
float l9_352=l9_323.w;
bool l9_353=l9_349;
float l9_354=l9_328;
float l9_355=fast::clamp(l9_350,l9_351,l9_352);
float l9_356=step(abs(l9_350-l9_355),9.9999997e-06);
l9_354*=(l9_356+((1.0-float(l9_353))*(1.0-l9_356)));
l9_350=l9_355;
l9_318.y=l9_350;
l9_328=l9_354;
}
float2 l9_357=l9_318;
bool l9_358=l9_319;
float3x3 l9_359=l9_320;
if (l9_358)
{
l9_357=float2((l9_359*float3(l9_357,1.0)).xy);
}
float2 l9_360=l9_357;
l9_318=l9_360;
float l9_361=l9_318.x;
int l9_362=l9_321.x;
bool l9_363=l9_327;
float l9_364=l9_328;
if ((l9_362==0)||(l9_362==3))
{
float l9_365=l9_361;
float l9_366=0.0;
float l9_367=1.0;
bool l9_368=l9_363;
float l9_369=l9_364;
float l9_370=fast::clamp(l9_365,l9_366,l9_367);
float l9_371=step(abs(l9_365-l9_370),9.9999997e-06);
l9_369*=(l9_371+((1.0-float(l9_368))*(1.0-l9_371)));
l9_365=l9_370;
l9_361=l9_365;
l9_364=l9_369;
}
l9_318.x=l9_361;
l9_328=l9_364;
float l9_372=l9_318.y;
int l9_373=l9_321.y;
bool l9_374=l9_327;
float l9_375=l9_328;
if ((l9_373==0)||(l9_373==3))
{
float l9_376=l9_372;
float l9_377=0.0;
float l9_378=1.0;
bool l9_379=l9_374;
float l9_380=l9_375;
float l9_381=fast::clamp(l9_376,l9_377,l9_378);
float l9_382=step(abs(l9_376-l9_381),9.9999997e-06);
l9_380*=(l9_382+((1.0-float(l9_379))*(1.0-l9_382)));
l9_376=l9_381;
l9_372=l9_376;
l9_375=l9_380;
}
l9_318.y=l9_372;
l9_328=l9_375;
float2 l9_383=l9_318;
int l9_384=l9_316;
int l9_385=l9_317;
float l9_386=l9_326;
float2 l9_387=l9_383;
int l9_388=l9_384;
int l9_389=l9_385;
float3 l9_390=float3(0.0);
if (l9_388==0)
{
l9_390=float3(l9_387,0.0);
}
else
{
if (l9_388==1)
{
l9_390=float3(l9_387.x,(l9_387.y*0.5)+(0.5-(float(l9_389)*0.5)),0.0);
}
else
{
l9_390=float3(l9_387,float(l9_389));
}
}
float3 l9_391=l9_390;
float3 l9_392=l9_391;
float4 l9_393=sc_set0.fluidPressure.sample(sc_set0.fluidPressureSmpSC,l9_392.xy,level(l9_386));
float4 l9_394=l9_393;
if (l9_324)
{
l9_394=mix(l9_325,l9_394,float4(l9_328));
}
float4 l9_395=l9_394;
l9_309=l9_395;
float4 l9_396=l9_309;
float2 l9_397=l9_396.xy;
float l9_398=N123_pressureRange.x;
float l9_399=N123_pressureRange.y;
float l9_400=0.0;
float2 l9_401=l9_397;
float l9_402=l9_398;
float l9_403=l9_399;
float l9_404=0.99998999;
float2 l9_405=l9_401;
#if (1)
{
l9_405=floor((l9_405*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_406=dot(l9_405,float2(1.0,0.0039215689));
float l9_407=l9_406;
float l9_408=0.0;
float l9_409=l9_404;
float l9_410=l9_402;
float l9_411=l9_403;
float l9_412=l9_410+(((l9_407-l9_408)*(l9_411-l9_410))/(l9_409-l9_408));
float l9_413=l9_412;
l9_400=l9_413;
float l9_414=l9_400;
float l9_415=l9_414;
float l9_416=l9_415*N123_FluidMul;
l9_307=l9_305+l9_416;
float l9_417=(0.0+(((fast::clamp(l9_416,N123_unpackVal.x,N123_unpackVal.y)-N123_unpackVal.x)*1.0)/((N123_unpackVal.y-N123_unpackVal.x)+1e-06)))*0.60000002;
tempGlobals.N123_TatalHeightRemap+=l9_417;
}
N123_SurfacePosition=float3(0.0,l9_307,0.0)+l9_192;
tempGlobals.N123_fbm=1.0;
if (N123_EnableFoam==1.0)
{
float l9_418=tempGlobals.gTimeElapsed;
float2 l9_419=N123_SurfacePosition.zx*N123_FBMScale;
float l9_420=l9_418*N123_OceanSpeed;
float l9_421=0.0;
float2 l9_422=l9_419+float2(l9_420);
float2 l9_423=floor(l9_422);
float2 l9_424=fract(l9_422);
l9_424=(l9_424*l9_424)*(float2(3.0)-(l9_424*2.0));
float2 l9_425=l9_423;
float l9_426=fract(sin(dot(l9_425,float2(12.9898,4.1413999)))*43758.547);
float2 l9_427=l9_423+float2(1.0,0.0);
float l9_428=fract(sin(dot(l9_427,float2(12.9898,4.1413999)))*43758.547);
float2 l9_429=l9_423+float2(0.0,1.0);
float l9_430=fract(sin(dot(l9_429,float2(12.9898,4.1413999)))*43758.547);
float2 l9_431=l9_423+float2(1.0);
float l9_432=fract(sin(dot(l9_431,float2(12.9898,4.1413999)))*43758.547);
float l9_433=mix(mix(l9_426,l9_428,l9_424.x),mix(l9_430,l9_432,l9_424.x),l9_424.y);
float l9_434=l9_433*l9_433;
l9_421+=(0.5*l9_434);
l9_419=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_419)*2.02;
float2 l9_435=l9_419;
float2 l9_436=floor(l9_435);
float2 l9_437=fract(l9_435);
l9_437=(l9_437*l9_437)*(float2(3.0)-(l9_437*2.0));
float2 l9_438=l9_436;
float l9_439=fract(sin(dot(l9_438,float2(12.9898,4.1413999)))*43758.547);
float2 l9_440=l9_436+float2(1.0,0.0);
float l9_441=fract(sin(dot(l9_440,float2(12.9898,4.1413999)))*43758.547);
float2 l9_442=l9_436+float2(0.0,1.0);
float l9_443=fract(sin(dot(l9_442,float2(12.9898,4.1413999)))*43758.547);
float2 l9_444=l9_436+float2(1.0);
float l9_445=fract(sin(dot(l9_444,float2(12.9898,4.1413999)))*43758.547);
float l9_446=mix(mix(l9_439,l9_441,l9_437.x),mix(l9_443,l9_445,l9_437.x),l9_437.y);
float l9_447=l9_446*l9_446;
l9_421+=(0.03125*l9_447);
l9_419=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_419)*2.01;
float2 l9_448=l9_419;
float2 l9_449=floor(l9_448);
float2 l9_450=fract(l9_448);
l9_450=(l9_450*l9_450)*(float2(3.0)-(l9_450*2.0));
float2 l9_451=l9_449;
float l9_452=fract(sin(dot(l9_451,float2(12.9898,4.1413999)))*43758.547);
float2 l9_453=l9_449+float2(1.0,0.0);
float l9_454=fract(sin(dot(l9_453,float2(12.9898,4.1413999)))*43758.547);
float2 l9_455=l9_449+float2(0.0,1.0);
float l9_456=fract(sin(dot(l9_455,float2(12.9898,4.1413999)))*43758.547);
float2 l9_457=l9_449+float2(1.0);
float l9_458=fract(sin(dot(l9_457,float2(12.9898,4.1413999)))*43758.547);
float l9_459=mix(mix(l9_452,l9_454,l9_450.x),mix(l9_456,l9_458,l9_450.x),l9_450.y);
float l9_460=l9_459*l9_459;
l9_421+=(0.25*l9_460);
l9_419=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_419)*2.03;
float2 l9_461=l9_419;
float2 l9_462=floor(l9_461);
float2 l9_463=fract(l9_461);
l9_463=(l9_463*l9_463)*(float2(3.0)-(l9_463*2.0));
float2 l9_464=l9_462;
float l9_465=fract(sin(dot(l9_464,float2(12.9898,4.1413999)))*43758.547);
float2 l9_466=l9_462+float2(1.0,0.0);
float l9_467=fract(sin(dot(l9_466,float2(12.9898,4.1413999)))*43758.547);
float2 l9_468=l9_462+float2(0.0,1.0);
float l9_469=fract(sin(dot(l9_468,float2(12.9898,4.1413999)))*43758.547);
float2 l9_470=l9_462+float2(1.0);
float l9_471=fract(sin(dot(l9_470,float2(12.9898,4.1413999)))*43758.547);
float l9_472=mix(mix(l9_465,l9_467,l9_463.x),mix(l9_469,l9_471,l9_463.x),l9_463.y);
float l9_473=l9_472*l9_472;
l9_421+=(0.125*l9_473);
l9_419=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_419)*2.01;
float2 l9_474=l9_419;
float2 l9_475=floor(l9_474);
float2 l9_476=fract(l9_474);
l9_476=(l9_476*l9_476)*(float2(3.0)-(l9_476*2.0));
float2 l9_477=l9_475;
float l9_478=fract(sin(dot(l9_477,float2(12.9898,4.1413999)))*43758.547);
float2 l9_479=l9_475+float2(1.0,0.0);
float l9_480=fract(sin(dot(l9_479,float2(12.9898,4.1413999)))*43758.547);
float2 l9_481=l9_475+float2(0.0,1.0);
float l9_482=fract(sin(dot(l9_481,float2(12.9898,4.1413999)))*43758.547);
float2 l9_483=l9_475+float2(1.0);
float l9_484=fract(sin(dot(l9_483,float2(12.9898,4.1413999)))*43758.547);
float l9_485=mix(mix(l9_478,l9_480,l9_476.x),mix(l9_482,l9_484,l9_476.x),l9_476.y);
float l9_486=l9_485*l9_485;
l9_421+=(0.0625*l9_486);
l9_419=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_419)*2.04;
float2 l9_487=l9_419+float2(sin(l9_420));
float2 l9_488=floor(l9_487);
float2 l9_489=fract(l9_487);
l9_489=(l9_489*l9_489)*(float2(3.0)-(l9_489*2.0));
float2 l9_490=l9_488;
float l9_491=fract(sin(dot(l9_490,float2(12.9898,4.1413999)))*43758.547);
float2 l9_492=l9_488+float2(1.0,0.0);
float l9_493=fract(sin(dot(l9_492,float2(12.9898,4.1413999)))*43758.547);
float2 l9_494=l9_488+float2(0.0,1.0);
float l9_495=fract(sin(dot(l9_494,float2(12.9898,4.1413999)))*43758.547);
float2 l9_496=l9_488+float2(1.0);
float l9_497=fract(sin(dot(l9_496,float2(12.9898,4.1413999)))*43758.547);
float l9_498=mix(mix(l9_491,l9_493,l9_489.x),mix(l9_495,l9_497,l9_489.x),l9_489.y);
float l9_499=l9_498*l9_498;
l9_421+=(0.015625*l9_499);
float l9_500=l9_421/0.96875;
tempGlobals.N123_fbm=1.0-l9_500;
}
float l9_501=0.0;
l9_501=tempGlobals.N123_TatalHeightRemap;
float4 l9_502=float4(0.0);
float4 l9_503=(*sc_set0.UserUniforms).colorTrough;
l9_502=l9_503;
float4 l9_504=float4(0.0);
float4 l9_505=(*sc_set0.UserUniforms).colorMiddle;
l9_504=l9_505;
float4 l9_506=float4(0.0);
float4 l9_507=(*sc_set0.UserUniforms).colorCrest;
l9_506=l9_507;
float l9_508=0.0;
l9_508=tempGlobals.N123_fbm;
float4 l9_509=float4(0.0);
l9_509=mix(l9_504,l9_506,float4(l9_508));
float l9_510=l9_501;
float4 l9_511=l9_502;
float l9_512=(*sc_set0.UserUniforms).Port_Position1_N030;
float4 l9_513=l9_502;
float l9_514=(*sc_set0.UserUniforms).Port_Position2_N030;
float4 l9_515=l9_502;
float l9_516=(*sc_set0.UserUniforms).Port_Position3_N030;
float4 l9_517=l9_504;
float l9_518=(*sc_set0.UserUniforms).Port_Position4_N030;
float4 l9_519=l9_509;
float4 l9_520=l9_509;
l9_510=fast::clamp(l9_510,0.0,1.0);
float4 l9_521;
if (l9_510<l9_512)
{
l9_521=mix(l9_511,l9_513,float4(fast::clamp(l9_510/l9_512,0.0,1.0)));
}
else
{
if (l9_510<l9_514)
{
l9_521=mix(l9_513,l9_515,float4(fast::clamp((l9_510-l9_512)/(l9_514-l9_512),0.0,1.0)));
}
else
{
if (l9_510<l9_516)
{
l9_521=mix(l9_515,l9_517,float4(fast::clamp((l9_510-l9_514)/(l9_516-l9_514),0.0,1.0)));
}
else
{
if (l9_510<l9_518)
{
l9_521=mix(l9_517,l9_519,float4(fast::clamp((l9_510-l9_516)/(l9_518-l9_516),0.0,1.0)));
}
else
{
l9_521=mix(l9_519,l9_520,float4(fast::clamp((l9_510-l9_518)/(1.0-l9_518),0.0,1.0)));
}
}
}
}
bool l9_522=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_523;
if (l9_522)
{
l9_523=!PreviewInfo.Saved;
}
else
{
l9_523=l9_522;
}
bool l9_524;
if (l9_523)
{
l9_524=30==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_524=l9_523;
}
if (l9_524)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=l9_521;
PreviewInfo.Color.w=1.0;
}
param_1=N123_SurfacePosition;
SurfacePosition_N123=param_1;
WorldPosition=SurfacePosition_N123;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPosAndMotion.xyz;
WorldNormal=out.varNormalAndMotion.xyz;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_3=v;
float3 param_4=WorldPosition;
float3 param_5=WorldNormal;
float3 param_6=WorldTangent;
float4 param_7=v.position;
out.varPosAndMotion=float4(param_4.x,param_4.y,param_4.z,out.varPosAndMotion.w);
float3 l9_525=normalize(param_5);
out.varNormalAndMotion=float4(l9_525.x,l9_525.y,l9_525.z,out.varNormalAndMotion.w);
float3 l9_526=normalize(param_6);
out.varTangent=float4(l9_526.x,l9_526.y,l9_526.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_527=param_3.position;
float4 l9_528=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_529=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_529=0;
}
else
{
l9_529=gl_InstanceIndex%2;
}
int l9_530=l9_529;
l9_528=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_530]*l9_527;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_531=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_531=0;
}
else
{
l9_531=gl_InstanceIndex%2;
}
int l9_532=l9_531;
l9_528=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_532]*l9_527;
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_533=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_533=0;
}
else
{
l9_533=gl_InstanceIndex%2;
}
int l9_534=l9_533;
l9_528=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_534]*l9_527;
}
else
{
l9_528=l9_527;
}
}
}
float4 l9_535=l9_528;
out.varViewSpaceDepth=-l9_535.z;
}
float4 l9_536=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_536=param_7;
}
else
{
if (sc_RenderingSpace_tmp==4)
{
int l9_537=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_537=0;
}
else
{
l9_537=gl_InstanceIndex%2;
}
int l9_538=l9_537;
l9_536=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_538]*param_3.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_539=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_539=0;
}
else
{
l9_539=gl_InstanceIndex%2;
}
int l9_540=l9_539;
l9_536=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_540]*float4(out.varPosAndMotion.xyz,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_541=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_541=0;
}
else
{
l9_541=gl_InstanceIndex%2;
}
int l9_542=l9_541;
l9_536=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_542]*float4(out.varPosAndMotion.xyz,1.0);
}
}
}
}
out.varTex01=float4(param_3.texture0,param_3.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_543=param_3.position;
float4 l9_544=l9_543;
if (sc_RenderingSpace_tmp==1)
{
l9_544=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_543;
}
float4 l9_545=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_544;
float2 l9_546=((l9_545.xy/float2(l9_545.w))*0.5)+float2(0.5);
out.varShadowTex=l9_546;
}
float4 l9_547=l9_536;
if (sc_DepthBufferMode_tmp==1)
{
int l9_548=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_548=0;
}
else
{
l9_548=gl_InstanceIndex%2;
}
int l9_549=l9_548;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_549][2].w!=0.0)
{
float l9_550=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_547.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_547.w))*l9_550)-1.0)*l9_547.w;
}
}
float4 l9_551=l9_547;
l9_536=l9_551;
float4 l9_552=l9_536;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_553=l9_552.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_552.w);
l9_552=float4(l9_553.x,l9_553.y,l9_552.z,l9_552.w);
}
float4 l9_554=l9_552;
l9_536=l9_554;
float4 l9_555=l9_536;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_555.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_556=l9_555;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_557=dot(l9_556,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_558=l9_557;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_558;
}
}
float4 l9_559=float4(l9_555.x,-l9_555.y,(l9_555.z*0.5)+(l9_555.w*0.5),l9_555.w);
out.gl_Position=l9_559;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_561=param_3;
sc_Vertex_t l9_562=l9_561;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_563=l9_562;
float3 l9_564=in.blendShape0Pos;
float3 l9_565=in.blendShape0Normal;
float l9_566=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_567=l9_563;
float3 l9_568=l9_564;
float l9_569=l9_566;
float3 l9_570=l9_567.position.xyz+(l9_568*l9_569);
l9_567.position=float4(l9_570.x,l9_570.y,l9_570.z,l9_567.position.w);
l9_563=l9_567;
l9_563.normal+=(l9_565*l9_566);
l9_562=l9_563;
sc_Vertex_t l9_571=l9_562;
float3 l9_572=in.blendShape1Pos;
float3 l9_573=in.blendShape1Normal;
float l9_574=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_575=l9_571;
float3 l9_576=l9_572;
float l9_577=l9_574;
float3 l9_578=l9_575.position.xyz+(l9_576*l9_577);
l9_575.position=float4(l9_578.x,l9_578.y,l9_578.z,l9_575.position.w);
l9_571=l9_575;
l9_571.normal+=(l9_573*l9_574);
l9_562=l9_571;
sc_Vertex_t l9_579=l9_562;
float3 l9_580=in.blendShape2Pos;
float3 l9_581=in.blendShape2Normal;
float l9_582=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_583=l9_579;
float3 l9_584=l9_580;
float l9_585=l9_582;
float3 l9_586=l9_583.position.xyz+(l9_584*l9_585);
l9_583.position=float4(l9_586.x,l9_586.y,l9_586.z,l9_583.position.w);
l9_579=l9_583;
l9_579.normal+=(l9_581*l9_582);
l9_562=l9_579;
}
else
{
sc_Vertex_t l9_587=l9_562;
float3 l9_588=in.blendShape0Pos;
float l9_589=(*sc_set0.UserUniforms).weights0.x;
float3 l9_590=l9_587.position.xyz+(l9_588*l9_589);
l9_587.position=float4(l9_590.x,l9_590.y,l9_590.z,l9_587.position.w);
l9_562=l9_587;
sc_Vertex_t l9_591=l9_562;
float3 l9_592=in.blendShape1Pos;
float l9_593=(*sc_set0.UserUniforms).weights0.y;
float3 l9_594=l9_591.position.xyz+(l9_592*l9_593);
l9_591.position=float4(l9_594.x,l9_594.y,l9_594.z,l9_591.position.w);
l9_562=l9_591;
sc_Vertex_t l9_595=l9_562;
float3 l9_596=in.blendShape2Pos;
float l9_597=(*sc_set0.UserUniforms).weights0.z;
float3 l9_598=l9_595.position.xyz+(l9_596*l9_597);
l9_595.position=float4(l9_598.x,l9_598.y,l9_598.z,l9_595.position.w);
l9_562=l9_595;
sc_Vertex_t l9_599=l9_562;
float3 l9_600=in.blendShape3Pos;
float l9_601=(*sc_set0.UserUniforms).weights0.w;
float3 l9_602=l9_599.position.xyz+(l9_600*l9_601);
l9_599.position=float4(l9_602.x,l9_602.y,l9_602.z,l9_599.position.w);
l9_562=l9_599;
sc_Vertex_t l9_603=l9_562;
float3 l9_604=in.blendShape4Pos;
float l9_605=(*sc_set0.UserUniforms).weights1.x;
float3 l9_606=l9_603.position.xyz+(l9_604*l9_605);
l9_603.position=float4(l9_606.x,l9_606.y,l9_606.z,l9_603.position.w);
l9_562=l9_603;
sc_Vertex_t l9_607=l9_562;
float3 l9_608=in.blendShape5Pos;
float l9_609=(*sc_set0.UserUniforms).weights1.y;
float3 l9_610=l9_607.position.xyz+(l9_608*l9_609);
l9_607.position=float4(l9_610.x,l9_610.y,l9_610.z,l9_607.position.w);
l9_562=l9_607;
}
}
l9_561=l9_562;
sc_Vertex_t l9_611=l9_561;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_612=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_612=float4(1.0,fract(in.boneData.yzw));
l9_612.x-=dot(l9_612.yzw,float3(1.0));
}
float4 l9_613=l9_612;
float4 l9_614=l9_613;
int l9_615=int(in.boneData.x);
int l9_616=int(in.boneData.y);
int l9_617=int(in.boneData.z);
int l9_618=int(in.boneData.w);
int l9_619=l9_615;
float4 l9_620=l9_611.position;
float3 l9_621=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_622=l9_619;
float4 l9_623=(*sc_set0.sc_BonesUBO).sc_Bones[l9_622].boneMatrix[0];
float4 l9_624=(*sc_set0.sc_BonesUBO).sc_Bones[l9_622].boneMatrix[1];
float4 l9_625=(*sc_set0.sc_BonesUBO).sc_Bones[l9_622].boneMatrix[2];
float4 l9_626[3];
l9_626[0]=l9_623;
l9_626[1]=l9_624;
l9_626[2]=l9_625;
l9_621=float3(dot(l9_620,l9_626[0]),dot(l9_620,l9_626[1]),dot(l9_620,l9_626[2]));
}
else
{
l9_621=l9_620.xyz;
}
float3 l9_627=l9_621;
float3 l9_628=l9_627;
float l9_629=l9_614.x;
int l9_630=l9_616;
float4 l9_631=l9_611.position;
float3 l9_632=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_633=l9_630;
float4 l9_634=(*sc_set0.sc_BonesUBO).sc_Bones[l9_633].boneMatrix[0];
float4 l9_635=(*sc_set0.sc_BonesUBO).sc_Bones[l9_633].boneMatrix[1];
float4 l9_636=(*sc_set0.sc_BonesUBO).sc_Bones[l9_633].boneMatrix[2];
float4 l9_637[3];
l9_637[0]=l9_634;
l9_637[1]=l9_635;
l9_637[2]=l9_636;
l9_632=float3(dot(l9_631,l9_637[0]),dot(l9_631,l9_637[1]),dot(l9_631,l9_637[2]));
}
else
{
l9_632=l9_631.xyz;
}
float3 l9_638=l9_632;
float3 l9_639=l9_638;
float l9_640=l9_614.y;
int l9_641=l9_617;
float4 l9_642=l9_611.position;
float3 l9_643=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_644=l9_641;
float4 l9_645=(*sc_set0.sc_BonesUBO).sc_Bones[l9_644].boneMatrix[0];
float4 l9_646=(*sc_set0.sc_BonesUBO).sc_Bones[l9_644].boneMatrix[1];
float4 l9_647=(*sc_set0.sc_BonesUBO).sc_Bones[l9_644].boneMatrix[2];
float4 l9_648[3];
l9_648[0]=l9_645;
l9_648[1]=l9_646;
l9_648[2]=l9_647;
l9_643=float3(dot(l9_642,l9_648[0]),dot(l9_642,l9_648[1]),dot(l9_642,l9_648[2]));
}
else
{
l9_643=l9_642.xyz;
}
float3 l9_649=l9_643;
float3 l9_650=l9_649;
float l9_651=l9_614.z;
int l9_652=l9_618;
float4 l9_653=l9_611.position;
float3 l9_654=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_655=l9_652;
float4 l9_656=(*sc_set0.sc_BonesUBO).sc_Bones[l9_655].boneMatrix[0];
float4 l9_657=(*sc_set0.sc_BonesUBO).sc_Bones[l9_655].boneMatrix[1];
float4 l9_658=(*sc_set0.sc_BonesUBO).sc_Bones[l9_655].boneMatrix[2];
float4 l9_659[3];
l9_659[0]=l9_656;
l9_659[1]=l9_657;
l9_659[2]=l9_658;
l9_654=float3(dot(l9_653,l9_659[0]),dot(l9_653,l9_659[1]),dot(l9_653,l9_659[2]));
}
else
{
l9_654=l9_653.xyz;
}
float3 l9_660=l9_654;
float3 l9_661=(((l9_628*l9_629)+(l9_639*l9_640))+(l9_650*l9_651))+(l9_660*l9_614.w);
l9_611.position=float4(l9_661.x,l9_661.y,l9_661.z,l9_611.position.w);
int l9_662=l9_615;
float3x3 l9_663=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_662].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_662].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_662].normalMatrix[2].xyz));
float3x3 l9_664=l9_663;
float3x3 l9_665=l9_664;
int l9_666=l9_616;
float3x3 l9_667=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_666].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_666].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_666].normalMatrix[2].xyz));
float3x3 l9_668=l9_667;
float3x3 l9_669=l9_668;
int l9_670=l9_617;
float3x3 l9_671=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_670].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_670].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_670].normalMatrix[2].xyz));
float3x3 l9_672=l9_671;
float3x3 l9_673=l9_672;
int l9_674=l9_618;
float3x3 l9_675=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_674].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_674].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_674].normalMatrix[2].xyz));
float3x3 l9_676=l9_675;
float3x3 l9_677=l9_676;
l9_611.normal=((((l9_665*l9_611.normal)*l9_614.x)+((l9_669*l9_611.normal)*l9_614.y))+((l9_673*l9_611.normal)*l9_614.z))+((l9_677*l9_611.normal)*l9_614.w);
l9_611.tangent=((((l9_665*l9_611.tangent)*l9_614.x)+((l9_669*l9_611.tangent)*l9_614.y))+((l9_673*l9_611.tangent)*l9_614.z))+((l9_677*l9_611.tangent)*l9_614.w);
}
l9_561=l9_611;
float l9_678=(*sc_set0.UserUniforms).voxelization_params_0.y;
float l9_679=(*sc_set0.UserUniforms).voxelization_params_0.z;
float l9_680=(*sc_set0.UserUniforms).voxelization_params_0.w;
float l9_681=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_682=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_683=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_684=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_685=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_686=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float3 l9_687=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float l9_688=l9_678/l9_679;
int l9_689=gl_InstanceIndex;
int l9_690=l9_689;
l9_561.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_561.position;
float3 l9_691=l9_561.position.xyz;
float3 l9_692=float3(float(l9_690%int(l9_680))*l9_678,float(l9_690/int(l9_680))*l9_678,(float(l9_690)*l9_688)+l9_685);
float3 l9_693=l9_691+l9_692;
float4 l9_694=float4(l9_693-l9_687,1.0);
float l9_695=l9_681;
float l9_696=l9_682;
float l9_697=l9_683;
float l9_698=l9_684;
float l9_699=l9_685;
float l9_700=l9_686;
float4x4 l9_701=float4x4(float4(2.0/(l9_696-l9_695),0.0,0.0,(-(l9_696+l9_695))/(l9_696-l9_695)),float4(0.0,2.0/(l9_698-l9_697),0.0,(-(l9_698+l9_697))/(l9_698-l9_697)),float4(0.0,0.0,(-2.0)/(l9_700-l9_699),(-(l9_700+l9_699))/(l9_700-l9_699)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_702=l9_701;
float4 l9_703=l9_702*l9_694;
l9_703.w=1.0;
out.varScreenPos=l9_703;
float4 l9_704=l9_703*1.0;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_704.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_705=l9_704;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_706=dot(l9_705,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_707=l9_706;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_707;
}
}
float4 l9_708=float4(l9_704.x,-l9_704.y,(l9_704.z*0.5)+(l9_704.w*0.5),l9_704.w);
out.gl_Position=l9_708;
param_3=l9_561;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
sc_Vertex_t l9_709=param_3;
sc_Vertex_t l9_710=l9_709;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_711=l9_710;
float3 l9_712=in.blendShape0Pos;
float3 l9_713=in.blendShape0Normal;
float l9_714=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_715=l9_711;
float3 l9_716=l9_712;
float l9_717=l9_714;
float3 l9_718=l9_715.position.xyz+(l9_716*l9_717);
l9_715.position=float4(l9_718.x,l9_718.y,l9_718.z,l9_715.position.w);
l9_711=l9_715;
l9_711.normal+=(l9_713*l9_714);
l9_710=l9_711;
sc_Vertex_t l9_719=l9_710;
float3 l9_720=in.blendShape1Pos;
float3 l9_721=in.blendShape1Normal;
float l9_722=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_723=l9_719;
float3 l9_724=l9_720;
float l9_725=l9_722;
float3 l9_726=l9_723.position.xyz+(l9_724*l9_725);
l9_723.position=float4(l9_726.x,l9_726.y,l9_726.z,l9_723.position.w);
l9_719=l9_723;
l9_719.normal+=(l9_721*l9_722);
l9_710=l9_719;
sc_Vertex_t l9_727=l9_710;
float3 l9_728=in.blendShape2Pos;
float3 l9_729=in.blendShape2Normal;
float l9_730=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_731=l9_727;
float3 l9_732=l9_728;
float l9_733=l9_730;
float3 l9_734=l9_731.position.xyz+(l9_732*l9_733);
l9_731.position=float4(l9_734.x,l9_734.y,l9_734.z,l9_731.position.w);
l9_727=l9_731;
l9_727.normal+=(l9_729*l9_730);
l9_710=l9_727;
}
else
{
sc_Vertex_t l9_735=l9_710;
float3 l9_736=in.blendShape0Pos;
float l9_737=(*sc_set0.UserUniforms).weights0.x;
float3 l9_738=l9_735.position.xyz+(l9_736*l9_737);
l9_735.position=float4(l9_738.x,l9_738.y,l9_738.z,l9_735.position.w);
l9_710=l9_735;
sc_Vertex_t l9_739=l9_710;
float3 l9_740=in.blendShape1Pos;
float l9_741=(*sc_set0.UserUniforms).weights0.y;
float3 l9_742=l9_739.position.xyz+(l9_740*l9_741);
l9_739.position=float4(l9_742.x,l9_742.y,l9_742.z,l9_739.position.w);
l9_710=l9_739;
sc_Vertex_t l9_743=l9_710;
float3 l9_744=in.blendShape2Pos;
float l9_745=(*sc_set0.UserUniforms).weights0.z;
float3 l9_746=l9_743.position.xyz+(l9_744*l9_745);
l9_743.position=float4(l9_746.x,l9_746.y,l9_746.z,l9_743.position.w);
l9_710=l9_743;
sc_Vertex_t l9_747=l9_710;
float3 l9_748=in.blendShape3Pos;
float l9_749=(*sc_set0.UserUniforms).weights0.w;
float3 l9_750=l9_747.position.xyz+(l9_748*l9_749);
l9_747.position=float4(l9_750.x,l9_750.y,l9_750.z,l9_747.position.w);
l9_710=l9_747;
sc_Vertex_t l9_751=l9_710;
float3 l9_752=in.blendShape4Pos;
float l9_753=(*sc_set0.UserUniforms).weights1.x;
float3 l9_754=l9_751.position.xyz+(l9_752*l9_753);
l9_751.position=float4(l9_754.x,l9_754.y,l9_754.z,l9_751.position.w);
l9_710=l9_751;
sc_Vertex_t l9_755=l9_710;
float3 l9_756=in.blendShape5Pos;
float l9_757=(*sc_set0.UserUniforms).weights1.y;
float3 l9_758=l9_755.position.xyz+(l9_756*l9_757);
l9_755.position=float4(l9_758.x,l9_758.y,l9_758.z,l9_755.position.w);
l9_710=l9_755;
}
}
l9_709=l9_710;
sc_Vertex_t l9_759=l9_709;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_760=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_760=float4(1.0,fract(in.boneData.yzw));
l9_760.x-=dot(l9_760.yzw,float3(1.0));
}
float4 l9_761=l9_760;
float4 l9_762=l9_761;
int l9_763=int(in.boneData.x);
int l9_764=int(in.boneData.y);
int l9_765=int(in.boneData.z);
int l9_766=int(in.boneData.w);
int l9_767=l9_763;
float4 l9_768=l9_759.position;
float3 l9_769=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_770=l9_767;
float4 l9_771=(*sc_set0.sc_BonesUBO).sc_Bones[l9_770].boneMatrix[0];
float4 l9_772=(*sc_set0.sc_BonesUBO).sc_Bones[l9_770].boneMatrix[1];
float4 l9_773=(*sc_set0.sc_BonesUBO).sc_Bones[l9_770].boneMatrix[2];
float4 l9_774[3];
l9_774[0]=l9_771;
l9_774[1]=l9_772;
l9_774[2]=l9_773;
l9_769=float3(dot(l9_768,l9_774[0]),dot(l9_768,l9_774[1]),dot(l9_768,l9_774[2]));
}
else
{
l9_769=l9_768.xyz;
}
float3 l9_775=l9_769;
float3 l9_776=l9_775;
float l9_777=l9_762.x;
int l9_778=l9_764;
float4 l9_779=l9_759.position;
float3 l9_780=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_781=l9_778;
float4 l9_782=(*sc_set0.sc_BonesUBO).sc_Bones[l9_781].boneMatrix[0];
float4 l9_783=(*sc_set0.sc_BonesUBO).sc_Bones[l9_781].boneMatrix[1];
float4 l9_784=(*sc_set0.sc_BonesUBO).sc_Bones[l9_781].boneMatrix[2];
float4 l9_785[3];
l9_785[0]=l9_782;
l9_785[1]=l9_783;
l9_785[2]=l9_784;
l9_780=float3(dot(l9_779,l9_785[0]),dot(l9_779,l9_785[1]),dot(l9_779,l9_785[2]));
}
else
{
l9_780=l9_779.xyz;
}
float3 l9_786=l9_780;
float3 l9_787=l9_786;
float l9_788=l9_762.y;
int l9_789=l9_765;
float4 l9_790=l9_759.position;
float3 l9_791=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_792=l9_789;
float4 l9_793=(*sc_set0.sc_BonesUBO).sc_Bones[l9_792].boneMatrix[0];
float4 l9_794=(*sc_set0.sc_BonesUBO).sc_Bones[l9_792].boneMatrix[1];
float4 l9_795=(*sc_set0.sc_BonesUBO).sc_Bones[l9_792].boneMatrix[2];
float4 l9_796[3];
l9_796[0]=l9_793;
l9_796[1]=l9_794;
l9_796[2]=l9_795;
l9_791=float3(dot(l9_790,l9_796[0]),dot(l9_790,l9_796[1]),dot(l9_790,l9_796[2]));
}
else
{
l9_791=l9_790.xyz;
}
float3 l9_797=l9_791;
float3 l9_798=l9_797;
float l9_799=l9_762.z;
int l9_800=l9_766;
float4 l9_801=l9_759.position;
float3 l9_802=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_803=l9_800;
float4 l9_804=(*sc_set0.sc_BonesUBO).sc_Bones[l9_803].boneMatrix[0];
float4 l9_805=(*sc_set0.sc_BonesUBO).sc_Bones[l9_803].boneMatrix[1];
float4 l9_806=(*sc_set0.sc_BonesUBO).sc_Bones[l9_803].boneMatrix[2];
float4 l9_807[3];
l9_807[0]=l9_804;
l9_807[1]=l9_805;
l9_807[2]=l9_806;
l9_802=float3(dot(l9_801,l9_807[0]),dot(l9_801,l9_807[1]),dot(l9_801,l9_807[2]));
}
else
{
l9_802=l9_801.xyz;
}
float3 l9_808=l9_802;
float3 l9_809=(((l9_776*l9_777)+(l9_787*l9_788))+(l9_798*l9_799))+(l9_808*l9_762.w);
l9_759.position=float4(l9_809.x,l9_809.y,l9_809.z,l9_759.position.w);
int l9_810=l9_763;
float3x3 l9_811=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_810].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_810].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_810].normalMatrix[2].xyz));
float3x3 l9_812=l9_811;
float3x3 l9_813=l9_812;
int l9_814=l9_764;
float3x3 l9_815=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_814].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_814].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_814].normalMatrix[2].xyz));
float3x3 l9_816=l9_815;
float3x3 l9_817=l9_816;
int l9_818=l9_765;
float3x3 l9_819=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_818].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_818].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_818].normalMatrix[2].xyz));
float3x3 l9_820=l9_819;
float3x3 l9_821=l9_820;
int l9_822=l9_766;
float3x3 l9_823=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_822].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_822].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_822].normalMatrix[2].xyz));
float3x3 l9_824=l9_823;
float3x3 l9_825=l9_824;
l9_759.normal=((((l9_813*l9_759.normal)*l9_762.x)+((l9_817*l9_759.normal)*l9_762.y))+((l9_821*l9_759.normal)*l9_762.z))+((l9_825*l9_759.normal)*l9_762.w);
l9_759.tangent=((((l9_813*l9_759.tangent)*l9_762.x)+((l9_817*l9_759.tangent)*l9_762.y))+((l9_821*l9_759.tangent)*l9_762.z))+((l9_825*l9_759.tangent)*l9_762.w);
}
l9_709=l9_759;
float3 l9_826=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float2 l9_827=((l9_709.position.xy/float2(l9_709.position.w))*0.5)+float2(0.5);
out.varTex01=float4(l9_827.x,l9_827.y,out.varTex01.z,out.varTex01.w);
l9_709.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_709.position;
float3 l9_828=l9_709.position.xyz-l9_826;
l9_709.position=float4(l9_828.x,l9_828.y,l9_828.z,l9_709.position.w);
out.varPosAndMotion=float4(l9_709.position.xyz.x,l9_709.position.xyz.y,l9_709.position.xyz.z,out.varPosAndMotion.w);
float3 l9_829=normalize(l9_709.normal);
out.varNormalAndMotion=float4(l9_829.x,l9_829.y,l9_829.z,out.varNormalAndMotion.w);
float l9_830=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_831=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_832=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_833=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_834=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_835=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float l9_836=l9_830;
float l9_837=l9_831;
float l9_838=l9_832;
float l9_839=l9_833;
float l9_840=l9_834;
float l9_841=l9_835;
float4x4 l9_842=float4x4(float4(2.0/(l9_837-l9_836),0.0,0.0,(-(l9_837+l9_836))/(l9_837-l9_836)),float4(0.0,2.0/(l9_839-l9_838),0.0,(-(l9_839+l9_838))/(l9_839-l9_838)),float4(0.0,0.0,(-2.0)/(l9_841-l9_840),(-(l9_841+l9_840))/(l9_841-l9_840)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_843=l9_842;
float4 l9_844=float4(0.0);
float3 l9_845=(l9_843*l9_709.position).xyz;
l9_844=float4(l9_845.x,l9_845.y,l9_845.z,l9_844.w);
l9_844.w=1.0;
out.varScreenPos=l9_844;
float4 l9_846=l9_844*1.0;
float4 l9_847=l9_846;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_847.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_848=l9_847;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_849=dot(l9_848,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_850=l9_849;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_850;
}
}
float4 l9_851=float4(l9_847.x,-l9_847.y,(l9_847.z*0.5)+(l9_847.w*0.5),l9_847.w);
out.gl_Position=l9_851;
param_3=l9_709;
}
}
v=param_3;
float3 param_8=out.varPosAndMotion.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float4 l9_852=((*sc_set0.UserUniforms).sc_PrevFrameModelMatrix*(*sc_set0.UserUniforms).sc_ModelMatrixInverse)*float4(param_8,1.0);
float3 l9_853=param_8;
float3 l9_854=l9_852.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
int l9_855=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_855=0;
}
else
{
l9_855=gl_InstanceIndex%2;
}
int l9_856=l9_855;
float4 l9_857=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_856]*float4(l9_853,1.0);
float2 l9_858=l9_857.xy/float2(l9_857.w);
l9_857=float4(l9_858.x,l9_858.y,l9_857.z,l9_857.w);
int l9_859=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_859=0;
}
else
{
l9_859=gl_InstanceIndex%2;
}
int l9_860=l9_859;
float4 l9_861=(*sc_set0.UserUniforms).sc_PrevFrameViewProjectionMatrixArray[l9_860]*float4(l9_854,1.0);
float2 l9_862=l9_861.xy/float2(l9_861.w);
l9_861=float4(l9_862.x,l9_862.y,l9_861.z,l9_861.w);
float2 l9_863=(l9_857.xy-l9_861.xy)*0.5;
out.varPosAndMotion.w=l9_863.x;
out.varNormalAndMotion.w=l9_863.y;
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
float N123_fbm;
float N123_TatalHeightRemap;
float3 BumpedNormal;
float3 ViewDirWS;
float3 PositionWS;
float3 VertexTangent_WorldSpace;
float3 VertexNormal_WorldSpace;
float3 VertexBinormal_WorldSpace;
float gFrontFacing;
float3 SurfacePosition_WorldSpace;
float2 Surface_UVCoord0;
float2 gScreenCoord;
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
float3 oceanMin;
float3 oceanMax;
float speed;
float enableFoam;
float fbmScale;
float enableInfinite;
float4 screenTexSize;
float4 screenTexDims;
float4 screenTexView;
float3x3 screenTexTransform;
float4 screenTexUvMinMax;
float4 screenTexBorderColor;
float4 distortionTexSize;
float4 distortionTexDims;
float4 distortionTexView;
float3x3 distortionTexTransform;
float4 distortionTexUvMinMax;
float4 distortionTexBorderColor;
float distortionScale;
float distortionIntensity;
float4 oceanHeightmapSize;
float4 oceanHeightmapDims;
float4 oceanHeightmapView;
float3x3 oceanHeightmapTransform;
float4 oceanHeightmapUvMinMax;
float4 oceanHeightmapBorderColor;
float4 oceanNormalSize;
float4 oceanNormalDims;
float4 oceanNormalView;
float3x3 oceanNormalTransform;
float4 oceanNormalUvMinMax;
float4 oceanNormalBorderColor;
float enableFluid;
float2 pressureRange;
float4 fluidPressureSize;
float4 fluidPressureDims;
float4 fluidPressureView;
float3x3 fluidPressureTransform;
float4 fluidPressureUvMinMax;
float4 fluidPressureBorderColor;
float fluidMul;
float2 unpackVal;
float4 colorTrough;
float4 colorMiddle;
float4 colorCrest;
float bodyIntersection;
float4 bodyDepthTexSize;
float4 bodyDepthTexDims;
float4 bodyDepthTexView;
float3x3 bodyDepthTexTransform;
float4 bodyDepthTexUvMinMax;
float4 bodyDepthTexBorderColor;
float4 bodyDepthTexProjectionMatrixTerms;
float Port_Position1_N030;
float Port_Position2_N030;
float Port_Position3_N030;
float Port_Position4_N030;
float Port_Opacity_N013;
float3 Port_Emissive_N013;
float Port_Metallic_N013;
float Port_Roughness_N013;
float3 Port_AO_N013;
float3 Port_SpecularAO_N013;
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
texture2d<float> bodyDepthTex [[id(1)]];
texture2d<float> distortionTex [[id(2)]];
texture2d<float> fluidPressure [[id(3)]];
texture2d<float> intensityTexture [[id(4)]];
texture2d<float> oceanHeightmap [[id(5)]];
texture2d<float> oceanNormal [[id(6)]];
texture2d<float> sc_EnvmapDiffuse [[id(7)]];
texture2d<float> sc_EnvmapSpecular [[id(8)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(17)]];
texture2d<float> sc_RayTracingReflections [[id(18)]];
texture2d<float> sc_RayTracingShadows [[id(19)]];
texture2d<float> sc_SSAOTexture [[id(20)]];
texture2d<float> sc_ScreenTexture [[id(21)]];
texture2d<float> sc_ShadowTexture [[id(22)]];
texture2d<float> screenTex [[id(24)]];
sampler bodyDepthTexSmpSC [[id(25)]];
sampler distortionTexSmpSC [[id(26)]];
sampler fluidPressureSmpSC [[id(27)]];
sampler intensityTextureSmpSC [[id(28)]];
sampler oceanHeightmapSmpSC [[id(29)]];
sampler oceanNormalSmpSC [[id(30)]];
sampler sc_EnvmapDiffuseSmpSC [[id(31)]];
sampler sc_EnvmapSpecularSmpSC [[id(32)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(34)]];
sampler sc_RayTracingReflectionsSmpSC [[id(35)]];
sampler sc_RayTracingShadowsSmpSC [[id(36)]];
sampler sc_SSAOTextureSmpSC [[id(37)]];
sampler sc_ScreenTextureSmpSC [[id(38)]];
sampler sc_ShadowTextureSmpSC [[id(39)]];
sampler screenTexSmpSC [[id(41)]];
constant userUniformsObj* UserUniforms [[id(42)]];
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
fragment main_frag_out main_frag(main_frag_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]],bool gl_FrontFacing [[front_facing]])
{
main_frag_out out={};
float N34_EnableBodyDepth=0.0;
float4 N34_OceanColor=float4(0.0);
float N34_BodyDepth=0.0;
float N34_cameraDepth=0.0;
float4 N34_Result=float4(0.0);
float3 N123_OceanAabbMin=float3(0.0);
float3 N123_OceanAabbMax=float3(0.0);
float N123_OceanSpeed=0.0;
float N123_EnableFoam=0.0;
float N123_FBMScale=0.0;
float N123_EnableInfinite=0.0;
float N123_DistortionScale=0.0;
float N123_DistortionIntensity=0.0;
float N123_EnableFluid=0.0;
float2 N123_pressureRange=float2(0.0);
float N123_FluidMul=0.0;
float2 N123_unpackVal=float2(0.0);
float4 N123_FrontFacing=float4(0.0);
float4 N123_BackFacing=float4(0.0);
float3 N123_Normal=float3(0.0);
float3 N123_SurfacePosition=float3(0.0);
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
float4 FinalColor=float4(1.0,0.38046801,0.47592899,1.0);
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPosAndMotion.xyz);
Globals.PositionWS=in.varPosAndMotion.xyz;
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexNormal_WorldSpace=normalize(in.varNormalAndMotion.xyz);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
bool l9_0=gl_FrontFacing;
Globals.gFrontFacing=float(l9_0);
Globals.SurfacePosition_WorldSpace=in.varPosAndMotion.xyz;
Globals.Surface_UVCoord0=in.varTex01.xy;
float4 l9_1=gl_FragCoord;
float2 l9_2=l9_1.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_3=l9_2;
float2 l9_4=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_5=1;
int l9_6=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6=0;
}
else
{
l9_6=in.varStereoViewID;
}
int l9_7=l9_6;
int l9_8=l9_7;
float3 l9_9=float3(l9_3,0.0);
int l9_10=l9_5;
int l9_11=l9_8;
if (l9_10==1)
{
l9_9.y=((2.0*l9_9.y)+float(l9_11))-1.0;
}
float2 l9_12=l9_9.xy;
l9_4=l9_12;
}
else
{
l9_4=l9_3;
}
float2 l9_13=l9_4;
float2 l9_14=l9_13;
Globals.gScreenCoord=l9_14;
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
float Output_N40=0.0;
float param=(*sc_set0.UserUniforms).bodyIntersection;
Output_N40=param;
float4 Output_N14=float4(0.0);
float param_1=1.0;
float4 param_2=float4(1.0);
float4 param_3=float4(1.0,0.0,0.0,0.0);
ssGlobals param_5=Globals;
float l9_15=0.0;
l9_15=param_5.gFrontFacing;
param_1=l9_15;
ssGlobals tempGlobals;
float4 param_4;
if ((param_1*1.0)!=0.0)
{
float4 l9_16=float4(0.0);
ssGlobals l9_17=param_5;
tempGlobals=l9_17;
float4 l9_18=float4(0.0);
float3 l9_19=float3(0.0);
float3 l9_20=float3(0.0);
float3 l9_21=(*sc_set0.UserUniforms).oceanMin;
l9_20=l9_21;
l9_19=l9_20;
float3 l9_22=l9_19;
N123_OceanAabbMin=l9_22;
float3 l9_23=float3(0.0);
float3 l9_24=float3(0.0);
float3 l9_25=(*sc_set0.UserUniforms).oceanMax;
l9_24=l9_25;
l9_23=l9_24;
float3 l9_26=l9_23;
N123_OceanAabbMax=l9_26;
float l9_27=0.0;
float l9_28=0.0;
float l9_29=(*sc_set0.UserUniforms).speed;
l9_28=l9_29;
l9_27=l9_28;
float l9_30=l9_27;
N123_OceanSpeed=l9_30;
float l9_31=0.0;
float l9_32=0.0;
float l9_33=(*sc_set0.UserUniforms).enableFoam;
l9_32=l9_33;
l9_31=l9_32;
float l9_34=l9_31;
N123_EnableFoam=l9_34;
float l9_35=0.0;
float l9_36=0.0;
float l9_37=(*sc_set0.UserUniforms).fbmScale;
l9_36=l9_37;
l9_35=l9_36;
float l9_38=l9_35;
N123_FBMScale=l9_38;
float l9_39=0.0;
float l9_40=0.0;
float l9_41=(*sc_set0.UserUniforms).enableInfinite;
l9_40=l9_41;
l9_39=l9_40;
float l9_42=l9_39;
N123_EnableInfinite=l9_42;
float l9_43=0.0;
float l9_44=0.0;
float l9_45=(*sc_set0.UserUniforms).distortionScale;
l9_44=l9_45;
l9_43=l9_44;
float l9_46=l9_43;
N123_DistortionScale=l9_46;
float l9_47=0.0;
float l9_48=0.0;
float l9_49=(*sc_set0.UserUniforms).distortionIntensity;
l9_48=l9_49;
l9_47=l9_48;
float l9_50=l9_47;
N123_DistortionIntensity=l9_50;
float l9_51=0.0;
float l9_52=0.0;
float l9_53=(*sc_set0.UserUniforms).enableFluid;
l9_52=l9_53;
l9_51=l9_52;
float l9_54=l9_51;
N123_EnableFluid=l9_54;
float2 l9_55=float2(0.0);
float2 l9_56=float2(0.0);
float2 l9_57=(*sc_set0.UserUniforms).pressureRange;
l9_56=l9_57;
l9_55=l9_56;
float2 l9_58=l9_55;
N123_pressureRange=l9_58;
float l9_59=0.0;
float l9_60=0.0;
float l9_61=(*sc_set0.UserUniforms).fluidMul;
l9_60=l9_61;
l9_59=l9_60;
float l9_62=l9_59;
N123_FluidMul=l9_62;
float2 l9_63=float2(0.0);
float2 l9_64=float2(0.0);
float2 l9_65=(*sc_set0.UserUniforms).unpackVal;
l9_64=l9_65;
l9_63=l9_64;
float2 l9_66=l9_63;
N123_unpackVal=l9_66;
float l9_67=0.0;
l9_67=tempGlobals.N123_TatalHeightRemap;
float4 l9_68=float4(0.0);
float4 l9_69=(*sc_set0.UserUniforms).colorTrough;
l9_68=l9_69;
float4 l9_70=float4(0.0);
float4 l9_71=(*sc_set0.UserUniforms).colorMiddle;
l9_70=l9_71;
float4 l9_72=float4(0.0);
float4 l9_73=(*sc_set0.UserUniforms).colorCrest;
l9_72=l9_73;
float l9_74=0.0;
l9_74=tempGlobals.N123_fbm;
float4 l9_75=float4(0.0);
l9_75=mix(l9_70,l9_72,float4(l9_74));
float l9_76=l9_67;
float4 l9_77=l9_68;
float l9_78=(*sc_set0.UserUniforms).Port_Position1_N030;
float4 l9_79=l9_68;
float l9_80=(*sc_set0.UserUniforms).Port_Position2_N030;
float4 l9_81=l9_68;
float l9_82=(*sc_set0.UserUniforms).Port_Position3_N030;
float4 l9_83=l9_70;
float l9_84=(*sc_set0.UserUniforms).Port_Position4_N030;
float4 l9_85=l9_75;
float4 l9_86=l9_75;
l9_76=fast::clamp(l9_76,0.0,1.0);
float4 l9_87;
if (l9_76<l9_78)
{
l9_87=mix(l9_77,l9_79,float4(fast::clamp(l9_76/l9_78,0.0,1.0)));
}
else
{
if (l9_76<l9_80)
{
l9_87=mix(l9_79,l9_81,float4(fast::clamp((l9_76-l9_78)/(l9_80-l9_78),0.0,1.0)));
}
else
{
if (l9_76<l9_82)
{
l9_87=mix(l9_81,l9_83,float4(fast::clamp((l9_76-l9_80)/(l9_82-l9_80),0.0,1.0)));
}
else
{
if (l9_76<l9_84)
{
l9_87=mix(l9_83,l9_85,float4(fast::clamp((l9_76-l9_82)/(l9_84-l9_82),0.0,1.0)));
}
else
{
l9_87=mix(l9_85,l9_86,float4(fast::clamp((l9_76-l9_84)/(1.0-l9_84),0.0,1.0)));
}
}
}
}
bool l9_88=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_89;
if (l9_88)
{
l9_89=!PreviewInfo.Saved;
}
else
{
l9_89=l9_88;
}
bool l9_90;
if (l9_89)
{
l9_90=30==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_90=l9_89;
}
if (l9_90)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=l9_87;
PreviewInfo.Color.w=1.0;
}
float2 l9_91=tempGlobals.gScreenCoord;
float2 l9_92=l9_91;
float2 l9_93=tempGlobals.Surface_UVCoord0;
float2 l9_94=l9_93;
float3 l9_95=tempGlobals.SurfacePosition_WorldSpace;
float3 l9_96=l9_95;
float2 l9_97=l9_94*N123_DistortionScale;
float4 l9_98=float4(0.0);
int l9_99;
if ((int(distortionTexHasSwappedViews_tmp)!=0))
{
int l9_100=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_100=0;
}
else
{
l9_100=in.varStereoViewID;
}
int l9_101=l9_100;
l9_99=1-l9_101;
}
else
{
int l9_102=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_102=0;
}
else
{
l9_102=in.varStereoViewID;
}
int l9_103=l9_102;
l9_99=l9_103;
}
int l9_104=l9_99;
int l9_105=distortionTexLayout_tmp;
int l9_106=l9_104;
float2 l9_107=l9_97;
bool l9_108=(int(SC_USE_UV_TRANSFORM_distortionTex_tmp)!=0);
float3x3 l9_109=(*sc_set0.UserUniforms).distortionTexTransform;
int2 l9_110=int2(SC_SOFTWARE_WRAP_MODE_U_distortionTex_tmp,SC_SOFTWARE_WRAP_MODE_V_distortionTex_tmp);
bool l9_111=(int(SC_USE_UV_MIN_MAX_distortionTex_tmp)!=0);
float4 l9_112=(*sc_set0.UserUniforms).distortionTexUvMinMax;
bool l9_113=(int(SC_USE_CLAMP_TO_BORDER_distortionTex_tmp)!=0);
float4 l9_114=(*sc_set0.UserUniforms).distortionTexBorderColor;
float l9_115=0.0;
bool l9_116=l9_113&&(!l9_111);
float l9_117=1.0;
float l9_118=l9_107.x;
int l9_119=l9_110.x;
if (l9_119==1)
{
l9_118=fract(l9_118);
}
else
{
if (l9_119==2)
{
float l9_120=fract(l9_118);
float l9_121=l9_118-l9_120;
float l9_122=step(0.25,fract(l9_121*0.5));
l9_118=mix(l9_120,1.0-l9_120,fast::clamp(l9_122,0.0,1.0));
}
}
l9_107.x=l9_118;
float l9_123=l9_107.y;
int l9_124=l9_110.y;
if (l9_124==1)
{
l9_123=fract(l9_123);
}
else
{
if (l9_124==2)
{
float l9_125=fract(l9_123);
float l9_126=l9_123-l9_125;
float l9_127=step(0.25,fract(l9_126*0.5));
l9_123=mix(l9_125,1.0-l9_125,fast::clamp(l9_127,0.0,1.0));
}
}
l9_107.y=l9_123;
if (l9_111)
{
bool l9_128=l9_113;
bool l9_129;
if (l9_128)
{
l9_129=l9_110.x==3;
}
else
{
l9_129=l9_128;
}
float l9_130=l9_107.x;
float l9_131=l9_112.x;
float l9_132=l9_112.z;
bool l9_133=l9_129;
float l9_134=l9_117;
float l9_135=fast::clamp(l9_130,l9_131,l9_132);
float l9_136=step(abs(l9_130-l9_135),9.9999997e-06);
l9_134*=(l9_136+((1.0-float(l9_133))*(1.0-l9_136)));
l9_130=l9_135;
l9_107.x=l9_130;
l9_117=l9_134;
bool l9_137=l9_113;
bool l9_138;
if (l9_137)
{
l9_138=l9_110.y==3;
}
else
{
l9_138=l9_137;
}
float l9_139=l9_107.y;
float l9_140=l9_112.y;
float l9_141=l9_112.w;
bool l9_142=l9_138;
float l9_143=l9_117;
float l9_144=fast::clamp(l9_139,l9_140,l9_141);
float l9_145=step(abs(l9_139-l9_144),9.9999997e-06);
l9_143*=(l9_145+((1.0-float(l9_142))*(1.0-l9_145)));
l9_139=l9_144;
l9_107.y=l9_139;
l9_117=l9_143;
}
float2 l9_146=l9_107;
bool l9_147=l9_108;
float3x3 l9_148=l9_109;
if (l9_147)
{
l9_146=float2((l9_148*float3(l9_146,1.0)).xy);
}
float2 l9_149=l9_146;
l9_107=l9_149;
float l9_150=l9_107.x;
int l9_151=l9_110.x;
bool l9_152=l9_116;
float l9_153=l9_117;
if ((l9_151==0)||(l9_151==3))
{
float l9_154=l9_150;
float l9_155=0.0;
float l9_156=1.0;
bool l9_157=l9_152;
float l9_158=l9_153;
float l9_159=fast::clamp(l9_154,l9_155,l9_156);
float l9_160=step(abs(l9_154-l9_159),9.9999997e-06);
l9_158*=(l9_160+((1.0-float(l9_157))*(1.0-l9_160)));
l9_154=l9_159;
l9_150=l9_154;
l9_153=l9_158;
}
l9_107.x=l9_150;
l9_117=l9_153;
float l9_161=l9_107.y;
int l9_162=l9_110.y;
bool l9_163=l9_116;
float l9_164=l9_117;
if ((l9_162==0)||(l9_162==3))
{
float l9_165=l9_161;
float l9_166=0.0;
float l9_167=1.0;
bool l9_168=l9_163;
float l9_169=l9_164;
float l9_170=fast::clamp(l9_165,l9_166,l9_167);
float l9_171=step(abs(l9_165-l9_170),9.9999997e-06);
l9_169*=(l9_171+((1.0-float(l9_168))*(1.0-l9_171)));
l9_165=l9_170;
l9_161=l9_165;
l9_164=l9_169;
}
l9_107.y=l9_161;
l9_117=l9_164;
float2 l9_172=l9_107;
int l9_173=l9_105;
int l9_174=l9_106;
float l9_175=l9_115;
float2 l9_176=l9_172;
int l9_177=l9_173;
int l9_178=l9_174;
float3 l9_179=float3(0.0);
if (l9_177==0)
{
l9_179=float3(l9_176,0.0);
}
else
{
if (l9_177==1)
{
l9_179=float3(l9_176.x,(l9_176.y*0.5)+(0.5-(float(l9_178)*0.5)),0.0);
}
else
{
l9_179=float3(l9_176,float(l9_178));
}
}
float3 l9_180=l9_179;
float3 l9_181=l9_180;
float4 l9_182=sc_set0.distortionTex.sample(sc_set0.distortionTexSmpSC,l9_181.xy,bias(l9_175));
float4 l9_183=l9_182;
if (l9_113)
{
l9_183=mix(l9_114,l9_183,float4(l9_117));
}
float4 l9_184=l9_183;
l9_98=l9_184;
float4 l9_185=l9_98;
float2 l9_186=l9_185.xy;
float2 l9_187=(((l9_186-float2(1.0))*N123_DistortionIntensity)+l9_92)+float2(0.30000001);
float2 l9_188=float2(l9_187.x-0.15000001,1.0-l9_187.y)*0.89999998;
float4 l9_189=float4(0.0);
int l9_190;
if ((int(screenTexHasSwappedViews_tmp)!=0))
{
int l9_191=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_191=0;
}
else
{
l9_191=in.varStereoViewID;
}
int l9_192=l9_191;
l9_190=1-l9_192;
}
else
{
int l9_193=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_193=0;
}
else
{
l9_193=in.varStereoViewID;
}
int l9_194=l9_193;
l9_190=l9_194;
}
int l9_195=l9_190;
int l9_196=screenTexLayout_tmp;
int l9_197=l9_195;
float2 l9_198=l9_188;
bool l9_199=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 l9_200=(*sc_set0.UserUniforms).screenTexTransform;
int2 l9_201=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool l9_202=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 l9_203=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool l9_204=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 l9_205=(*sc_set0.UserUniforms).screenTexBorderColor;
float l9_206=0.0;
bool l9_207=l9_204&&(!l9_202);
float l9_208=1.0;
float l9_209=l9_198.x;
int l9_210=l9_201.x;
if (l9_210==1)
{
l9_209=fract(l9_209);
}
else
{
if (l9_210==2)
{
float l9_211=fract(l9_209);
float l9_212=l9_209-l9_211;
float l9_213=step(0.25,fract(l9_212*0.5));
l9_209=mix(l9_211,1.0-l9_211,fast::clamp(l9_213,0.0,1.0));
}
}
l9_198.x=l9_209;
float l9_214=l9_198.y;
int l9_215=l9_201.y;
if (l9_215==1)
{
l9_214=fract(l9_214);
}
else
{
if (l9_215==2)
{
float l9_216=fract(l9_214);
float l9_217=l9_214-l9_216;
float l9_218=step(0.25,fract(l9_217*0.5));
l9_214=mix(l9_216,1.0-l9_216,fast::clamp(l9_218,0.0,1.0));
}
}
l9_198.y=l9_214;
if (l9_202)
{
bool l9_219=l9_204;
bool l9_220;
if (l9_219)
{
l9_220=l9_201.x==3;
}
else
{
l9_220=l9_219;
}
float l9_221=l9_198.x;
float l9_222=l9_203.x;
float l9_223=l9_203.z;
bool l9_224=l9_220;
float l9_225=l9_208;
float l9_226=fast::clamp(l9_221,l9_222,l9_223);
float l9_227=step(abs(l9_221-l9_226),9.9999997e-06);
l9_225*=(l9_227+((1.0-float(l9_224))*(1.0-l9_227)));
l9_221=l9_226;
l9_198.x=l9_221;
l9_208=l9_225;
bool l9_228=l9_204;
bool l9_229;
if (l9_228)
{
l9_229=l9_201.y==3;
}
else
{
l9_229=l9_228;
}
float l9_230=l9_198.y;
float l9_231=l9_203.y;
float l9_232=l9_203.w;
bool l9_233=l9_229;
float l9_234=l9_208;
float l9_235=fast::clamp(l9_230,l9_231,l9_232);
float l9_236=step(abs(l9_230-l9_235),9.9999997e-06);
l9_234*=(l9_236+((1.0-float(l9_233))*(1.0-l9_236)));
l9_230=l9_235;
l9_198.y=l9_230;
l9_208=l9_234;
}
float2 l9_237=l9_198;
bool l9_238=l9_199;
float3x3 l9_239=l9_200;
if (l9_238)
{
l9_237=float2((l9_239*float3(l9_237,1.0)).xy);
}
float2 l9_240=l9_237;
l9_198=l9_240;
float l9_241=l9_198.x;
int l9_242=l9_201.x;
bool l9_243=l9_207;
float l9_244=l9_208;
if ((l9_242==0)||(l9_242==3))
{
float l9_245=l9_241;
float l9_246=0.0;
float l9_247=1.0;
bool l9_248=l9_243;
float l9_249=l9_244;
float l9_250=fast::clamp(l9_245,l9_246,l9_247);
float l9_251=step(abs(l9_245-l9_250),9.9999997e-06);
l9_249*=(l9_251+((1.0-float(l9_248))*(1.0-l9_251)));
l9_245=l9_250;
l9_241=l9_245;
l9_244=l9_249;
}
l9_198.x=l9_241;
l9_208=l9_244;
float l9_252=l9_198.y;
int l9_253=l9_201.y;
bool l9_254=l9_207;
float l9_255=l9_208;
if ((l9_253==0)||(l9_253==3))
{
float l9_256=l9_252;
float l9_257=0.0;
float l9_258=1.0;
bool l9_259=l9_254;
float l9_260=l9_255;
float l9_261=fast::clamp(l9_256,l9_257,l9_258);
float l9_262=step(abs(l9_256-l9_261),9.9999997e-06);
l9_260*=(l9_262+((1.0-float(l9_259))*(1.0-l9_262)));
l9_256=l9_261;
l9_252=l9_256;
l9_255=l9_260;
}
l9_198.y=l9_252;
l9_208=l9_255;
float2 l9_263=l9_198;
int l9_264=l9_196;
int l9_265=l9_197;
float l9_266=l9_206;
float2 l9_267=l9_263;
int l9_268=l9_264;
int l9_269=l9_265;
float3 l9_270=float3(0.0);
if (l9_268==0)
{
l9_270=float3(l9_267,0.0);
}
else
{
if (l9_268==1)
{
l9_270=float3(l9_267.x,(l9_267.y*0.5)+(0.5-(float(l9_269)*0.5)),0.0);
}
else
{
l9_270=float3(l9_267,float(l9_269));
}
}
float3 l9_271=l9_270;
float3 l9_272=l9_271;
float4 l9_273=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_272.xy,bias(l9_266));
float4 l9_274=l9_273;
if (l9_204)
{
l9_274=mix(l9_205,l9_274,float4(l9_208));
}
float4 l9_275=l9_274;
l9_189=l9_275;
float4 l9_276=l9_189;
float4 l9_277=l9_276;
float2 l9_278=((l9_187-float2(0.1))*0.5)+float2(0.1);
float2 l9_279=l9_278;
float4 l9_280=float4(0.0);
int l9_281;
if ((int(screenTexHasSwappedViews_tmp)!=0))
{
int l9_282=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_282=0;
}
else
{
l9_282=in.varStereoViewID;
}
int l9_283=l9_282;
l9_281=1-l9_283;
}
else
{
int l9_284=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_284=0;
}
else
{
l9_284=in.varStereoViewID;
}
int l9_285=l9_284;
l9_281=l9_285;
}
int l9_286=l9_281;
int l9_287=screenTexLayout_tmp;
int l9_288=l9_286;
float2 l9_289=l9_279;
bool l9_290=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 l9_291=(*sc_set0.UserUniforms).screenTexTransform;
int2 l9_292=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool l9_293=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 l9_294=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool l9_295=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 l9_296=(*sc_set0.UserUniforms).screenTexBorderColor;
float l9_297=0.0;
bool l9_298=l9_295&&(!l9_293);
float l9_299=1.0;
float l9_300=l9_289.x;
int l9_301=l9_292.x;
if (l9_301==1)
{
l9_300=fract(l9_300);
}
else
{
if (l9_301==2)
{
float l9_302=fract(l9_300);
float l9_303=l9_300-l9_302;
float l9_304=step(0.25,fract(l9_303*0.5));
l9_300=mix(l9_302,1.0-l9_302,fast::clamp(l9_304,0.0,1.0));
}
}
l9_289.x=l9_300;
float l9_305=l9_289.y;
int l9_306=l9_292.y;
if (l9_306==1)
{
l9_305=fract(l9_305);
}
else
{
if (l9_306==2)
{
float l9_307=fract(l9_305);
float l9_308=l9_305-l9_307;
float l9_309=step(0.25,fract(l9_308*0.5));
l9_305=mix(l9_307,1.0-l9_307,fast::clamp(l9_309,0.0,1.0));
}
}
l9_289.y=l9_305;
if (l9_293)
{
bool l9_310=l9_295;
bool l9_311;
if (l9_310)
{
l9_311=l9_292.x==3;
}
else
{
l9_311=l9_310;
}
float l9_312=l9_289.x;
float l9_313=l9_294.x;
float l9_314=l9_294.z;
bool l9_315=l9_311;
float l9_316=l9_299;
float l9_317=fast::clamp(l9_312,l9_313,l9_314);
float l9_318=step(abs(l9_312-l9_317),9.9999997e-06);
l9_316*=(l9_318+((1.0-float(l9_315))*(1.0-l9_318)));
l9_312=l9_317;
l9_289.x=l9_312;
l9_299=l9_316;
bool l9_319=l9_295;
bool l9_320;
if (l9_319)
{
l9_320=l9_292.y==3;
}
else
{
l9_320=l9_319;
}
float l9_321=l9_289.y;
float l9_322=l9_294.y;
float l9_323=l9_294.w;
bool l9_324=l9_320;
float l9_325=l9_299;
float l9_326=fast::clamp(l9_321,l9_322,l9_323);
float l9_327=step(abs(l9_321-l9_326),9.9999997e-06);
l9_325*=(l9_327+((1.0-float(l9_324))*(1.0-l9_327)));
l9_321=l9_326;
l9_289.y=l9_321;
l9_299=l9_325;
}
float2 l9_328=l9_289;
bool l9_329=l9_290;
float3x3 l9_330=l9_291;
if (l9_329)
{
l9_328=float2((l9_330*float3(l9_328,1.0)).xy);
}
float2 l9_331=l9_328;
l9_289=l9_331;
float l9_332=l9_289.x;
int l9_333=l9_292.x;
bool l9_334=l9_298;
float l9_335=l9_299;
if ((l9_333==0)||(l9_333==3))
{
float l9_336=l9_332;
float l9_337=0.0;
float l9_338=1.0;
bool l9_339=l9_334;
float l9_340=l9_335;
float l9_341=fast::clamp(l9_336,l9_337,l9_338);
float l9_342=step(abs(l9_336-l9_341),9.9999997e-06);
l9_340*=(l9_342+((1.0-float(l9_339))*(1.0-l9_342)));
l9_336=l9_341;
l9_332=l9_336;
l9_335=l9_340;
}
l9_289.x=l9_332;
l9_299=l9_335;
float l9_343=l9_289.y;
int l9_344=l9_292.y;
bool l9_345=l9_298;
float l9_346=l9_299;
if ((l9_344==0)||(l9_344==3))
{
float l9_347=l9_343;
float l9_348=0.0;
float l9_349=1.0;
bool l9_350=l9_345;
float l9_351=l9_346;
float l9_352=fast::clamp(l9_347,l9_348,l9_349);
float l9_353=step(abs(l9_347-l9_352),9.9999997e-06);
l9_351*=(l9_353+((1.0-float(l9_350))*(1.0-l9_353)));
l9_347=l9_352;
l9_343=l9_347;
l9_346=l9_351;
}
l9_289.y=l9_343;
l9_299=l9_346;
float2 l9_354=l9_289;
int l9_355=l9_287;
int l9_356=l9_288;
float l9_357=l9_297;
float2 l9_358=l9_354;
int l9_359=l9_355;
int l9_360=l9_356;
float3 l9_361=float3(0.0);
if (l9_359==0)
{
l9_361=float3(l9_358,0.0);
}
else
{
if (l9_359==1)
{
l9_361=float3(l9_358.x,(l9_358.y*0.5)+(0.5-(float(l9_360)*0.5)),0.0);
}
else
{
l9_361=float3(l9_358,float(l9_360));
}
}
float3 l9_362=l9_361;
float3 l9_363=l9_362;
float4 l9_364=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_363.xy,bias(l9_357));
float4 l9_365=l9_364;
if (l9_295)
{
l9_365=mix(l9_296,l9_365,float4(l9_299));
}
float4 l9_366=l9_365;
l9_280=l9_366;
float4 l9_367=l9_280;
float4 l9_368=l9_367;
float2 l9_369=l9_94;
if (N123_EnableInfinite==1.0)
{
float2 l9_370=float2(N123_OceanAabbMin.x,N123_OceanAabbMin.z);
float2 l9_371=float2(N123_OceanAabbMax.x,N123_OceanAabbMax.z);
float3 l9_372=(*sc_set0.UserUniforms).sc_Camera.position;
float2 l9_373=float2(0.0)+(((l9_372.xz-l9_370)*1.0)/((l9_371-l9_370)+float2(1e-06)));
l9_373.y=1.0-l9_373.y;
l9_369=(l9_94+l9_373)-float2(0.5);
}
float2 l9_374=l9_369;
float4 l9_375=float4(0.0);
int l9_376;
if ((int(oceanHeightmapHasSwappedViews_tmp)!=0))
{
int l9_377=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_377=0;
}
else
{
l9_377=in.varStereoViewID;
}
int l9_378=l9_377;
l9_376=1-l9_378;
}
else
{
int l9_379=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_379=0;
}
else
{
l9_379=in.varStereoViewID;
}
int l9_380=l9_379;
l9_376=l9_380;
}
int l9_381=l9_376;
int l9_382=oceanHeightmapLayout_tmp;
int l9_383=l9_381;
float2 l9_384=l9_374;
bool l9_385=(int(SC_USE_UV_TRANSFORM_oceanHeightmap_tmp)!=0);
float3x3 l9_386=(*sc_set0.UserUniforms).oceanHeightmapTransform;
int2 l9_387=int2(SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap_tmp,SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap_tmp);
bool l9_388=(int(SC_USE_UV_MIN_MAX_oceanHeightmap_tmp)!=0);
float4 l9_389=(*sc_set0.UserUniforms).oceanHeightmapUvMinMax;
bool l9_390=(int(SC_USE_CLAMP_TO_BORDER_oceanHeightmap_tmp)!=0);
float4 l9_391=(*sc_set0.UserUniforms).oceanHeightmapBorderColor;
float l9_392=0.0;
bool l9_393=l9_390&&(!l9_388);
float l9_394=1.0;
float l9_395=l9_384.x;
int l9_396=l9_387.x;
if (l9_396==1)
{
l9_395=fract(l9_395);
}
else
{
if (l9_396==2)
{
float l9_397=fract(l9_395);
float l9_398=l9_395-l9_397;
float l9_399=step(0.25,fract(l9_398*0.5));
l9_395=mix(l9_397,1.0-l9_397,fast::clamp(l9_399,0.0,1.0));
}
}
l9_384.x=l9_395;
float l9_400=l9_384.y;
int l9_401=l9_387.y;
if (l9_401==1)
{
l9_400=fract(l9_400);
}
else
{
if (l9_401==2)
{
float l9_402=fract(l9_400);
float l9_403=l9_400-l9_402;
float l9_404=step(0.25,fract(l9_403*0.5));
l9_400=mix(l9_402,1.0-l9_402,fast::clamp(l9_404,0.0,1.0));
}
}
l9_384.y=l9_400;
if (l9_388)
{
bool l9_405=l9_390;
bool l9_406;
if (l9_405)
{
l9_406=l9_387.x==3;
}
else
{
l9_406=l9_405;
}
float l9_407=l9_384.x;
float l9_408=l9_389.x;
float l9_409=l9_389.z;
bool l9_410=l9_406;
float l9_411=l9_394;
float l9_412=fast::clamp(l9_407,l9_408,l9_409);
float l9_413=step(abs(l9_407-l9_412),9.9999997e-06);
l9_411*=(l9_413+((1.0-float(l9_410))*(1.0-l9_413)));
l9_407=l9_412;
l9_384.x=l9_407;
l9_394=l9_411;
bool l9_414=l9_390;
bool l9_415;
if (l9_414)
{
l9_415=l9_387.y==3;
}
else
{
l9_415=l9_414;
}
float l9_416=l9_384.y;
float l9_417=l9_389.y;
float l9_418=l9_389.w;
bool l9_419=l9_415;
float l9_420=l9_394;
float l9_421=fast::clamp(l9_416,l9_417,l9_418);
float l9_422=step(abs(l9_416-l9_421),9.9999997e-06);
l9_420*=(l9_422+((1.0-float(l9_419))*(1.0-l9_422)));
l9_416=l9_421;
l9_384.y=l9_416;
l9_394=l9_420;
}
float2 l9_423=l9_384;
bool l9_424=l9_385;
float3x3 l9_425=l9_386;
if (l9_424)
{
l9_423=float2((l9_425*float3(l9_423,1.0)).xy);
}
float2 l9_426=l9_423;
l9_384=l9_426;
float l9_427=l9_384.x;
int l9_428=l9_387.x;
bool l9_429=l9_393;
float l9_430=l9_394;
if ((l9_428==0)||(l9_428==3))
{
float l9_431=l9_427;
float l9_432=0.0;
float l9_433=1.0;
bool l9_434=l9_429;
float l9_435=l9_430;
float l9_436=fast::clamp(l9_431,l9_432,l9_433);
float l9_437=step(abs(l9_431-l9_436),9.9999997e-06);
l9_435*=(l9_437+((1.0-float(l9_434))*(1.0-l9_437)));
l9_431=l9_436;
l9_427=l9_431;
l9_430=l9_435;
}
l9_384.x=l9_427;
l9_394=l9_430;
float l9_438=l9_384.y;
int l9_439=l9_387.y;
bool l9_440=l9_393;
float l9_441=l9_394;
if ((l9_439==0)||(l9_439==3))
{
float l9_442=l9_438;
float l9_443=0.0;
float l9_444=1.0;
bool l9_445=l9_440;
float l9_446=l9_441;
float l9_447=fast::clamp(l9_442,l9_443,l9_444);
float l9_448=step(abs(l9_442-l9_447),9.9999997e-06);
l9_446*=(l9_448+((1.0-float(l9_445))*(1.0-l9_448)));
l9_442=l9_447;
l9_438=l9_442;
l9_441=l9_446;
}
l9_384.y=l9_438;
l9_394=l9_441;
float2 l9_449=l9_384;
int l9_450=l9_382;
int l9_451=l9_383;
float l9_452=l9_392;
float2 l9_453=l9_449;
int l9_454=l9_450;
int l9_455=l9_451;
float3 l9_456=float3(0.0);
if (l9_454==0)
{
l9_456=float3(l9_453,0.0);
}
else
{
if (l9_454==1)
{
l9_456=float3(l9_453.x,(l9_453.y*0.5)+(0.5-(float(l9_455)*0.5)),0.0);
}
else
{
l9_456=float3(l9_453,float(l9_455));
}
}
float3 l9_457=l9_456;
float3 l9_458=l9_457;
float4 l9_459=sc_set0.oceanHeightmap.sample(sc_set0.oceanHeightmapSmpSC,l9_458.xy,bias(l9_452));
float4 l9_460=l9_459;
if (l9_390)
{
l9_460=mix(l9_391,l9_460,float4(l9_394));
}
float4 l9_461=l9_460;
l9_375=l9_461;
float4 l9_462=l9_375;
float2 l9_463=l9_462.xy;
float l9_464=N123_unpackVal.x;
float l9_465=N123_unpackVal.y;
float l9_466=0.0;
float2 l9_467=l9_463;
float l9_468=l9_464;
float l9_469=l9_465;
float l9_470=0.99998999;
float2 l9_471=l9_467;
#if (1)
{
l9_471=floor((l9_471*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_472=dot(l9_471,float2(1.0,0.0039215689));
float l9_473=l9_472;
float l9_474=0.0;
float l9_475=l9_470;
float l9_476=l9_468;
float l9_477=l9_469;
float l9_478=l9_476+(((l9_473-l9_474)*(l9_477-l9_476))/(l9_475-l9_474));
float l9_479=l9_478;
l9_466=l9_479;
float l9_480=l9_466;
float l9_481=l9_480;
float l9_482=0.0+(((l9_481-N123_unpackVal.x)*1.0)/((N123_unpackVal.y-N123_unpackVal.x)+1e-06));
tempGlobals.N123_TatalHeightRemap=l9_482;
float l9_483=l9_481;
if (N123_EnableFluid==1.0)
{
float2 l9_484=l9_94;
float4 l9_485=float4(0.0);
int l9_486;
if ((int(fluidPressureHasSwappedViews_tmp)!=0))
{
int l9_487=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_487=0;
}
else
{
l9_487=in.varStereoViewID;
}
int l9_488=l9_487;
l9_486=1-l9_488;
}
else
{
int l9_489=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_489=0;
}
else
{
l9_489=in.varStereoViewID;
}
int l9_490=l9_489;
l9_486=l9_490;
}
int l9_491=l9_486;
int l9_492=fluidPressureLayout_tmp;
int l9_493=l9_491;
float2 l9_494=l9_484;
bool l9_495=(int(SC_USE_UV_TRANSFORM_fluidPressure_tmp)!=0);
float3x3 l9_496=(*sc_set0.UserUniforms).fluidPressureTransform;
int2 l9_497=int2(SC_SOFTWARE_WRAP_MODE_U_fluidPressure_tmp,SC_SOFTWARE_WRAP_MODE_V_fluidPressure_tmp);
bool l9_498=(int(SC_USE_UV_MIN_MAX_fluidPressure_tmp)!=0);
float4 l9_499=(*sc_set0.UserUniforms).fluidPressureUvMinMax;
bool l9_500=(int(SC_USE_CLAMP_TO_BORDER_fluidPressure_tmp)!=0);
float4 l9_501=(*sc_set0.UserUniforms).fluidPressureBorderColor;
float l9_502=0.0;
bool l9_503=l9_500&&(!l9_498);
float l9_504=1.0;
float l9_505=l9_494.x;
int l9_506=l9_497.x;
if (l9_506==1)
{
l9_505=fract(l9_505);
}
else
{
if (l9_506==2)
{
float l9_507=fract(l9_505);
float l9_508=l9_505-l9_507;
float l9_509=step(0.25,fract(l9_508*0.5));
l9_505=mix(l9_507,1.0-l9_507,fast::clamp(l9_509,0.0,1.0));
}
}
l9_494.x=l9_505;
float l9_510=l9_494.y;
int l9_511=l9_497.y;
if (l9_511==1)
{
l9_510=fract(l9_510);
}
else
{
if (l9_511==2)
{
float l9_512=fract(l9_510);
float l9_513=l9_510-l9_512;
float l9_514=step(0.25,fract(l9_513*0.5));
l9_510=mix(l9_512,1.0-l9_512,fast::clamp(l9_514,0.0,1.0));
}
}
l9_494.y=l9_510;
if (l9_498)
{
bool l9_515=l9_500;
bool l9_516;
if (l9_515)
{
l9_516=l9_497.x==3;
}
else
{
l9_516=l9_515;
}
float l9_517=l9_494.x;
float l9_518=l9_499.x;
float l9_519=l9_499.z;
bool l9_520=l9_516;
float l9_521=l9_504;
float l9_522=fast::clamp(l9_517,l9_518,l9_519);
float l9_523=step(abs(l9_517-l9_522),9.9999997e-06);
l9_521*=(l9_523+((1.0-float(l9_520))*(1.0-l9_523)));
l9_517=l9_522;
l9_494.x=l9_517;
l9_504=l9_521;
bool l9_524=l9_500;
bool l9_525;
if (l9_524)
{
l9_525=l9_497.y==3;
}
else
{
l9_525=l9_524;
}
float l9_526=l9_494.y;
float l9_527=l9_499.y;
float l9_528=l9_499.w;
bool l9_529=l9_525;
float l9_530=l9_504;
float l9_531=fast::clamp(l9_526,l9_527,l9_528);
float l9_532=step(abs(l9_526-l9_531),9.9999997e-06);
l9_530*=(l9_532+((1.0-float(l9_529))*(1.0-l9_532)));
l9_526=l9_531;
l9_494.y=l9_526;
l9_504=l9_530;
}
float2 l9_533=l9_494;
bool l9_534=l9_495;
float3x3 l9_535=l9_496;
if (l9_534)
{
l9_533=float2((l9_535*float3(l9_533,1.0)).xy);
}
float2 l9_536=l9_533;
l9_494=l9_536;
float l9_537=l9_494.x;
int l9_538=l9_497.x;
bool l9_539=l9_503;
float l9_540=l9_504;
if ((l9_538==0)||(l9_538==3))
{
float l9_541=l9_537;
float l9_542=0.0;
float l9_543=1.0;
bool l9_544=l9_539;
float l9_545=l9_540;
float l9_546=fast::clamp(l9_541,l9_542,l9_543);
float l9_547=step(abs(l9_541-l9_546),9.9999997e-06);
l9_545*=(l9_547+((1.0-float(l9_544))*(1.0-l9_547)));
l9_541=l9_546;
l9_537=l9_541;
l9_540=l9_545;
}
l9_494.x=l9_537;
l9_504=l9_540;
float l9_548=l9_494.y;
int l9_549=l9_497.y;
bool l9_550=l9_503;
float l9_551=l9_504;
if ((l9_549==0)||(l9_549==3))
{
float l9_552=l9_548;
float l9_553=0.0;
float l9_554=1.0;
bool l9_555=l9_550;
float l9_556=l9_551;
float l9_557=fast::clamp(l9_552,l9_553,l9_554);
float l9_558=step(abs(l9_552-l9_557),9.9999997e-06);
l9_556*=(l9_558+((1.0-float(l9_555))*(1.0-l9_558)));
l9_552=l9_557;
l9_548=l9_552;
l9_551=l9_556;
}
l9_494.y=l9_548;
l9_504=l9_551;
float2 l9_559=l9_494;
int l9_560=l9_492;
int l9_561=l9_493;
float l9_562=l9_502;
float2 l9_563=l9_559;
int l9_564=l9_560;
int l9_565=l9_561;
float3 l9_566=float3(0.0);
if (l9_564==0)
{
l9_566=float3(l9_563,0.0);
}
else
{
if (l9_564==1)
{
l9_566=float3(l9_563.x,(l9_563.y*0.5)+(0.5-(float(l9_565)*0.5)),0.0);
}
else
{
l9_566=float3(l9_563,float(l9_565));
}
}
float3 l9_567=l9_566;
float3 l9_568=l9_567;
float4 l9_569=sc_set0.fluidPressure.sample(sc_set0.fluidPressureSmpSC,l9_568.xy,bias(l9_562));
float4 l9_570=l9_569;
if (l9_500)
{
l9_570=mix(l9_501,l9_570,float4(l9_504));
}
float4 l9_571=l9_570;
l9_485=l9_571;
float4 l9_572=l9_485;
float2 l9_573=l9_572.xy;
float l9_574=N123_pressureRange.x;
float l9_575=N123_pressureRange.y;
float l9_576=0.0;
float2 l9_577=l9_573;
float l9_578=l9_574;
float l9_579=l9_575;
float l9_580=0.99998999;
float2 l9_581=l9_577;
#if (1)
{
l9_581=floor((l9_581*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_582=dot(l9_581,float2(1.0,0.0039215689));
float l9_583=l9_582;
float l9_584=0.0;
float l9_585=l9_580;
float l9_586=l9_578;
float l9_587=l9_579;
float l9_588=l9_586+(((l9_583-l9_584)*(l9_587-l9_586))/(l9_585-l9_584));
float l9_589=l9_588;
l9_576=l9_589;
float l9_590=l9_576;
float l9_591=l9_590;
float l9_592=l9_591*N123_FluidMul;
l9_483=l9_481+l9_592;
float l9_593=(0.0+(((fast::clamp(l9_592,N123_unpackVal.x,N123_unpackVal.y)-N123_unpackVal.x)*1.0)/((N123_unpackVal.y-N123_unpackVal.x)+1e-06)))*0.60000002;
tempGlobals.N123_TatalHeightRemap+=l9_593;
}
float l9_594=fast::clamp(smoothstep(0.44999999,0.60000002,tempGlobals.N123_TatalHeightRemap),0.0,1.0);
float2 l9_595=l9_369;
float4 l9_596=float4(0.0);
int l9_597;
if ((int(oceanNormalHasSwappedViews_tmp)!=0))
{
int l9_598=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_598=0;
}
else
{
l9_598=in.varStereoViewID;
}
int l9_599=l9_598;
l9_597=1-l9_599;
}
else
{
int l9_600=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_600=0;
}
else
{
l9_600=in.varStereoViewID;
}
int l9_601=l9_600;
l9_597=l9_601;
}
int l9_602=l9_597;
int l9_603=oceanNormalLayout_tmp;
int l9_604=l9_602;
float2 l9_605=l9_595;
bool l9_606=(int(SC_USE_UV_TRANSFORM_oceanNormal_tmp)!=0);
float3x3 l9_607=(*sc_set0.UserUniforms).oceanNormalTransform;
int2 l9_608=int2(SC_SOFTWARE_WRAP_MODE_U_oceanNormal_tmp,SC_SOFTWARE_WRAP_MODE_V_oceanNormal_tmp);
bool l9_609=(int(SC_USE_UV_MIN_MAX_oceanNormal_tmp)!=0);
float4 l9_610=(*sc_set0.UserUniforms).oceanNormalUvMinMax;
bool l9_611=(int(SC_USE_CLAMP_TO_BORDER_oceanNormal_tmp)!=0);
float4 l9_612=(*sc_set0.UserUniforms).oceanNormalBorderColor;
float l9_613=0.0;
bool l9_614=l9_611&&(!l9_609);
float l9_615=1.0;
float l9_616=l9_605.x;
int l9_617=l9_608.x;
if (l9_617==1)
{
l9_616=fract(l9_616);
}
else
{
if (l9_617==2)
{
float l9_618=fract(l9_616);
float l9_619=l9_616-l9_618;
float l9_620=step(0.25,fract(l9_619*0.5));
l9_616=mix(l9_618,1.0-l9_618,fast::clamp(l9_620,0.0,1.0));
}
}
l9_605.x=l9_616;
float l9_621=l9_605.y;
int l9_622=l9_608.y;
if (l9_622==1)
{
l9_621=fract(l9_621);
}
else
{
if (l9_622==2)
{
float l9_623=fract(l9_621);
float l9_624=l9_621-l9_623;
float l9_625=step(0.25,fract(l9_624*0.5));
l9_621=mix(l9_623,1.0-l9_623,fast::clamp(l9_625,0.0,1.0));
}
}
l9_605.y=l9_621;
if (l9_609)
{
bool l9_626=l9_611;
bool l9_627;
if (l9_626)
{
l9_627=l9_608.x==3;
}
else
{
l9_627=l9_626;
}
float l9_628=l9_605.x;
float l9_629=l9_610.x;
float l9_630=l9_610.z;
bool l9_631=l9_627;
float l9_632=l9_615;
float l9_633=fast::clamp(l9_628,l9_629,l9_630);
float l9_634=step(abs(l9_628-l9_633),9.9999997e-06);
l9_632*=(l9_634+((1.0-float(l9_631))*(1.0-l9_634)));
l9_628=l9_633;
l9_605.x=l9_628;
l9_615=l9_632;
bool l9_635=l9_611;
bool l9_636;
if (l9_635)
{
l9_636=l9_608.y==3;
}
else
{
l9_636=l9_635;
}
float l9_637=l9_605.y;
float l9_638=l9_610.y;
float l9_639=l9_610.w;
bool l9_640=l9_636;
float l9_641=l9_615;
float l9_642=fast::clamp(l9_637,l9_638,l9_639);
float l9_643=step(abs(l9_637-l9_642),9.9999997e-06);
l9_641*=(l9_643+((1.0-float(l9_640))*(1.0-l9_643)));
l9_637=l9_642;
l9_605.y=l9_637;
l9_615=l9_641;
}
float2 l9_644=l9_605;
bool l9_645=l9_606;
float3x3 l9_646=l9_607;
if (l9_645)
{
l9_644=float2((l9_646*float3(l9_644,1.0)).xy);
}
float2 l9_647=l9_644;
l9_605=l9_647;
float l9_648=l9_605.x;
int l9_649=l9_608.x;
bool l9_650=l9_614;
float l9_651=l9_615;
if ((l9_649==0)||(l9_649==3))
{
float l9_652=l9_648;
float l9_653=0.0;
float l9_654=1.0;
bool l9_655=l9_650;
float l9_656=l9_651;
float l9_657=fast::clamp(l9_652,l9_653,l9_654);
float l9_658=step(abs(l9_652-l9_657),9.9999997e-06);
l9_656*=(l9_658+((1.0-float(l9_655))*(1.0-l9_658)));
l9_652=l9_657;
l9_648=l9_652;
l9_651=l9_656;
}
l9_605.x=l9_648;
l9_615=l9_651;
float l9_659=l9_605.y;
int l9_660=l9_608.y;
bool l9_661=l9_614;
float l9_662=l9_615;
if ((l9_660==0)||(l9_660==3))
{
float l9_663=l9_659;
float l9_664=0.0;
float l9_665=1.0;
bool l9_666=l9_661;
float l9_667=l9_662;
float l9_668=fast::clamp(l9_663,l9_664,l9_665);
float l9_669=step(abs(l9_663-l9_668),9.9999997e-06);
l9_667*=(l9_669+((1.0-float(l9_666))*(1.0-l9_669)));
l9_663=l9_668;
l9_659=l9_663;
l9_662=l9_667;
}
l9_605.y=l9_659;
l9_615=l9_662;
float2 l9_670=l9_605;
int l9_671=l9_603;
int l9_672=l9_604;
float l9_673=l9_613;
float2 l9_674=l9_670;
int l9_675=l9_671;
int l9_676=l9_672;
float3 l9_677=float3(0.0);
if (l9_675==0)
{
l9_677=float3(l9_674,0.0);
}
else
{
if (l9_675==1)
{
l9_677=float3(l9_674.x,(l9_674.y*0.5)+(0.5-(float(l9_676)*0.5)),0.0);
}
else
{
l9_677=float3(l9_674,float(l9_676));
}
}
float3 l9_678=l9_677;
float3 l9_679=l9_678;
float4 l9_680=sc_set0.oceanNormal.sample(sc_set0.oceanNormalSmpSC,l9_679.xy,bias(l9_673));
float4 l9_681=l9_680;
if (l9_611)
{
l9_681=mix(l9_612,l9_681,float4(l9_615));
}
float4 l9_682=l9_681;
l9_596=l9_682;
float4 l9_683=l9_596;
float3 l9_684=(l9_683.xyz*1.9921875)-float3(1.0);
N123_Normal=l9_684;
N123_SurfacePosition=float3(0.0,l9_483,0.0)+l9_96;
tempGlobals.N123_fbm=1.0;
if (N123_EnableFoam==1.0)
{
float l9_685=tempGlobals.gTimeElapsed;
float2 l9_686=N123_SurfacePosition.zx*N123_FBMScale;
float l9_687=l9_685*N123_OceanSpeed;
float l9_688=0.0;
float2 l9_689=l9_686+float2(l9_687);
float2 l9_690=floor(l9_689);
float2 l9_691=fract(l9_689);
l9_691=(l9_691*l9_691)*(float2(3.0)-(l9_691*2.0));
float2 l9_692=l9_690;
float l9_693=fract(sin(dot(l9_692,float2(12.9898,4.1413999)))*43758.547);
float2 l9_694=l9_690+float2(1.0,0.0);
float l9_695=fract(sin(dot(l9_694,float2(12.9898,4.1413999)))*43758.547);
float2 l9_696=l9_690+float2(0.0,1.0);
float l9_697=fract(sin(dot(l9_696,float2(12.9898,4.1413999)))*43758.547);
float2 l9_698=l9_690+float2(1.0);
float l9_699=fract(sin(dot(l9_698,float2(12.9898,4.1413999)))*43758.547);
float l9_700=mix(mix(l9_693,l9_695,l9_691.x),mix(l9_697,l9_699,l9_691.x),l9_691.y);
float l9_701=l9_700*l9_700;
l9_688+=(0.5*l9_701);
l9_686=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_686)*2.02;
float2 l9_702=l9_686;
float2 l9_703=floor(l9_702);
float2 l9_704=fract(l9_702);
l9_704=(l9_704*l9_704)*(float2(3.0)-(l9_704*2.0));
float2 l9_705=l9_703;
float l9_706=fract(sin(dot(l9_705,float2(12.9898,4.1413999)))*43758.547);
float2 l9_707=l9_703+float2(1.0,0.0);
float l9_708=fract(sin(dot(l9_707,float2(12.9898,4.1413999)))*43758.547);
float2 l9_709=l9_703+float2(0.0,1.0);
float l9_710=fract(sin(dot(l9_709,float2(12.9898,4.1413999)))*43758.547);
float2 l9_711=l9_703+float2(1.0);
float l9_712=fract(sin(dot(l9_711,float2(12.9898,4.1413999)))*43758.547);
float l9_713=mix(mix(l9_706,l9_708,l9_704.x),mix(l9_710,l9_712,l9_704.x),l9_704.y);
float l9_714=l9_713*l9_713;
l9_688+=(0.03125*l9_714);
l9_686=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_686)*2.01;
float2 l9_715=l9_686;
float2 l9_716=floor(l9_715);
float2 l9_717=fract(l9_715);
l9_717=(l9_717*l9_717)*(float2(3.0)-(l9_717*2.0));
float2 l9_718=l9_716;
float l9_719=fract(sin(dot(l9_718,float2(12.9898,4.1413999)))*43758.547);
float2 l9_720=l9_716+float2(1.0,0.0);
float l9_721=fract(sin(dot(l9_720,float2(12.9898,4.1413999)))*43758.547);
float2 l9_722=l9_716+float2(0.0,1.0);
float l9_723=fract(sin(dot(l9_722,float2(12.9898,4.1413999)))*43758.547);
float2 l9_724=l9_716+float2(1.0);
float l9_725=fract(sin(dot(l9_724,float2(12.9898,4.1413999)))*43758.547);
float l9_726=mix(mix(l9_719,l9_721,l9_717.x),mix(l9_723,l9_725,l9_717.x),l9_717.y);
float l9_727=l9_726*l9_726;
l9_688+=(0.25*l9_727);
l9_686=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_686)*2.03;
float2 l9_728=l9_686;
float2 l9_729=floor(l9_728);
float2 l9_730=fract(l9_728);
l9_730=(l9_730*l9_730)*(float2(3.0)-(l9_730*2.0));
float2 l9_731=l9_729;
float l9_732=fract(sin(dot(l9_731,float2(12.9898,4.1413999)))*43758.547);
float2 l9_733=l9_729+float2(1.0,0.0);
float l9_734=fract(sin(dot(l9_733,float2(12.9898,4.1413999)))*43758.547);
float2 l9_735=l9_729+float2(0.0,1.0);
float l9_736=fract(sin(dot(l9_735,float2(12.9898,4.1413999)))*43758.547);
float2 l9_737=l9_729+float2(1.0);
float l9_738=fract(sin(dot(l9_737,float2(12.9898,4.1413999)))*43758.547);
float l9_739=mix(mix(l9_732,l9_734,l9_730.x),mix(l9_736,l9_738,l9_730.x),l9_730.y);
float l9_740=l9_739*l9_739;
l9_688+=(0.125*l9_740);
l9_686=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_686)*2.01;
float2 l9_741=l9_686;
float2 l9_742=floor(l9_741);
float2 l9_743=fract(l9_741);
l9_743=(l9_743*l9_743)*(float2(3.0)-(l9_743*2.0));
float2 l9_744=l9_742;
float l9_745=fract(sin(dot(l9_744,float2(12.9898,4.1413999)))*43758.547);
float2 l9_746=l9_742+float2(1.0,0.0);
float l9_747=fract(sin(dot(l9_746,float2(12.9898,4.1413999)))*43758.547);
float2 l9_748=l9_742+float2(0.0,1.0);
float l9_749=fract(sin(dot(l9_748,float2(12.9898,4.1413999)))*43758.547);
float2 l9_750=l9_742+float2(1.0);
float l9_751=fract(sin(dot(l9_750,float2(12.9898,4.1413999)))*43758.547);
float l9_752=mix(mix(l9_745,l9_747,l9_743.x),mix(l9_749,l9_751,l9_743.x),l9_743.y);
float l9_753=l9_752*l9_752;
l9_688+=(0.0625*l9_753);
l9_686=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_686)*2.04;
float2 l9_754=l9_686+float2(sin(l9_687));
float2 l9_755=floor(l9_754);
float2 l9_756=fract(l9_754);
l9_756=(l9_756*l9_756)*(float2(3.0)-(l9_756*2.0));
float2 l9_757=l9_755;
float l9_758=fract(sin(dot(l9_757,float2(12.9898,4.1413999)))*43758.547);
float2 l9_759=l9_755+float2(1.0,0.0);
float l9_760=fract(sin(dot(l9_759,float2(12.9898,4.1413999)))*43758.547);
float2 l9_761=l9_755+float2(0.0,1.0);
float l9_762=fract(sin(dot(l9_761,float2(12.9898,4.1413999)))*43758.547);
float2 l9_763=l9_755+float2(1.0);
float l9_764=fract(sin(dot(l9_763,float2(12.9898,4.1413999)))*43758.547);
float l9_765=mix(mix(l9_758,l9_760,l9_756.x),mix(l9_762,l9_764,l9_756.x),l9_756.y);
float l9_766=l9_765*l9_765;
l9_688+=(0.015625*l9_766);
float l9_767=l9_688/0.96875;
tempGlobals.N123_fbm=1.0-l9_767;
}
float3 l9_768=N123_Normal;
float l9_769=6.0;
float l9_770=4.0;
float3 l9_771=tempGlobals.VertexTangent_WorldSpace;
float3 l9_772=tempGlobals.VertexBinormal_WorldSpace;
float3 l9_773=tempGlobals.VertexNormal_WorldSpace;
float3 l9_774=float3x3(float3(l9_771),float3(l9_772),float3(l9_773))*l9_768;
float3 l9_775=tempGlobals.ViewDirWS;
float l9_776=abs(dot(-l9_775,l9_774));
float l9_777=1.0-l9_776;
float l9_778=l9_769;
float l9_779;
if (l9_777<=0.0)
{
l9_779=0.0;
}
else
{
l9_779=pow(l9_777,l9_778);
}
float l9_780=l9_779;
float l9_781=l9_780;
l9_781=fast::max(l9_781,0.0);
l9_781*=l9_770;
float l9_782=l9_781;
float l9_783=fast::clamp(l9_782,0.0,1.0);
float4 l9_784=float4(0.0);
float l9_785=0.0;
l9_785=tempGlobals.N123_TatalHeightRemap;
float4 l9_786=float4(0.0);
float4 l9_787=(*sc_set0.UserUniforms).colorTrough;
l9_786=l9_787;
float4 l9_788=float4(0.0);
float4 l9_789=(*sc_set0.UserUniforms).colorMiddle;
l9_788=l9_789;
float4 l9_790=float4(0.0);
float4 l9_791=(*sc_set0.UserUniforms).colorCrest;
l9_790=l9_791;
float l9_792=0.0;
l9_792=tempGlobals.N123_fbm;
float4 l9_793=float4(0.0);
l9_793=mix(l9_788,l9_790,float4(l9_792));
float4 l9_794=float4(0.0);
float l9_795=l9_785;
float4 l9_796=l9_786;
float l9_797=(*sc_set0.UserUniforms).Port_Position1_N030;
float4 l9_798=l9_786;
float l9_799=(*sc_set0.UserUniforms).Port_Position2_N030;
float4 l9_800=l9_786;
float l9_801=(*sc_set0.UserUniforms).Port_Position3_N030;
float4 l9_802=l9_788;
float l9_803=(*sc_set0.UserUniforms).Port_Position4_N030;
float4 l9_804=l9_793;
float4 l9_805=l9_793;
l9_795=fast::clamp(l9_795,0.0,1.0);
float4 l9_806;
if (l9_795<l9_797)
{
l9_806=mix(l9_796,l9_798,float4(fast::clamp(l9_795/l9_797,0.0,1.0)));
}
else
{
if (l9_795<l9_799)
{
l9_806=mix(l9_798,l9_800,float4(fast::clamp((l9_795-l9_797)/(l9_799-l9_797),0.0,1.0)));
}
else
{
if (l9_795<l9_801)
{
l9_806=mix(l9_800,l9_802,float4(fast::clamp((l9_795-l9_799)/(l9_801-l9_799),0.0,1.0)));
}
else
{
if (l9_795<l9_803)
{
l9_806=mix(l9_802,l9_804,float4(fast::clamp((l9_795-l9_801)/(l9_803-l9_801),0.0,1.0)));
}
else
{
l9_806=mix(l9_804,l9_805,float4(fast::clamp((l9_795-l9_803)/(1.0-l9_803),0.0,1.0)));
}
}
}
}
bool l9_807=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_808;
if (l9_807)
{
l9_808=!PreviewInfo.Saved;
}
else
{
l9_808=l9_807;
}
bool l9_809;
if (l9_808)
{
l9_809=30==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_809=l9_808;
}
if (l9_809)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=l9_806;
PreviewInfo.Color.w=1.0;
}
l9_794=l9_806;
l9_784=l9_794;
float4 l9_810=l9_784;
float4 l9_811=l9_810;
int l9_812=0;
l9_812=sc_DirectionalLightsCount_tmp;
int l9_813=l9_812;
if (l9_813>0)
{
float l9_814;
int l9_815=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
int l9_816=0;
l9_816=sc_DirectionalLightsCount_tmp;
int l9_817=l9_816;
if (l9_815<l9_817)
{
int l9_818=l9_815;
float3 l9_819=float3(0.0);
if (l9_818<sc_DirectionalLightsCount_tmp)
{
l9_819=-(*sc_set0.UserUniforms).sc_DirectionalLights[l9_818].direction;
}
float3 l9_820=l9_819;
float3 l9_821=l9_820;
float l9_822=(dot(N123_Normal,l9_821)*0.60000002)+0.40000001;
float l9_823=10.0;
if (l9_822<=0.0)
{
l9_814=0.0;
}
else
{
l9_814=pow(l9_822,l9_823);
}
float l9_824=l9_814;
float l9_825=fast::clamp(l9_824,0.0,1.0);
float4 l9_826=mix(l9_811,l9_368,float4(l9_825));
float4 l9_827=l9_811*l9_277;
float l9_828=fast::max(l9_783,l9_594)*0.89999998;
N123_FrontFacing=mix(l9_826,l9_827,float4(l9_828));
N123_BackFacing=l9_277;
l9_815++;
continue;
}
else
{
break;
}
}
}
l9_18=N123_FrontFacing;
l9_16=l9_18;
param_2=l9_16;
param_4=param_2;
}
else
{
float4 l9_829=float4(0.0);
ssGlobals l9_830=param_5;
tempGlobals=l9_830;
float4 l9_831=float4(0.0);
float3 l9_832=float3(0.0);
float3 l9_833=float3(0.0);
float3 l9_834=(*sc_set0.UserUniforms).oceanMin;
l9_833=l9_834;
l9_832=l9_833;
float3 l9_835=l9_832;
N123_OceanAabbMin=l9_835;
float3 l9_836=float3(0.0);
float3 l9_837=float3(0.0);
float3 l9_838=(*sc_set0.UserUniforms).oceanMax;
l9_837=l9_838;
l9_836=l9_837;
float3 l9_839=l9_836;
N123_OceanAabbMax=l9_839;
float l9_840=0.0;
float l9_841=0.0;
float l9_842=(*sc_set0.UserUniforms).speed;
l9_841=l9_842;
l9_840=l9_841;
float l9_843=l9_840;
N123_OceanSpeed=l9_843;
float l9_844=0.0;
float l9_845=0.0;
float l9_846=(*sc_set0.UserUniforms).enableFoam;
l9_845=l9_846;
l9_844=l9_845;
float l9_847=l9_844;
N123_EnableFoam=l9_847;
float l9_848=0.0;
float l9_849=0.0;
float l9_850=(*sc_set0.UserUniforms).fbmScale;
l9_849=l9_850;
l9_848=l9_849;
float l9_851=l9_848;
N123_FBMScale=l9_851;
float l9_852=0.0;
float l9_853=0.0;
float l9_854=(*sc_set0.UserUniforms).enableInfinite;
l9_853=l9_854;
l9_852=l9_853;
float l9_855=l9_852;
N123_EnableInfinite=l9_855;
float l9_856=0.0;
float l9_857=0.0;
float l9_858=(*sc_set0.UserUniforms).distortionScale;
l9_857=l9_858;
l9_856=l9_857;
float l9_859=l9_856;
N123_DistortionScale=l9_859;
float l9_860=0.0;
float l9_861=0.0;
float l9_862=(*sc_set0.UserUniforms).distortionIntensity;
l9_861=l9_862;
l9_860=l9_861;
float l9_863=l9_860;
N123_DistortionIntensity=l9_863;
float l9_864=0.0;
float l9_865=0.0;
float l9_866=(*sc_set0.UserUniforms).enableFluid;
l9_865=l9_866;
l9_864=l9_865;
float l9_867=l9_864;
N123_EnableFluid=l9_867;
float2 l9_868=float2(0.0);
float2 l9_869=float2(0.0);
float2 l9_870=(*sc_set0.UserUniforms).pressureRange;
l9_869=l9_870;
l9_868=l9_869;
float2 l9_871=l9_868;
N123_pressureRange=l9_871;
float l9_872=0.0;
float l9_873=0.0;
float l9_874=(*sc_set0.UserUniforms).fluidMul;
l9_873=l9_874;
l9_872=l9_873;
float l9_875=l9_872;
N123_FluidMul=l9_875;
float2 l9_876=float2(0.0);
float2 l9_877=float2(0.0);
float2 l9_878=(*sc_set0.UserUniforms).unpackVal;
l9_877=l9_878;
l9_876=l9_877;
float2 l9_879=l9_876;
N123_unpackVal=l9_879;
float l9_880=0.0;
l9_880=tempGlobals.N123_TatalHeightRemap;
float4 l9_881=float4(0.0);
float4 l9_882=(*sc_set0.UserUniforms).colorTrough;
l9_881=l9_882;
float4 l9_883=float4(0.0);
float4 l9_884=(*sc_set0.UserUniforms).colorMiddle;
l9_883=l9_884;
float4 l9_885=float4(0.0);
float4 l9_886=(*sc_set0.UserUniforms).colorCrest;
l9_885=l9_886;
float l9_887=0.0;
l9_887=tempGlobals.N123_fbm;
float4 l9_888=float4(0.0);
l9_888=mix(l9_883,l9_885,float4(l9_887));
float l9_889=l9_880;
float4 l9_890=l9_881;
float l9_891=(*sc_set0.UserUniforms).Port_Position1_N030;
float4 l9_892=l9_881;
float l9_893=(*sc_set0.UserUniforms).Port_Position2_N030;
float4 l9_894=l9_881;
float l9_895=(*sc_set0.UserUniforms).Port_Position3_N030;
float4 l9_896=l9_883;
float l9_897=(*sc_set0.UserUniforms).Port_Position4_N030;
float4 l9_898=l9_888;
float4 l9_899=l9_888;
l9_889=fast::clamp(l9_889,0.0,1.0);
float4 l9_900;
if (l9_889<l9_891)
{
l9_900=mix(l9_890,l9_892,float4(fast::clamp(l9_889/l9_891,0.0,1.0)));
}
else
{
if (l9_889<l9_893)
{
l9_900=mix(l9_892,l9_894,float4(fast::clamp((l9_889-l9_891)/(l9_893-l9_891),0.0,1.0)));
}
else
{
if (l9_889<l9_895)
{
l9_900=mix(l9_894,l9_896,float4(fast::clamp((l9_889-l9_893)/(l9_895-l9_893),0.0,1.0)));
}
else
{
if (l9_889<l9_897)
{
l9_900=mix(l9_896,l9_898,float4(fast::clamp((l9_889-l9_895)/(l9_897-l9_895),0.0,1.0)));
}
else
{
l9_900=mix(l9_898,l9_899,float4(fast::clamp((l9_889-l9_897)/(1.0-l9_897),0.0,1.0)));
}
}
}
}
bool l9_901=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_902;
if (l9_901)
{
l9_902=!PreviewInfo.Saved;
}
else
{
l9_902=l9_901;
}
bool l9_903;
if (l9_902)
{
l9_903=30==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_903=l9_902;
}
if (l9_903)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=l9_900;
PreviewInfo.Color.w=1.0;
}
float2 l9_904=tempGlobals.gScreenCoord;
float2 l9_905=l9_904;
float2 l9_906=tempGlobals.Surface_UVCoord0;
float2 l9_907=l9_906;
float3 l9_908=tempGlobals.SurfacePosition_WorldSpace;
float3 l9_909=l9_908;
float2 l9_910=l9_907*N123_DistortionScale;
float4 l9_911=float4(0.0);
int l9_912;
if ((int(distortionTexHasSwappedViews_tmp)!=0))
{
int l9_913=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_913=0;
}
else
{
l9_913=in.varStereoViewID;
}
int l9_914=l9_913;
l9_912=1-l9_914;
}
else
{
int l9_915=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_915=0;
}
else
{
l9_915=in.varStereoViewID;
}
int l9_916=l9_915;
l9_912=l9_916;
}
int l9_917=l9_912;
int l9_918=distortionTexLayout_tmp;
int l9_919=l9_917;
float2 l9_920=l9_910;
bool l9_921=(int(SC_USE_UV_TRANSFORM_distortionTex_tmp)!=0);
float3x3 l9_922=(*sc_set0.UserUniforms).distortionTexTransform;
int2 l9_923=int2(SC_SOFTWARE_WRAP_MODE_U_distortionTex_tmp,SC_SOFTWARE_WRAP_MODE_V_distortionTex_tmp);
bool l9_924=(int(SC_USE_UV_MIN_MAX_distortionTex_tmp)!=0);
float4 l9_925=(*sc_set0.UserUniforms).distortionTexUvMinMax;
bool l9_926=(int(SC_USE_CLAMP_TO_BORDER_distortionTex_tmp)!=0);
float4 l9_927=(*sc_set0.UserUniforms).distortionTexBorderColor;
float l9_928=0.0;
bool l9_929=l9_926&&(!l9_924);
float l9_930=1.0;
float l9_931=l9_920.x;
int l9_932=l9_923.x;
if (l9_932==1)
{
l9_931=fract(l9_931);
}
else
{
if (l9_932==2)
{
float l9_933=fract(l9_931);
float l9_934=l9_931-l9_933;
float l9_935=step(0.25,fract(l9_934*0.5));
l9_931=mix(l9_933,1.0-l9_933,fast::clamp(l9_935,0.0,1.0));
}
}
l9_920.x=l9_931;
float l9_936=l9_920.y;
int l9_937=l9_923.y;
if (l9_937==1)
{
l9_936=fract(l9_936);
}
else
{
if (l9_937==2)
{
float l9_938=fract(l9_936);
float l9_939=l9_936-l9_938;
float l9_940=step(0.25,fract(l9_939*0.5));
l9_936=mix(l9_938,1.0-l9_938,fast::clamp(l9_940,0.0,1.0));
}
}
l9_920.y=l9_936;
if (l9_924)
{
bool l9_941=l9_926;
bool l9_942;
if (l9_941)
{
l9_942=l9_923.x==3;
}
else
{
l9_942=l9_941;
}
float l9_943=l9_920.x;
float l9_944=l9_925.x;
float l9_945=l9_925.z;
bool l9_946=l9_942;
float l9_947=l9_930;
float l9_948=fast::clamp(l9_943,l9_944,l9_945);
float l9_949=step(abs(l9_943-l9_948),9.9999997e-06);
l9_947*=(l9_949+((1.0-float(l9_946))*(1.0-l9_949)));
l9_943=l9_948;
l9_920.x=l9_943;
l9_930=l9_947;
bool l9_950=l9_926;
bool l9_951;
if (l9_950)
{
l9_951=l9_923.y==3;
}
else
{
l9_951=l9_950;
}
float l9_952=l9_920.y;
float l9_953=l9_925.y;
float l9_954=l9_925.w;
bool l9_955=l9_951;
float l9_956=l9_930;
float l9_957=fast::clamp(l9_952,l9_953,l9_954);
float l9_958=step(abs(l9_952-l9_957),9.9999997e-06);
l9_956*=(l9_958+((1.0-float(l9_955))*(1.0-l9_958)));
l9_952=l9_957;
l9_920.y=l9_952;
l9_930=l9_956;
}
float2 l9_959=l9_920;
bool l9_960=l9_921;
float3x3 l9_961=l9_922;
if (l9_960)
{
l9_959=float2((l9_961*float3(l9_959,1.0)).xy);
}
float2 l9_962=l9_959;
l9_920=l9_962;
float l9_963=l9_920.x;
int l9_964=l9_923.x;
bool l9_965=l9_929;
float l9_966=l9_930;
if ((l9_964==0)||(l9_964==3))
{
float l9_967=l9_963;
float l9_968=0.0;
float l9_969=1.0;
bool l9_970=l9_965;
float l9_971=l9_966;
float l9_972=fast::clamp(l9_967,l9_968,l9_969);
float l9_973=step(abs(l9_967-l9_972),9.9999997e-06);
l9_971*=(l9_973+((1.0-float(l9_970))*(1.0-l9_973)));
l9_967=l9_972;
l9_963=l9_967;
l9_966=l9_971;
}
l9_920.x=l9_963;
l9_930=l9_966;
float l9_974=l9_920.y;
int l9_975=l9_923.y;
bool l9_976=l9_929;
float l9_977=l9_930;
if ((l9_975==0)||(l9_975==3))
{
float l9_978=l9_974;
float l9_979=0.0;
float l9_980=1.0;
bool l9_981=l9_976;
float l9_982=l9_977;
float l9_983=fast::clamp(l9_978,l9_979,l9_980);
float l9_984=step(abs(l9_978-l9_983),9.9999997e-06);
l9_982*=(l9_984+((1.0-float(l9_981))*(1.0-l9_984)));
l9_978=l9_983;
l9_974=l9_978;
l9_977=l9_982;
}
l9_920.y=l9_974;
l9_930=l9_977;
float2 l9_985=l9_920;
int l9_986=l9_918;
int l9_987=l9_919;
float l9_988=l9_928;
float2 l9_989=l9_985;
int l9_990=l9_986;
int l9_991=l9_987;
float3 l9_992=float3(0.0);
if (l9_990==0)
{
l9_992=float3(l9_989,0.0);
}
else
{
if (l9_990==1)
{
l9_992=float3(l9_989.x,(l9_989.y*0.5)+(0.5-(float(l9_991)*0.5)),0.0);
}
else
{
l9_992=float3(l9_989,float(l9_991));
}
}
float3 l9_993=l9_992;
float3 l9_994=l9_993;
float4 l9_995=sc_set0.distortionTex.sample(sc_set0.distortionTexSmpSC,l9_994.xy,bias(l9_988));
float4 l9_996=l9_995;
if (l9_926)
{
l9_996=mix(l9_927,l9_996,float4(l9_930));
}
float4 l9_997=l9_996;
l9_911=l9_997;
float4 l9_998=l9_911;
float2 l9_999=l9_998.xy;
float2 l9_1000=(((l9_999-float2(1.0))*N123_DistortionIntensity)+l9_905)+float2(0.30000001);
float2 l9_1001=float2(l9_1000.x-0.15000001,1.0-l9_1000.y)*0.89999998;
float4 l9_1002=float4(0.0);
int l9_1003;
if ((int(screenTexHasSwappedViews_tmp)!=0))
{
int l9_1004=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1004=0;
}
else
{
l9_1004=in.varStereoViewID;
}
int l9_1005=l9_1004;
l9_1003=1-l9_1005;
}
else
{
int l9_1006=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1006=0;
}
else
{
l9_1006=in.varStereoViewID;
}
int l9_1007=l9_1006;
l9_1003=l9_1007;
}
int l9_1008=l9_1003;
int l9_1009=screenTexLayout_tmp;
int l9_1010=l9_1008;
float2 l9_1011=l9_1001;
bool l9_1012=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 l9_1013=(*sc_set0.UserUniforms).screenTexTransform;
int2 l9_1014=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool l9_1015=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 l9_1016=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool l9_1017=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 l9_1018=(*sc_set0.UserUniforms).screenTexBorderColor;
float l9_1019=0.0;
bool l9_1020=l9_1017&&(!l9_1015);
float l9_1021=1.0;
float l9_1022=l9_1011.x;
int l9_1023=l9_1014.x;
if (l9_1023==1)
{
l9_1022=fract(l9_1022);
}
else
{
if (l9_1023==2)
{
float l9_1024=fract(l9_1022);
float l9_1025=l9_1022-l9_1024;
float l9_1026=step(0.25,fract(l9_1025*0.5));
l9_1022=mix(l9_1024,1.0-l9_1024,fast::clamp(l9_1026,0.0,1.0));
}
}
l9_1011.x=l9_1022;
float l9_1027=l9_1011.y;
int l9_1028=l9_1014.y;
if (l9_1028==1)
{
l9_1027=fract(l9_1027);
}
else
{
if (l9_1028==2)
{
float l9_1029=fract(l9_1027);
float l9_1030=l9_1027-l9_1029;
float l9_1031=step(0.25,fract(l9_1030*0.5));
l9_1027=mix(l9_1029,1.0-l9_1029,fast::clamp(l9_1031,0.0,1.0));
}
}
l9_1011.y=l9_1027;
if (l9_1015)
{
bool l9_1032=l9_1017;
bool l9_1033;
if (l9_1032)
{
l9_1033=l9_1014.x==3;
}
else
{
l9_1033=l9_1032;
}
float l9_1034=l9_1011.x;
float l9_1035=l9_1016.x;
float l9_1036=l9_1016.z;
bool l9_1037=l9_1033;
float l9_1038=l9_1021;
float l9_1039=fast::clamp(l9_1034,l9_1035,l9_1036);
float l9_1040=step(abs(l9_1034-l9_1039),9.9999997e-06);
l9_1038*=(l9_1040+((1.0-float(l9_1037))*(1.0-l9_1040)));
l9_1034=l9_1039;
l9_1011.x=l9_1034;
l9_1021=l9_1038;
bool l9_1041=l9_1017;
bool l9_1042;
if (l9_1041)
{
l9_1042=l9_1014.y==3;
}
else
{
l9_1042=l9_1041;
}
float l9_1043=l9_1011.y;
float l9_1044=l9_1016.y;
float l9_1045=l9_1016.w;
bool l9_1046=l9_1042;
float l9_1047=l9_1021;
float l9_1048=fast::clamp(l9_1043,l9_1044,l9_1045);
float l9_1049=step(abs(l9_1043-l9_1048),9.9999997e-06);
l9_1047*=(l9_1049+((1.0-float(l9_1046))*(1.0-l9_1049)));
l9_1043=l9_1048;
l9_1011.y=l9_1043;
l9_1021=l9_1047;
}
float2 l9_1050=l9_1011;
bool l9_1051=l9_1012;
float3x3 l9_1052=l9_1013;
if (l9_1051)
{
l9_1050=float2((l9_1052*float3(l9_1050,1.0)).xy);
}
float2 l9_1053=l9_1050;
l9_1011=l9_1053;
float l9_1054=l9_1011.x;
int l9_1055=l9_1014.x;
bool l9_1056=l9_1020;
float l9_1057=l9_1021;
if ((l9_1055==0)||(l9_1055==3))
{
float l9_1058=l9_1054;
float l9_1059=0.0;
float l9_1060=1.0;
bool l9_1061=l9_1056;
float l9_1062=l9_1057;
float l9_1063=fast::clamp(l9_1058,l9_1059,l9_1060);
float l9_1064=step(abs(l9_1058-l9_1063),9.9999997e-06);
l9_1062*=(l9_1064+((1.0-float(l9_1061))*(1.0-l9_1064)));
l9_1058=l9_1063;
l9_1054=l9_1058;
l9_1057=l9_1062;
}
l9_1011.x=l9_1054;
l9_1021=l9_1057;
float l9_1065=l9_1011.y;
int l9_1066=l9_1014.y;
bool l9_1067=l9_1020;
float l9_1068=l9_1021;
if ((l9_1066==0)||(l9_1066==3))
{
float l9_1069=l9_1065;
float l9_1070=0.0;
float l9_1071=1.0;
bool l9_1072=l9_1067;
float l9_1073=l9_1068;
float l9_1074=fast::clamp(l9_1069,l9_1070,l9_1071);
float l9_1075=step(abs(l9_1069-l9_1074),9.9999997e-06);
l9_1073*=(l9_1075+((1.0-float(l9_1072))*(1.0-l9_1075)));
l9_1069=l9_1074;
l9_1065=l9_1069;
l9_1068=l9_1073;
}
l9_1011.y=l9_1065;
l9_1021=l9_1068;
float2 l9_1076=l9_1011;
int l9_1077=l9_1009;
int l9_1078=l9_1010;
float l9_1079=l9_1019;
float2 l9_1080=l9_1076;
int l9_1081=l9_1077;
int l9_1082=l9_1078;
float3 l9_1083=float3(0.0);
if (l9_1081==0)
{
l9_1083=float3(l9_1080,0.0);
}
else
{
if (l9_1081==1)
{
l9_1083=float3(l9_1080.x,(l9_1080.y*0.5)+(0.5-(float(l9_1082)*0.5)),0.0);
}
else
{
l9_1083=float3(l9_1080,float(l9_1082));
}
}
float3 l9_1084=l9_1083;
float3 l9_1085=l9_1084;
float4 l9_1086=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_1085.xy,bias(l9_1079));
float4 l9_1087=l9_1086;
if (l9_1017)
{
l9_1087=mix(l9_1018,l9_1087,float4(l9_1021));
}
float4 l9_1088=l9_1087;
l9_1002=l9_1088;
float4 l9_1089=l9_1002;
float4 l9_1090=l9_1089;
float2 l9_1091=((l9_1000-float2(0.1))*0.5)+float2(0.1);
float2 l9_1092=l9_1091;
float4 l9_1093=float4(0.0);
int l9_1094;
if ((int(screenTexHasSwappedViews_tmp)!=0))
{
int l9_1095=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1095=0;
}
else
{
l9_1095=in.varStereoViewID;
}
int l9_1096=l9_1095;
l9_1094=1-l9_1096;
}
else
{
int l9_1097=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1097=0;
}
else
{
l9_1097=in.varStereoViewID;
}
int l9_1098=l9_1097;
l9_1094=l9_1098;
}
int l9_1099=l9_1094;
int l9_1100=screenTexLayout_tmp;
int l9_1101=l9_1099;
float2 l9_1102=l9_1092;
bool l9_1103=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 l9_1104=(*sc_set0.UserUniforms).screenTexTransform;
int2 l9_1105=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool l9_1106=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 l9_1107=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool l9_1108=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 l9_1109=(*sc_set0.UserUniforms).screenTexBorderColor;
float l9_1110=0.0;
bool l9_1111=l9_1108&&(!l9_1106);
float l9_1112=1.0;
float l9_1113=l9_1102.x;
int l9_1114=l9_1105.x;
if (l9_1114==1)
{
l9_1113=fract(l9_1113);
}
else
{
if (l9_1114==2)
{
float l9_1115=fract(l9_1113);
float l9_1116=l9_1113-l9_1115;
float l9_1117=step(0.25,fract(l9_1116*0.5));
l9_1113=mix(l9_1115,1.0-l9_1115,fast::clamp(l9_1117,0.0,1.0));
}
}
l9_1102.x=l9_1113;
float l9_1118=l9_1102.y;
int l9_1119=l9_1105.y;
if (l9_1119==1)
{
l9_1118=fract(l9_1118);
}
else
{
if (l9_1119==2)
{
float l9_1120=fract(l9_1118);
float l9_1121=l9_1118-l9_1120;
float l9_1122=step(0.25,fract(l9_1121*0.5));
l9_1118=mix(l9_1120,1.0-l9_1120,fast::clamp(l9_1122,0.0,1.0));
}
}
l9_1102.y=l9_1118;
if (l9_1106)
{
bool l9_1123=l9_1108;
bool l9_1124;
if (l9_1123)
{
l9_1124=l9_1105.x==3;
}
else
{
l9_1124=l9_1123;
}
float l9_1125=l9_1102.x;
float l9_1126=l9_1107.x;
float l9_1127=l9_1107.z;
bool l9_1128=l9_1124;
float l9_1129=l9_1112;
float l9_1130=fast::clamp(l9_1125,l9_1126,l9_1127);
float l9_1131=step(abs(l9_1125-l9_1130),9.9999997e-06);
l9_1129*=(l9_1131+((1.0-float(l9_1128))*(1.0-l9_1131)));
l9_1125=l9_1130;
l9_1102.x=l9_1125;
l9_1112=l9_1129;
bool l9_1132=l9_1108;
bool l9_1133;
if (l9_1132)
{
l9_1133=l9_1105.y==3;
}
else
{
l9_1133=l9_1132;
}
float l9_1134=l9_1102.y;
float l9_1135=l9_1107.y;
float l9_1136=l9_1107.w;
bool l9_1137=l9_1133;
float l9_1138=l9_1112;
float l9_1139=fast::clamp(l9_1134,l9_1135,l9_1136);
float l9_1140=step(abs(l9_1134-l9_1139),9.9999997e-06);
l9_1138*=(l9_1140+((1.0-float(l9_1137))*(1.0-l9_1140)));
l9_1134=l9_1139;
l9_1102.y=l9_1134;
l9_1112=l9_1138;
}
float2 l9_1141=l9_1102;
bool l9_1142=l9_1103;
float3x3 l9_1143=l9_1104;
if (l9_1142)
{
l9_1141=float2((l9_1143*float3(l9_1141,1.0)).xy);
}
float2 l9_1144=l9_1141;
l9_1102=l9_1144;
float l9_1145=l9_1102.x;
int l9_1146=l9_1105.x;
bool l9_1147=l9_1111;
float l9_1148=l9_1112;
if ((l9_1146==0)||(l9_1146==3))
{
float l9_1149=l9_1145;
float l9_1150=0.0;
float l9_1151=1.0;
bool l9_1152=l9_1147;
float l9_1153=l9_1148;
float l9_1154=fast::clamp(l9_1149,l9_1150,l9_1151);
float l9_1155=step(abs(l9_1149-l9_1154),9.9999997e-06);
l9_1153*=(l9_1155+((1.0-float(l9_1152))*(1.0-l9_1155)));
l9_1149=l9_1154;
l9_1145=l9_1149;
l9_1148=l9_1153;
}
l9_1102.x=l9_1145;
l9_1112=l9_1148;
float l9_1156=l9_1102.y;
int l9_1157=l9_1105.y;
bool l9_1158=l9_1111;
float l9_1159=l9_1112;
if ((l9_1157==0)||(l9_1157==3))
{
float l9_1160=l9_1156;
float l9_1161=0.0;
float l9_1162=1.0;
bool l9_1163=l9_1158;
float l9_1164=l9_1159;
float l9_1165=fast::clamp(l9_1160,l9_1161,l9_1162);
float l9_1166=step(abs(l9_1160-l9_1165),9.9999997e-06);
l9_1164*=(l9_1166+((1.0-float(l9_1163))*(1.0-l9_1166)));
l9_1160=l9_1165;
l9_1156=l9_1160;
l9_1159=l9_1164;
}
l9_1102.y=l9_1156;
l9_1112=l9_1159;
float2 l9_1167=l9_1102;
int l9_1168=l9_1100;
int l9_1169=l9_1101;
float l9_1170=l9_1110;
float2 l9_1171=l9_1167;
int l9_1172=l9_1168;
int l9_1173=l9_1169;
float3 l9_1174=float3(0.0);
if (l9_1172==0)
{
l9_1174=float3(l9_1171,0.0);
}
else
{
if (l9_1172==1)
{
l9_1174=float3(l9_1171.x,(l9_1171.y*0.5)+(0.5-(float(l9_1173)*0.5)),0.0);
}
else
{
l9_1174=float3(l9_1171,float(l9_1173));
}
}
float3 l9_1175=l9_1174;
float3 l9_1176=l9_1175;
float4 l9_1177=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_1176.xy,bias(l9_1170));
float4 l9_1178=l9_1177;
if (l9_1108)
{
l9_1178=mix(l9_1109,l9_1178,float4(l9_1112));
}
float4 l9_1179=l9_1178;
l9_1093=l9_1179;
float4 l9_1180=l9_1093;
float4 l9_1181=l9_1180;
float2 l9_1182=l9_907;
if (N123_EnableInfinite==1.0)
{
float2 l9_1183=float2(N123_OceanAabbMin.x,N123_OceanAabbMin.z);
float2 l9_1184=float2(N123_OceanAabbMax.x,N123_OceanAabbMax.z);
float3 l9_1185=(*sc_set0.UserUniforms).sc_Camera.position;
float2 l9_1186=float2(0.0)+(((l9_1185.xz-l9_1183)*1.0)/((l9_1184-l9_1183)+float2(1e-06)));
l9_1186.y=1.0-l9_1186.y;
l9_1182=(l9_907+l9_1186)-float2(0.5);
}
float2 l9_1187=l9_1182;
float4 l9_1188=float4(0.0);
int l9_1189;
if ((int(oceanHeightmapHasSwappedViews_tmp)!=0))
{
int l9_1190=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1190=0;
}
else
{
l9_1190=in.varStereoViewID;
}
int l9_1191=l9_1190;
l9_1189=1-l9_1191;
}
else
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
l9_1189=l9_1193;
}
int l9_1194=l9_1189;
int l9_1195=oceanHeightmapLayout_tmp;
int l9_1196=l9_1194;
float2 l9_1197=l9_1187;
bool l9_1198=(int(SC_USE_UV_TRANSFORM_oceanHeightmap_tmp)!=0);
float3x3 l9_1199=(*sc_set0.UserUniforms).oceanHeightmapTransform;
int2 l9_1200=int2(SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap_tmp,SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap_tmp);
bool l9_1201=(int(SC_USE_UV_MIN_MAX_oceanHeightmap_tmp)!=0);
float4 l9_1202=(*sc_set0.UserUniforms).oceanHeightmapUvMinMax;
bool l9_1203=(int(SC_USE_CLAMP_TO_BORDER_oceanHeightmap_tmp)!=0);
float4 l9_1204=(*sc_set0.UserUniforms).oceanHeightmapBorderColor;
float l9_1205=0.0;
bool l9_1206=l9_1203&&(!l9_1201);
float l9_1207=1.0;
float l9_1208=l9_1197.x;
int l9_1209=l9_1200.x;
if (l9_1209==1)
{
l9_1208=fract(l9_1208);
}
else
{
if (l9_1209==2)
{
float l9_1210=fract(l9_1208);
float l9_1211=l9_1208-l9_1210;
float l9_1212=step(0.25,fract(l9_1211*0.5));
l9_1208=mix(l9_1210,1.0-l9_1210,fast::clamp(l9_1212,0.0,1.0));
}
}
l9_1197.x=l9_1208;
float l9_1213=l9_1197.y;
int l9_1214=l9_1200.y;
if (l9_1214==1)
{
l9_1213=fract(l9_1213);
}
else
{
if (l9_1214==2)
{
float l9_1215=fract(l9_1213);
float l9_1216=l9_1213-l9_1215;
float l9_1217=step(0.25,fract(l9_1216*0.5));
l9_1213=mix(l9_1215,1.0-l9_1215,fast::clamp(l9_1217,0.0,1.0));
}
}
l9_1197.y=l9_1213;
if (l9_1201)
{
bool l9_1218=l9_1203;
bool l9_1219;
if (l9_1218)
{
l9_1219=l9_1200.x==3;
}
else
{
l9_1219=l9_1218;
}
float l9_1220=l9_1197.x;
float l9_1221=l9_1202.x;
float l9_1222=l9_1202.z;
bool l9_1223=l9_1219;
float l9_1224=l9_1207;
float l9_1225=fast::clamp(l9_1220,l9_1221,l9_1222);
float l9_1226=step(abs(l9_1220-l9_1225),9.9999997e-06);
l9_1224*=(l9_1226+((1.0-float(l9_1223))*(1.0-l9_1226)));
l9_1220=l9_1225;
l9_1197.x=l9_1220;
l9_1207=l9_1224;
bool l9_1227=l9_1203;
bool l9_1228;
if (l9_1227)
{
l9_1228=l9_1200.y==3;
}
else
{
l9_1228=l9_1227;
}
float l9_1229=l9_1197.y;
float l9_1230=l9_1202.y;
float l9_1231=l9_1202.w;
bool l9_1232=l9_1228;
float l9_1233=l9_1207;
float l9_1234=fast::clamp(l9_1229,l9_1230,l9_1231);
float l9_1235=step(abs(l9_1229-l9_1234),9.9999997e-06);
l9_1233*=(l9_1235+((1.0-float(l9_1232))*(1.0-l9_1235)));
l9_1229=l9_1234;
l9_1197.y=l9_1229;
l9_1207=l9_1233;
}
float2 l9_1236=l9_1197;
bool l9_1237=l9_1198;
float3x3 l9_1238=l9_1199;
if (l9_1237)
{
l9_1236=float2((l9_1238*float3(l9_1236,1.0)).xy);
}
float2 l9_1239=l9_1236;
l9_1197=l9_1239;
float l9_1240=l9_1197.x;
int l9_1241=l9_1200.x;
bool l9_1242=l9_1206;
float l9_1243=l9_1207;
if ((l9_1241==0)||(l9_1241==3))
{
float l9_1244=l9_1240;
float l9_1245=0.0;
float l9_1246=1.0;
bool l9_1247=l9_1242;
float l9_1248=l9_1243;
float l9_1249=fast::clamp(l9_1244,l9_1245,l9_1246);
float l9_1250=step(abs(l9_1244-l9_1249),9.9999997e-06);
l9_1248*=(l9_1250+((1.0-float(l9_1247))*(1.0-l9_1250)));
l9_1244=l9_1249;
l9_1240=l9_1244;
l9_1243=l9_1248;
}
l9_1197.x=l9_1240;
l9_1207=l9_1243;
float l9_1251=l9_1197.y;
int l9_1252=l9_1200.y;
bool l9_1253=l9_1206;
float l9_1254=l9_1207;
if ((l9_1252==0)||(l9_1252==3))
{
float l9_1255=l9_1251;
float l9_1256=0.0;
float l9_1257=1.0;
bool l9_1258=l9_1253;
float l9_1259=l9_1254;
float l9_1260=fast::clamp(l9_1255,l9_1256,l9_1257);
float l9_1261=step(abs(l9_1255-l9_1260),9.9999997e-06);
l9_1259*=(l9_1261+((1.0-float(l9_1258))*(1.0-l9_1261)));
l9_1255=l9_1260;
l9_1251=l9_1255;
l9_1254=l9_1259;
}
l9_1197.y=l9_1251;
l9_1207=l9_1254;
float2 l9_1262=l9_1197;
int l9_1263=l9_1195;
int l9_1264=l9_1196;
float l9_1265=l9_1205;
float2 l9_1266=l9_1262;
int l9_1267=l9_1263;
int l9_1268=l9_1264;
float3 l9_1269=float3(0.0);
if (l9_1267==0)
{
l9_1269=float3(l9_1266,0.0);
}
else
{
if (l9_1267==1)
{
l9_1269=float3(l9_1266.x,(l9_1266.y*0.5)+(0.5-(float(l9_1268)*0.5)),0.0);
}
else
{
l9_1269=float3(l9_1266,float(l9_1268));
}
}
float3 l9_1270=l9_1269;
float3 l9_1271=l9_1270;
float4 l9_1272=sc_set0.oceanHeightmap.sample(sc_set0.oceanHeightmapSmpSC,l9_1271.xy,bias(l9_1265));
float4 l9_1273=l9_1272;
if (l9_1203)
{
l9_1273=mix(l9_1204,l9_1273,float4(l9_1207));
}
float4 l9_1274=l9_1273;
l9_1188=l9_1274;
float4 l9_1275=l9_1188;
float2 l9_1276=l9_1275.xy;
float l9_1277=N123_unpackVal.x;
float l9_1278=N123_unpackVal.y;
float l9_1279=0.0;
float2 l9_1280=l9_1276;
float l9_1281=l9_1277;
float l9_1282=l9_1278;
float l9_1283=0.99998999;
float2 l9_1284=l9_1280;
#if (1)
{
l9_1284=floor((l9_1284*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_1285=dot(l9_1284,float2(1.0,0.0039215689));
float l9_1286=l9_1285;
float l9_1287=0.0;
float l9_1288=l9_1283;
float l9_1289=l9_1281;
float l9_1290=l9_1282;
float l9_1291=l9_1289+(((l9_1286-l9_1287)*(l9_1290-l9_1289))/(l9_1288-l9_1287));
float l9_1292=l9_1291;
l9_1279=l9_1292;
float l9_1293=l9_1279;
float l9_1294=l9_1293;
float l9_1295=0.0+(((l9_1294-N123_unpackVal.x)*1.0)/((N123_unpackVal.y-N123_unpackVal.x)+1e-06));
tempGlobals.N123_TatalHeightRemap=l9_1295;
float l9_1296=l9_1294;
if (N123_EnableFluid==1.0)
{
float2 l9_1297=l9_907;
float4 l9_1298=float4(0.0);
int l9_1299;
if ((int(fluidPressureHasSwappedViews_tmp)!=0))
{
int l9_1300=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1300=0;
}
else
{
l9_1300=in.varStereoViewID;
}
int l9_1301=l9_1300;
l9_1299=1-l9_1301;
}
else
{
int l9_1302=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1302=0;
}
else
{
l9_1302=in.varStereoViewID;
}
int l9_1303=l9_1302;
l9_1299=l9_1303;
}
int l9_1304=l9_1299;
int l9_1305=fluidPressureLayout_tmp;
int l9_1306=l9_1304;
float2 l9_1307=l9_1297;
bool l9_1308=(int(SC_USE_UV_TRANSFORM_fluidPressure_tmp)!=0);
float3x3 l9_1309=(*sc_set0.UserUniforms).fluidPressureTransform;
int2 l9_1310=int2(SC_SOFTWARE_WRAP_MODE_U_fluidPressure_tmp,SC_SOFTWARE_WRAP_MODE_V_fluidPressure_tmp);
bool l9_1311=(int(SC_USE_UV_MIN_MAX_fluidPressure_tmp)!=0);
float4 l9_1312=(*sc_set0.UserUniforms).fluidPressureUvMinMax;
bool l9_1313=(int(SC_USE_CLAMP_TO_BORDER_fluidPressure_tmp)!=0);
float4 l9_1314=(*sc_set0.UserUniforms).fluidPressureBorderColor;
float l9_1315=0.0;
bool l9_1316=l9_1313&&(!l9_1311);
float l9_1317=1.0;
float l9_1318=l9_1307.x;
int l9_1319=l9_1310.x;
if (l9_1319==1)
{
l9_1318=fract(l9_1318);
}
else
{
if (l9_1319==2)
{
float l9_1320=fract(l9_1318);
float l9_1321=l9_1318-l9_1320;
float l9_1322=step(0.25,fract(l9_1321*0.5));
l9_1318=mix(l9_1320,1.0-l9_1320,fast::clamp(l9_1322,0.0,1.0));
}
}
l9_1307.x=l9_1318;
float l9_1323=l9_1307.y;
int l9_1324=l9_1310.y;
if (l9_1324==1)
{
l9_1323=fract(l9_1323);
}
else
{
if (l9_1324==2)
{
float l9_1325=fract(l9_1323);
float l9_1326=l9_1323-l9_1325;
float l9_1327=step(0.25,fract(l9_1326*0.5));
l9_1323=mix(l9_1325,1.0-l9_1325,fast::clamp(l9_1327,0.0,1.0));
}
}
l9_1307.y=l9_1323;
if (l9_1311)
{
bool l9_1328=l9_1313;
bool l9_1329;
if (l9_1328)
{
l9_1329=l9_1310.x==3;
}
else
{
l9_1329=l9_1328;
}
float l9_1330=l9_1307.x;
float l9_1331=l9_1312.x;
float l9_1332=l9_1312.z;
bool l9_1333=l9_1329;
float l9_1334=l9_1317;
float l9_1335=fast::clamp(l9_1330,l9_1331,l9_1332);
float l9_1336=step(abs(l9_1330-l9_1335),9.9999997e-06);
l9_1334*=(l9_1336+((1.0-float(l9_1333))*(1.0-l9_1336)));
l9_1330=l9_1335;
l9_1307.x=l9_1330;
l9_1317=l9_1334;
bool l9_1337=l9_1313;
bool l9_1338;
if (l9_1337)
{
l9_1338=l9_1310.y==3;
}
else
{
l9_1338=l9_1337;
}
float l9_1339=l9_1307.y;
float l9_1340=l9_1312.y;
float l9_1341=l9_1312.w;
bool l9_1342=l9_1338;
float l9_1343=l9_1317;
float l9_1344=fast::clamp(l9_1339,l9_1340,l9_1341);
float l9_1345=step(abs(l9_1339-l9_1344),9.9999997e-06);
l9_1343*=(l9_1345+((1.0-float(l9_1342))*(1.0-l9_1345)));
l9_1339=l9_1344;
l9_1307.y=l9_1339;
l9_1317=l9_1343;
}
float2 l9_1346=l9_1307;
bool l9_1347=l9_1308;
float3x3 l9_1348=l9_1309;
if (l9_1347)
{
l9_1346=float2((l9_1348*float3(l9_1346,1.0)).xy);
}
float2 l9_1349=l9_1346;
l9_1307=l9_1349;
float l9_1350=l9_1307.x;
int l9_1351=l9_1310.x;
bool l9_1352=l9_1316;
float l9_1353=l9_1317;
if ((l9_1351==0)||(l9_1351==3))
{
float l9_1354=l9_1350;
float l9_1355=0.0;
float l9_1356=1.0;
bool l9_1357=l9_1352;
float l9_1358=l9_1353;
float l9_1359=fast::clamp(l9_1354,l9_1355,l9_1356);
float l9_1360=step(abs(l9_1354-l9_1359),9.9999997e-06);
l9_1358*=(l9_1360+((1.0-float(l9_1357))*(1.0-l9_1360)));
l9_1354=l9_1359;
l9_1350=l9_1354;
l9_1353=l9_1358;
}
l9_1307.x=l9_1350;
l9_1317=l9_1353;
float l9_1361=l9_1307.y;
int l9_1362=l9_1310.y;
bool l9_1363=l9_1316;
float l9_1364=l9_1317;
if ((l9_1362==0)||(l9_1362==3))
{
float l9_1365=l9_1361;
float l9_1366=0.0;
float l9_1367=1.0;
bool l9_1368=l9_1363;
float l9_1369=l9_1364;
float l9_1370=fast::clamp(l9_1365,l9_1366,l9_1367);
float l9_1371=step(abs(l9_1365-l9_1370),9.9999997e-06);
l9_1369*=(l9_1371+((1.0-float(l9_1368))*(1.0-l9_1371)));
l9_1365=l9_1370;
l9_1361=l9_1365;
l9_1364=l9_1369;
}
l9_1307.y=l9_1361;
l9_1317=l9_1364;
float2 l9_1372=l9_1307;
int l9_1373=l9_1305;
int l9_1374=l9_1306;
float l9_1375=l9_1315;
float2 l9_1376=l9_1372;
int l9_1377=l9_1373;
int l9_1378=l9_1374;
float3 l9_1379=float3(0.0);
if (l9_1377==0)
{
l9_1379=float3(l9_1376,0.0);
}
else
{
if (l9_1377==1)
{
l9_1379=float3(l9_1376.x,(l9_1376.y*0.5)+(0.5-(float(l9_1378)*0.5)),0.0);
}
else
{
l9_1379=float3(l9_1376,float(l9_1378));
}
}
float3 l9_1380=l9_1379;
float3 l9_1381=l9_1380;
float4 l9_1382=sc_set0.fluidPressure.sample(sc_set0.fluidPressureSmpSC,l9_1381.xy,bias(l9_1375));
float4 l9_1383=l9_1382;
if (l9_1313)
{
l9_1383=mix(l9_1314,l9_1383,float4(l9_1317));
}
float4 l9_1384=l9_1383;
l9_1298=l9_1384;
float4 l9_1385=l9_1298;
float2 l9_1386=l9_1385.xy;
float l9_1387=N123_pressureRange.x;
float l9_1388=N123_pressureRange.y;
float l9_1389=0.0;
float2 l9_1390=l9_1386;
float l9_1391=l9_1387;
float l9_1392=l9_1388;
float l9_1393=0.99998999;
float2 l9_1394=l9_1390;
#if (1)
{
l9_1394=floor((l9_1394*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_1395=dot(l9_1394,float2(1.0,0.0039215689));
float l9_1396=l9_1395;
float l9_1397=0.0;
float l9_1398=l9_1393;
float l9_1399=l9_1391;
float l9_1400=l9_1392;
float l9_1401=l9_1399+(((l9_1396-l9_1397)*(l9_1400-l9_1399))/(l9_1398-l9_1397));
float l9_1402=l9_1401;
l9_1389=l9_1402;
float l9_1403=l9_1389;
float l9_1404=l9_1403;
float l9_1405=l9_1404*N123_FluidMul;
l9_1296=l9_1294+l9_1405;
float l9_1406=(0.0+(((fast::clamp(l9_1405,N123_unpackVal.x,N123_unpackVal.y)-N123_unpackVal.x)*1.0)/((N123_unpackVal.y-N123_unpackVal.x)+1e-06)))*0.60000002;
tempGlobals.N123_TatalHeightRemap+=l9_1406;
}
float l9_1407=fast::clamp(smoothstep(0.44999999,0.60000002,tempGlobals.N123_TatalHeightRemap),0.0,1.0);
float2 l9_1408=l9_1182;
float4 l9_1409=float4(0.0);
int l9_1410;
if ((int(oceanNormalHasSwappedViews_tmp)!=0))
{
int l9_1411=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1411=0;
}
else
{
l9_1411=in.varStereoViewID;
}
int l9_1412=l9_1411;
l9_1410=1-l9_1412;
}
else
{
int l9_1413=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1413=0;
}
else
{
l9_1413=in.varStereoViewID;
}
int l9_1414=l9_1413;
l9_1410=l9_1414;
}
int l9_1415=l9_1410;
int l9_1416=oceanNormalLayout_tmp;
int l9_1417=l9_1415;
float2 l9_1418=l9_1408;
bool l9_1419=(int(SC_USE_UV_TRANSFORM_oceanNormal_tmp)!=0);
float3x3 l9_1420=(*sc_set0.UserUniforms).oceanNormalTransform;
int2 l9_1421=int2(SC_SOFTWARE_WRAP_MODE_U_oceanNormal_tmp,SC_SOFTWARE_WRAP_MODE_V_oceanNormal_tmp);
bool l9_1422=(int(SC_USE_UV_MIN_MAX_oceanNormal_tmp)!=0);
float4 l9_1423=(*sc_set0.UserUniforms).oceanNormalUvMinMax;
bool l9_1424=(int(SC_USE_CLAMP_TO_BORDER_oceanNormal_tmp)!=0);
float4 l9_1425=(*sc_set0.UserUniforms).oceanNormalBorderColor;
float l9_1426=0.0;
bool l9_1427=l9_1424&&(!l9_1422);
float l9_1428=1.0;
float l9_1429=l9_1418.x;
int l9_1430=l9_1421.x;
if (l9_1430==1)
{
l9_1429=fract(l9_1429);
}
else
{
if (l9_1430==2)
{
float l9_1431=fract(l9_1429);
float l9_1432=l9_1429-l9_1431;
float l9_1433=step(0.25,fract(l9_1432*0.5));
l9_1429=mix(l9_1431,1.0-l9_1431,fast::clamp(l9_1433,0.0,1.0));
}
}
l9_1418.x=l9_1429;
float l9_1434=l9_1418.y;
int l9_1435=l9_1421.y;
if (l9_1435==1)
{
l9_1434=fract(l9_1434);
}
else
{
if (l9_1435==2)
{
float l9_1436=fract(l9_1434);
float l9_1437=l9_1434-l9_1436;
float l9_1438=step(0.25,fract(l9_1437*0.5));
l9_1434=mix(l9_1436,1.0-l9_1436,fast::clamp(l9_1438,0.0,1.0));
}
}
l9_1418.y=l9_1434;
if (l9_1422)
{
bool l9_1439=l9_1424;
bool l9_1440;
if (l9_1439)
{
l9_1440=l9_1421.x==3;
}
else
{
l9_1440=l9_1439;
}
float l9_1441=l9_1418.x;
float l9_1442=l9_1423.x;
float l9_1443=l9_1423.z;
bool l9_1444=l9_1440;
float l9_1445=l9_1428;
float l9_1446=fast::clamp(l9_1441,l9_1442,l9_1443);
float l9_1447=step(abs(l9_1441-l9_1446),9.9999997e-06);
l9_1445*=(l9_1447+((1.0-float(l9_1444))*(1.0-l9_1447)));
l9_1441=l9_1446;
l9_1418.x=l9_1441;
l9_1428=l9_1445;
bool l9_1448=l9_1424;
bool l9_1449;
if (l9_1448)
{
l9_1449=l9_1421.y==3;
}
else
{
l9_1449=l9_1448;
}
float l9_1450=l9_1418.y;
float l9_1451=l9_1423.y;
float l9_1452=l9_1423.w;
bool l9_1453=l9_1449;
float l9_1454=l9_1428;
float l9_1455=fast::clamp(l9_1450,l9_1451,l9_1452);
float l9_1456=step(abs(l9_1450-l9_1455),9.9999997e-06);
l9_1454*=(l9_1456+((1.0-float(l9_1453))*(1.0-l9_1456)));
l9_1450=l9_1455;
l9_1418.y=l9_1450;
l9_1428=l9_1454;
}
float2 l9_1457=l9_1418;
bool l9_1458=l9_1419;
float3x3 l9_1459=l9_1420;
if (l9_1458)
{
l9_1457=float2((l9_1459*float3(l9_1457,1.0)).xy);
}
float2 l9_1460=l9_1457;
l9_1418=l9_1460;
float l9_1461=l9_1418.x;
int l9_1462=l9_1421.x;
bool l9_1463=l9_1427;
float l9_1464=l9_1428;
if ((l9_1462==0)||(l9_1462==3))
{
float l9_1465=l9_1461;
float l9_1466=0.0;
float l9_1467=1.0;
bool l9_1468=l9_1463;
float l9_1469=l9_1464;
float l9_1470=fast::clamp(l9_1465,l9_1466,l9_1467);
float l9_1471=step(abs(l9_1465-l9_1470),9.9999997e-06);
l9_1469*=(l9_1471+((1.0-float(l9_1468))*(1.0-l9_1471)));
l9_1465=l9_1470;
l9_1461=l9_1465;
l9_1464=l9_1469;
}
l9_1418.x=l9_1461;
l9_1428=l9_1464;
float l9_1472=l9_1418.y;
int l9_1473=l9_1421.y;
bool l9_1474=l9_1427;
float l9_1475=l9_1428;
if ((l9_1473==0)||(l9_1473==3))
{
float l9_1476=l9_1472;
float l9_1477=0.0;
float l9_1478=1.0;
bool l9_1479=l9_1474;
float l9_1480=l9_1475;
float l9_1481=fast::clamp(l9_1476,l9_1477,l9_1478);
float l9_1482=step(abs(l9_1476-l9_1481),9.9999997e-06);
l9_1480*=(l9_1482+((1.0-float(l9_1479))*(1.0-l9_1482)));
l9_1476=l9_1481;
l9_1472=l9_1476;
l9_1475=l9_1480;
}
l9_1418.y=l9_1472;
l9_1428=l9_1475;
float2 l9_1483=l9_1418;
int l9_1484=l9_1416;
int l9_1485=l9_1417;
float l9_1486=l9_1426;
float2 l9_1487=l9_1483;
int l9_1488=l9_1484;
int l9_1489=l9_1485;
float3 l9_1490=float3(0.0);
if (l9_1488==0)
{
l9_1490=float3(l9_1487,0.0);
}
else
{
if (l9_1488==1)
{
l9_1490=float3(l9_1487.x,(l9_1487.y*0.5)+(0.5-(float(l9_1489)*0.5)),0.0);
}
else
{
l9_1490=float3(l9_1487,float(l9_1489));
}
}
float3 l9_1491=l9_1490;
float3 l9_1492=l9_1491;
float4 l9_1493=sc_set0.oceanNormal.sample(sc_set0.oceanNormalSmpSC,l9_1492.xy,bias(l9_1486));
float4 l9_1494=l9_1493;
if (l9_1424)
{
l9_1494=mix(l9_1425,l9_1494,float4(l9_1428));
}
float4 l9_1495=l9_1494;
l9_1409=l9_1495;
float4 l9_1496=l9_1409;
float3 l9_1497=(l9_1496.xyz*1.9921875)-float3(1.0);
N123_Normal=l9_1497;
N123_SurfacePosition=float3(0.0,l9_1296,0.0)+l9_909;
tempGlobals.N123_fbm=1.0;
if (N123_EnableFoam==1.0)
{
float l9_1498=tempGlobals.gTimeElapsed;
float2 l9_1499=N123_SurfacePosition.zx*N123_FBMScale;
float l9_1500=l9_1498*N123_OceanSpeed;
float l9_1501=0.0;
float2 l9_1502=l9_1499+float2(l9_1500);
float2 l9_1503=floor(l9_1502);
float2 l9_1504=fract(l9_1502);
l9_1504=(l9_1504*l9_1504)*(float2(3.0)-(l9_1504*2.0));
float2 l9_1505=l9_1503;
float l9_1506=fract(sin(dot(l9_1505,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1507=l9_1503+float2(1.0,0.0);
float l9_1508=fract(sin(dot(l9_1507,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1509=l9_1503+float2(0.0,1.0);
float l9_1510=fract(sin(dot(l9_1509,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1511=l9_1503+float2(1.0);
float l9_1512=fract(sin(dot(l9_1511,float2(12.9898,4.1413999)))*43758.547);
float l9_1513=mix(mix(l9_1506,l9_1508,l9_1504.x),mix(l9_1510,l9_1512,l9_1504.x),l9_1504.y);
float l9_1514=l9_1513*l9_1513;
l9_1501+=(0.5*l9_1514);
l9_1499=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_1499)*2.02;
float2 l9_1515=l9_1499;
float2 l9_1516=floor(l9_1515);
float2 l9_1517=fract(l9_1515);
l9_1517=(l9_1517*l9_1517)*(float2(3.0)-(l9_1517*2.0));
float2 l9_1518=l9_1516;
float l9_1519=fract(sin(dot(l9_1518,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1520=l9_1516+float2(1.0,0.0);
float l9_1521=fract(sin(dot(l9_1520,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1522=l9_1516+float2(0.0,1.0);
float l9_1523=fract(sin(dot(l9_1522,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1524=l9_1516+float2(1.0);
float l9_1525=fract(sin(dot(l9_1524,float2(12.9898,4.1413999)))*43758.547);
float l9_1526=mix(mix(l9_1519,l9_1521,l9_1517.x),mix(l9_1523,l9_1525,l9_1517.x),l9_1517.y);
float l9_1527=l9_1526*l9_1526;
l9_1501+=(0.03125*l9_1527);
l9_1499=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_1499)*2.01;
float2 l9_1528=l9_1499;
float2 l9_1529=floor(l9_1528);
float2 l9_1530=fract(l9_1528);
l9_1530=(l9_1530*l9_1530)*(float2(3.0)-(l9_1530*2.0));
float2 l9_1531=l9_1529;
float l9_1532=fract(sin(dot(l9_1531,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1533=l9_1529+float2(1.0,0.0);
float l9_1534=fract(sin(dot(l9_1533,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1535=l9_1529+float2(0.0,1.0);
float l9_1536=fract(sin(dot(l9_1535,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1537=l9_1529+float2(1.0);
float l9_1538=fract(sin(dot(l9_1537,float2(12.9898,4.1413999)))*43758.547);
float l9_1539=mix(mix(l9_1532,l9_1534,l9_1530.x),mix(l9_1536,l9_1538,l9_1530.x),l9_1530.y);
float l9_1540=l9_1539*l9_1539;
l9_1501+=(0.25*l9_1540);
l9_1499=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_1499)*2.03;
float2 l9_1541=l9_1499;
float2 l9_1542=floor(l9_1541);
float2 l9_1543=fract(l9_1541);
l9_1543=(l9_1543*l9_1543)*(float2(3.0)-(l9_1543*2.0));
float2 l9_1544=l9_1542;
float l9_1545=fract(sin(dot(l9_1544,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1546=l9_1542+float2(1.0,0.0);
float l9_1547=fract(sin(dot(l9_1546,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1548=l9_1542+float2(0.0,1.0);
float l9_1549=fract(sin(dot(l9_1548,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1550=l9_1542+float2(1.0);
float l9_1551=fract(sin(dot(l9_1550,float2(12.9898,4.1413999)))*43758.547);
float l9_1552=mix(mix(l9_1545,l9_1547,l9_1543.x),mix(l9_1549,l9_1551,l9_1543.x),l9_1543.y);
float l9_1553=l9_1552*l9_1552;
l9_1501+=(0.125*l9_1553);
l9_1499=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_1499)*2.01;
float2 l9_1554=l9_1499;
float2 l9_1555=floor(l9_1554);
float2 l9_1556=fract(l9_1554);
l9_1556=(l9_1556*l9_1556)*(float2(3.0)-(l9_1556*2.0));
float2 l9_1557=l9_1555;
float l9_1558=fract(sin(dot(l9_1557,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1559=l9_1555+float2(1.0,0.0);
float l9_1560=fract(sin(dot(l9_1559,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1561=l9_1555+float2(0.0,1.0);
float l9_1562=fract(sin(dot(l9_1561,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1563=l9_1555+float2(1.0);
float l9_1564=fract(sin(dot(l9_1563,float2(12.9898,4.1413999)))*43758.547);
float l9_1565=mix(mix(l9_1558,l9_1560,l9_1556.x),mix(l9_1562,l9_1564,l9_1556.x),l9_1556.y);
float l9_1566=l9_1565*l9_1565;
l9_1501+=(0.0625*l9_1566);
l9_1499=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_1499)*2.04;
float2 l9_1567=l9_1499+float2(sin(l9_1500));
float2 l9_1568=floor(l9_1567);
float2 l9_1569=fract(l9_1567);
l9_1569=(l9_1569*l9_1569)*(float2(3.0)-(l9_1569*2.0));
float2 l9_1570=l9_1568;
float l9_1571=fract(sin(dot(l9_1570,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1572=l9_1568+float2(1.0,0.0);
float l9_1573=fract(sin(dot(l9_1572,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1574=l9_1568+float2(0.0,1.0);
float l9_1575=fract(sin(dot(l9_1574,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1576=l9_1568+float2(1.0);
float l9_1577=fract(sin(dot(l9_1576,float2(12.9898,4.1413999)))*43758.547);
float l9_1578=mix(mix(l9_1571,l9_1573,l9_1569.x),mix(l9_1575,l9_1577,l9_1569.x),l9_1569.y);
float l9_1579=l9_1578*l9_1578;
l9_1501+=(0.015625*l9_1579);
float l9_1580=l9_1501/0.96875;
tempGlobals.N123_fbm=1.0-l9_1580;
}
float3 l9_1581=N123_Normal;
float l9_1582=6.0;
float l9_1583=4.0;
float3 l9_1584=tempGlobals.VertexTangent_WorldSpace;
float3 l9_1585=tempGlobals.VertexBinormal_WorldSpace;
float3 l9_1586=tempGlobals.VertexNormal_WorldSpace;
float3 l9_1587=float3x3(float3(l9_1584),float3(l9_1585),float3(l9_1586))*l9_1581;
float3 l9_1588=tempGlobals.ViewDirWS;
float l9_1589=abs(dot(-l9_1588,l9_1587));
float l9_1590=1.0-l9_1589;
float l9_1591=l9_1582;
float l9_1592;
if (l9_1590<=0.0)
{
l9_1592=0.0;
}
else
{
l9_1592=pow(l9_1590,l9_1591);
}
float l9_1593=l9_1592;
float l9_1594=l9_1593;
l9_1594=fast::max(l9_1594,0.0);
l9_1594*=l9_1583;
float l9_1595=l9_1594;
float l9_1596=fast::clamp(l9_1595,0.0,1.0);
float4 l9_1597=float4(0.0);
float l9_1598=0.0;
l9_1598=tempGlobals.N123_TatalHeightRemap;
float4 l9_1599=float4(0.0);
float4 l9_1600=(*sc_set0.UserUniforms).colorTrough;
l9_1599=l9_1600;
float4 l9_1601=float4(0.0);
float4 l9_1602=(*sc_set0.UserUniforms).colorMiddle;
l9_1601=l9_1602;
float4 l9_1603=float4(0.0);
float4 l9_1604=(*sc_set0.UserUniforms).colorCrest;
l9_1603=l9_1604;
float l9_1605=0.0;
l9_1605=tempGlobals.N123_fbm;
float4 l9_1606=float4(0.0);
l9_1606=mix(l9_1601,l9_1603,float4(l9_1605));
float4 l9_1607=float4(0.0);
float l9_1608=l9_1598;
float4 l9_1609=l9_1599;
float l9_1610=(*sc_set0.UserUniforms).Port_Position1_N030;
float4 l9_1611=l9_1599;
float l9_1612=(*sc_set0.UserUniforms).Port_Position2_N030;
float4 l9_1613=l9_1599;
float l9_1614=(*sc_set0.UserUniforms).Port_Position3_N030;
float4 l9_1615=l9_1601;
float l9_1616=(*sc_set0.UserUniforms).Port_Position4_N030;
float4 l9_1617=l9_1606;
float4 l9_1618=l9_1606;
l9_1608=fast::clamp(l9_1608,0.0,1.0);
float4 l9_1619;
if (l9_1608<l9_1610)
{
l9_1619=mix(l9_1609,l9_1611,float4(fast::clamp(l9_1608/l9_1610,0.0,1.0)));
}
else
{
if (l9_1608<l9_1612)
{
l9_1619=mix(l9_1611,l9_1613,float4(fast::clamp((l9_1608-l9_1610)/(l9_1612-l9_1610),0.0,1.0)));
}
else
{
if (l9_1608<l9_1614)
{
l9_1619=mix(l9_1613,l9_1615,float4(fast::clamp((l9_1608-l9_1612)/(l9_1614-l9_1612),0.0,1.0)));
}
else
{
if (l9_1608<l9_1616)
{
l9_1619=mix(l9_1615,l9_1617,float4(fast::clamp((l9_1608-l9_1614)/(l9_1616-l9_1614),0.0,1.0)));
}
else
{
l9_1619=mix(l9_1617,l9_1618,float4(fast::clamp((l9_1608-l9_1616)/(1.0-l9_1616),0.0,1.0)));
}
}
}
}
bool l9_1620=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_1621;
if (l9_1620)
{
l9_1621=!PreviewInfo.Saved;
}
else
{
l9_1621=l9_1620;
}
bool l9_1622;
if (l9_1621)
{
l9_1622=30==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_1622=l9_1621;
}
if (l9_1622)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=l9_1619;
PreviewInfo.Color.w=1.0;
}
l9_1607=l9_1619;
l9_1597=l9_1607;
float4 l9_1623=l9_1597;
float4 l9_1624=l9_1623;
int l9_1625=0;
l9_1625=sc_DirectionalLightsCount_tmp;
int l9_1626=l9_1625;
if (l9_1626>0)
{
float l9_1627;
int l9_1628=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
int l9_1629=0;
l9_1629=sc_DirectionalLightsCount_tmp;
int l9_1630=l9_1629;
if (l9_1628<l9_1630)
{
int l9_1631=l9_1628;
float3 l9_1632=float3(0.0);
if (l9_1631<sc_DirectionalLightsCount_tmp)
{
l9_1632=-(*sc_set0.UserUniforms).sc_DirectionalLights[l9_1631].direction;
}
float3 l9_1633=l9_1632;
float3 l9_1634=l9_1633;
float l9_1635=(dot(N123_Normal,l9_1634)*0.60000002)+0.40000001;
float l9_1636=10.0;
if (l9_1635<=0.0)
{
l9_1627=0.0;
}
else
{
l9_1627=pow(l9_1635,l9_1636);
}
float l9_1637=l9_1627;
float l9_1638=fast::clamp(l9_1637,0.0,1.0);
float4 l9_1639=mix(l9_1624,l9_1181,float4(l9_1638));
float4 l9_1640=l9_1624*l9_1090;
float l9_1641=fast::max(l9_1596,l9_1407)*0.89999998;
N123_FrontFacing=mix(l9_1639,l9_1640,float4(l9_1641));
N123_BackFacing=l9_1090;
l9_1628++;
continue;
}
else
{
break;
}
}
}
l9_831=N123_BackFacing;
l9_829=l9_831;
param_3=l9_829;
param_4=param_3;
}
Output_N14=param_4;
float3 Normal_N123=float3(0.0);
ssGlobals param_7=Globals;
tempGlobals=param_7;
float3 param_6=float3(0.0);
float3 l9_1642=float3(0.0);
float3 l9_1643=float3(0.0);
float3 l9_1644=(*sc_set0.UserUniforms).oceanMin;
l9_1643=l9_1644;
l9_1642=l9_1643;
float3 l9_1645=l9_1642;
N123_OceanAabbMin=l9_1645;
float3 l9_1646=float3(0.0);
float3 l9_1647=float3(0.0);
float3 l9_1648=(*sc_set0.UserUniforms).oceanMax;
l9_1647=l9_1648;
l9_1646=l9_1647;
float3 l9_1649=l9_1646;
N123_OceanAabbMax=l9_1649;
float l9_1650=0.0;
float l9_1651=0.0;
float l9_1652=(*sc_set0.UserUniforms).speed;
l9_1651=l9_1652;
l9_1650=l9_1651;
float l9_1653=l9_1650;
N123_OceanSpeed=l9_1653;
float l9_1654=0.0;
float l9_1655=0.0;
float l9_1656=(*sc_set0.UserUniforms).enableFoam;
l9_1655=l9_1656;
l9_1654=l9_1655;
float l9_1657=l9_1654;
N123_EnableFoam=l9_1657;
float l9_1658=0.0;
float l9_1659=0.0;
float l9_1660=(*sc_set0.UserUniforms).fbmScale;
l9_1659=l9_1660;
l9_1658=l9_1659;
float l9_1661=l9_1658;
N123_FBMScale=l9_1661;
float l9_1662=0.0;
float l9_1663=0.0;
float l9_1664=(*sc_set0.UserUniforms).enableInfinite;
l9_1663=l9_1664;
l9_1662=l9_1663;
float l9_1665=l9_1662;
N123_EnableInfinite=l9_1665;
float l9_1666=0.0;
float l9_1667=0.0;
float l9_1668=(*sc_set0.UserUniforms).distortionScale;
l9_1667=l9_1668;
l9_1666=l9_1667;
float l9_1669=l9_1666;
N123_DistortionScale=l9_1669;
float l9_1670=0.0;
float l9_1671=0.0;
float l9_1672=(*sc_set0.UserUniforms).distortionIntensity;
l9_1671=l9_1672;
l9_1670=l9_1671;
float l9_1673=l9_1670;
N123_DistortionIntensity=l9_1673;
float l9_1674=0.0;
float l9_1675=0.0;
float l9_1676=(*sc_set0.UserUniforms).enableFluid;
l9_1675=l9_1676;
l9_1674=l9_1675;
float l9_1677=l9_1674;
N123_EnableFluid=l9_1677;
float2 l9_1678=float2(0.0);
float2 l9_1679=float2(0.0);
float2 l9_1680=(*sc_set0.UserUniforms).pressureRange;
l9_1679=l9_1680;
l9_1678=l9_1679;
float2 l9_1681=l9_1678;
N123_pressureRange=l9_1681;
float l9_1682=0.0;
float l9_1683=0.0;
float l9_1684=(*sc_set0.UserUniforms).fluidMul;
l9_1683=l9_1684;
l9_1682=l9_1683;
float l9_1685=l9_1682;
N123_FluidMul=l9_1685;
float2 l9_1686=float2(0.0);
float2 l9_1687=float2(0.0);
float2 l9_1688=(*sc_set0.UserUniforms).unpackVal;
l9_1687=l9_1688;
l9_1686=l9_1687;
float2 l9_1689=l9_1686;
N123_unpackVal=l9_1689;
float l9_1690=0.0;
l9_1690=tempGlobals.N123_TatalHeightRemap;
float4 l9_1691=float4(0.0);
float4 l9_1692=(*sc_set0.UserUniforms).colorTrough;
l9_1691=l9_1692;
float4 l9_1693=float4(0.0);
float4 l9_1694=(*sc_set0.UserUniforms).colorMiddle;
l9_1693=l9_1694;
float4 l9_1695=float4(0.0);
float4 l9_1696=(*sc_set0.UserUniforms).colorCrest;
l9_1695=l9_1696;
float l9_1697=0.0;
l9_1697=tempGlobals.N123_fbm;
float4 l9_1698=float4(0.0);
l9_1698=mix(l9_1693,l9_1695,float4(l9_1697));
float l9_1699=l9_1690;
float4 l9_1700=l9_1691;
float l9_1701=(*sc_set0.UserUniforms).Port_Position1_N030;
float4 l9_1702=l9_1691;
float l9_1703=(*sc_set0.UserUniforms).Port_Position2_N030;
float4 l9_1704=l9_1691;
float l9_1705=(*sc_set0.UserUniforms).Port_Position3_N030;
float4 l9_1706=l9_1693;
float l9_1707=(*sc_set0.UserUniforms).Port_Position4_N030;
float4 l9_1708=l9_1698;
float4 l9_1709=l9_1698;
l9_1699=fast::clamp(l9_1699,0.0,1.0);
float4 l9_1710;
if (l9_1699<l9_1701)
{
l9_1710=mix(l9_1700,l9_1702,float4(fast::clamp(l9_1699/l9_1701,0.0,1.0)));
}
else
{
if (l9_1699<l9_1703)
{
l9_1710=mix(l9_1702,l9_1704,float4(fast::clamp((l9_1699-l9_1701)/(l9_1703-l9_1701),0.0,1.0)));
}
else
{
if (l9_1699<l9_1705)
{
l9_1710=mix(l9_1704,l9_1706,float4(fast::clamp((l9_1699-l9_1703)/(l9_1705-l9_1703),0.0,1.0)));
}
else
{
if (l9_1699<l9_1707)
{
l9_1710=mix(l9_1706,l9_1708,float4(fast::clamp((l9_1699-l9_1705)/(l9_1707-l9_1705),0.0,1.0)));
}
else
{
l9_1710=mix(l9_1708,l9_1709,float4(fast::clamp((l9_1699-l9_1707)/(1.0-l9_1707),0.0,1.0)));
}
}
}
}
bool l9_1711=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_1712;
if (l9_1711)
{
l9_1712=!PreviewInfo.Saved;
}
else
{
l9_1712=l9_1711;
}
bool l9_1713;
if (l9_1712)
{
l9_1713=30==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_1713=l9_1712;
}
if (l9_1713)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=l9_1710;
PreviewInfo.Color.w=1.0;
}
float2 l9_1714=tempGlobals.gScreenCoord;
float2 l9_1715=l9_1714;
float2 l9_1716=tempGlobals.Surface_UVCoord0;
float2 l9_1717=l9_1716;
float3 l9_1718=tempGlobals.SurfacePosition_WorldSpace;
float3 l9_1719=l9_1718;
float2 l9_1720=l9_1717*N123_DistortionScale;
float4 l9_1721=float4(0.0);
int l9_1722;
if ((int(distortionTexHasSwappedViews_tmp)!=0))
{
int l9_1723=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1723=0;
}
else
{
l9_1723=in.varStereoViewID;
}
int l9_1724=l9_1723;
l9_1722=1-l9_1724;
}
else
{
int l9_1725=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1725=0;
}
else
{
l9_1725=in.varStereoViewID;
}
int l9_1726=l9_1725;
l9_1722=l9_1726;
}
int l9_1727=l9_1722;
int l9_1728=distortionTexLayout_tmp;
int l9_1729=l9_1727;
float2 l9_1730=l9_1720;
bool l9_1731=(int(SC_USE_UV_TRANSFORM_distortionTex_tmp)!=0);
float3x3 l9_1732=(*sc_set0.UserUniforms).distortionTexTransform;
int2 l9_1733=int2(SC_SOFTWARE_WRAP_MODE_U_distortionTex_tmp,SC_SOFTWARE_WRAP_MODE_V_distortionTex_tmp);
bool l9_1734=(int(SC_USE_UV_MIN_MAX_distortionTex_tmp)!=0);
float4 l9_1735=(*sc_set0.UserUniforms).distortionTexUvMinMax;
bool l9_1736=(int(SC_USE_CLAMP_TO_BORDER_distortionTex_tmp)!=0);
float4 l9_1737=(*sc_set0.UserUniforms).distortionTexBorderColor;
float l9_1738=0.0;
bool l9_1739=l9_1736&&(!l9_1734);
float l9_1740=1.0;
float l9_1741=l9_1730.x;
int l9_1742=l9_1733.x;
if (l9_1742==1)
{
l9_1741=fract(l9_1741);
}
else
{
if (l9_1742==2)
{
float l9_1743=fract(l9_1741);
float l9_1744=l9_1741-l9_1743;
float l9_1745=step(0.25,fract(l9_1744*0.5));
l9_1741=mix(l9_1743,1.0-l9_1743,fast::clamp(l9_1745,0.0,1.0));
}
}
l9_1730.x=l9_1741;
float l9_1746=l9_1730.y;
int l9_1747=l9_1733.y;
if (l9_1747==1)
{
l9_1746=fract(l9_1746);
}
else
{
if (l9_1747==2)
{
float l9_1748=fract(l9_1746);
float l9_1749=l9_1746-l9_1748;
float l9_1750=step(0.25,fract(l9_1749*0.5));
l9_1746=mix(l9_1748,1.0-l9_1748,fast::clamp(l9_1750,0.0,1.0));
}
}
l9_1730.y=l9_1746;
if (l9_1734)
{
bool l9_1751=l9_1736;
bool l9_1752;
if (l9_1751)
{
l9_1752=l9_1733.x==3;
}
else
{
l9_1752=l9_1751;
}
float l9_1753=l9_1730.x;
float l9_1754=l9_1735.x;
float l9_1755=l9_1735.z;
bool l9_1756=l9_1752;
float l9_1757=l9_1740;
float l9_1758=fast::clamp(l9_1753,l9_1754,l9_1755);
float l9_1759=step(abs(l9_1753-l9_1758),9.9999997e-06);
l9_1757*=(l9_1759+((1.0-float(l9_1756))*(1.0-l9_1759)));
l9_1753=l9_1758;
l9_1730.x=l9_1753;
l9_1740=l9_1757;
bool l9_1760=l9_1736;
bool l9_1761;
if (l9_1760)
{
l9_1761=l9_1733.y==3;
}
else
{
l9_1761=l9_1760;
}
float l9_1762=l9_1730.y;
float l9_1763=l9_1735.y;
float l9_1764=l9_1735.w;
bool l9_1765=l9_1761;
float l9_1766=l9_1740;
float l9_1767=fast::clamp(l9_1762,l9_1763,l9_1764);
float l9_1768=step(abs(l9_1762-l9_1767),9.9999997e-06);
l9_1766*=(l9_1768+((1.0-float(l9_1765))*(1.0-l9_1768)));
l9_1762=l9_1767;
l9_1730.y=l9_1762;
l9_1740=l9_1766;
}
float2 l9_1769=l9_1730;
bool l9_1770=l9_1731;
float3x3 l9_1771=l9_1732;
if (l9_1770)
{
l9_1769=float2((l9_1771*float3(l9_1769,1.0)).xy);
}
float2 l9_1772=l9_1769;
l9_1730=l9_1772;
float l9_1773=l9_1730.x;
int l9_1774=l9_1733.x;
bool l9_1775=l9_1739;
float l9_1776=l9_1740;
if ((l9_1774==0)||(l9_1774==3))
{
float l9_1777=l9_1773;
float l9_1778=0.0;
float l9_1779=1.0;
bool l9_1780=l9_1775;
float l9_1781=l9_1776;
float l9_1782=fast::clamp(l9_1777,l9_1778,l9_1779);
float l9_1783=step(abs(l9_1777-l9_1782),9.9999997e-06);
l9_1781*=(l9_1783+((1.0-float(l9_1780))*(1.0-l9_1783)));
l9_1777=l9_1782;
l9_1773=l9_1777;
l9_1776=l9_1781;
}
l9_1730.x=l9_1773;
l9_1740=l9_1776;
float l9_1784=l9_1730.y;
int l9_1785=l9_1733.y;
bool l9_1786=l9_1739;
float l9_1787=l9_1740;
if ((l9_1785==0)||(l9_1785==3))
{
float l9_1788=l9_1784;
float l9_1789=0.0;
float l9_1790=1.0;
bool l9_1791=l9_1786;
float l9_1792=l9_1787;
float l9_1793=fast::clamp(l9_1788,l9_1789,l9_1790);
float l9_1794=step(abs(l9_1788-l9_1793),9.9999997e-06);
l9_1792*=(l9_1794+((1.0-float(l9_1791))*(1.0-l9_1794)));
l9_1788=l9_1793;
l9_1784=l9_1788;
l9_1787=l9_1792;
}
l9_1730.y=l9_1784;
l9_1740=l9_1787;
float2 l9_1795=l9_1730;
int l9_1796=l9_1728;
int l9_1797=l9_1729;
float l9_1798=l9_1738;
float2 l9_1799=l9_1795;
int l9_1800=l9_1796;
int l9_1801=l9_1797;
float3 l9_1802=float3(0.0);
if (l9_1800==0)
{
l9_1802=float3(l9_1799,0.0);
}
else
{
if (l9_1800==1)
{
l9_1802=float3(l9_1799.x,(l9_1799.y*0.5)+(0.5-(float(l9_1801)*0.5)),0.0);
}
else
{
l9_1802=float3(l9_1799,float(l9_1801));
}
}
float3 l9_1803=l9_1802;
float3 l9_1804=l9_1803;
float4 l9_1805=sc_set0.distortionTex.sample(sc_set0.distortionTexSmpSC,l9_1804.xy,bias(l9_1798));
float4 l9_1806=l9_1805;
if (l9_1736)
{
l9_1806=mix(l9_1737,l9_1806,float4(l9_1740));
}
float4 l9_1807=l9_1806;
l9_1721=l9_1807;
float4 l9_1808=l9_1721;
float2 l9_1809=l9_1808.xy;
float2 l9_1810=(((l9_1809-float2(1.0))*N123_DistortionIntensity)+l9_1715)+float2(0.30000001);
float2 l9_1811=float2(l9_1810.x-0.15000001,1.0-l9_1810.y)*0.89999998;
float4 l9_1812=float4(0.0);
int l9_1813;
if ((int(screenTexHasSwappedViews_tmp)!=0))
{
int l9_1814=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1814=0;
}
else
{
l9_1814=in.varStereoViewID;
}
int l9_1815=l9_1814;
l9_1813=1-l9_1815;
}
else
{
int l9_1816=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1816=0;
}
else
{
l9_1816=in.varStereoViewID;
}
int l9_1817=l9_1816;
l9_1813=l9_1817;
}
int l9_1818=l9_1813;
int l9_1819=screenTexLayout_tmp;
int l9_1820=l9_1818;
float2 l9_1821=l9_1811;
bool l9_1822=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 l9_1823=(*sc_set0.UserUniforms).screenTexTransform;
int2 l9_1824=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool l9_1825=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 l9_1826=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool l9_1827=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 l9_1828=(*sc_set0.UserUniforms).screenTexBorderColor;
float l9_1829=0.0;
bool l9_1830=l9_1827&&(!l9_1825);
float l9_1831=1.0;
float l9_1832=l9_1821.x;
int l9_1833=l9_1824.x;
if (l9_1833==1)
{
l9_1832=fract(l9_1832);
}
else
{
if (l9_1833==2)
{
float l9_1834=fract(l9_1832);
float l9_1835=l9_1832-l9_1834;
float l9_1836=step(0.25,fract(l9_1835*0.5));
l9_1832=mix(l9_1834,1.0-l9_1834,fast::clamp(l9_1836,0.0,1.0));
}
}
l9_1821.x=l9_1832;
float l9_1837=l9_1821.y;
int l9_1838=l9_1824.y;
if (l9_1838==1)
{
l9_1837=fract(l9_1837);
}
else
{
if (l9_1838==2)
{
float l9_1839=fract(l9_1837);
float l9_1840=l9_1837-l9_1839;
float l9_1841=step(0.25,fract(l9_1840*0.5));
l9_1837=mix(l9_1839,1.0-l9_1839,fast::clamp(l9_1841,0.0,1.0));
}
}
l9_1821.y=l9_1837;
if (l9_1825)
{
bool l9_1842=l9_1827;
bool l9_1843;
if (l9_1842)
{
l9_1843=l9_1824.x==3;
}
else
{
l9_1843=l9_1842;
}
float l9_1844=l9_1821.x;
float l9_1845=l9_1826.x;
float l9_1846=l9_1826.z;
bool l9_1847=l9_1843;
float l9_1848=l9_1831;
float l9_1849=fast::clamp(l9_1844,l9_1845,l9_1846);
float l9_1850=step(abs(l9_1844-l9_1849),9.9999997e-06);
l9_1848*=(l9_1850+((1.0-float(l9_1847))*(1.0-l9_1850)));
l9_1844=l9_1849;
l9_1821.x=l9_1844;
l9_1831=l9_1848;
bool l9_1851=l9_1827;
bool l9_1852;
if (l9_1851)
{
l9_1852=l9_1824.y==3;
}
else
{
l9_1852=l9_1851;
}
float l9_1853=l9_1821.y;
float l9_1854=l9_1826.y;
float l9_1855=l9_1826.w;
bool l9_1856=l9_1852;
float l9_1857=l9_1831;
float l9_1858=fast::clamp(l9_1853,l9_1854,l9_1855);
float l9_1859=step(abs(l9_1853-l9_1858),9.9999997e-06);
l9_1857*=(l9_1859+((1.0-float(l9_1856))*(1.0-l9_1859)));
l9_1853=l9_1858;
l9_1821.y=l9_1853;
l9_1831=l9_1857;
}
float2 l9_1860=l9_1821;
bool l9_1861=l9_1822;
float3x3 l9_1862=l9_1823;
if (l9_1861)
{
l9_1860=float2((l9_1862*float3(l9_1860,1.0)).xy);
}
float2 l9_1863=l9_1860;
l9_1821=l9_1863;
float l9_1864=l9_1821.x;
int l9_1865=l9_1824.x;
bool l9_1866=l9_1830;
float l9_1867=l9_1831;
if ((l9_1865==0)||(l9_1865==3))
{
float l9_1868=l9_1864;
float l9_1869=0.0;
float l9_1870=1.0;
bool l9_1871=l9_1866;
float l9_1872=l9_1867;
float l9_1873=fast::clamp(l9_1868,l9_1869,l9_1870);
float l9_1874=step(abs(l9_1868-l9_1873),9.9999997e-06);
l9_1872*=(l9_1874+((1.0-float(l9_1871))*(1.0-l9_1874)));
l9_1868=l9_1873;
l9_1864=l9_1868;
l9_1867=l9_1872;
}
l9_1821.x=l9_1864;
l9_1831=l9_1867;
float l9_1875=l9_1821.y;
int l9_1876=l9_1824.y;
bool l9_1877=l9_1830;
float l9_1878=l9_1831;
if ((l9_1876==0)||(l9_1876==3))
{
float l9_1879=l9_1875;
float l9_1880=0.0;
float l9_1881=1.0;
bool l9_1882=l9_1877;
float l9_1883=l9_1878;
float l9_1884=fast::clamp(l9_1879,l9_1880,l9_1881);
float l9_1885=step(abs(l9_1879-l9_1884),9.9999997e-06);
l9_1883*=(l9_1885+((1.0-float(l9_1882))*(1.0-l9_1885)));
l9_1879=l9_1884;
l9_1875=l9_1879;
l9_1878=l9_1883;
}
l9_1821.y=l9_1875;
l9_1831=l9_1878;
float2 l9_1886=l9_1821;
int l9_1887=l9_1819;
int l9_1888=l9_1820;
float l9_1889=l9_1829;
float2 l9_1890=l9_1886;
int l9_1891=l9_1887;
int l9_1892=l9_1888;
float3 l9_1893=float3(0.0);
if (l9_1891==0)
{
l9_1893=float3(l9_1890,0.0);
}
else
{
if (l9_1891==1)
{
l9_1893=float3(l9_1890.x,(l9_1890.y*0.5)+(0.5-(float(l9_1892)*0.5)),0.0);
}
else
{
l9_1893=float3(l9_1890,float(l9_1892));
}
}
float3 l9_1894=l9_1893;
float3 l9_1895=l9_1894;
float4 l9_1896=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_1895.xy,bias(l9_1889));
float4 l9_1897=l9_1896;
if (l9_1827)
{
l9_1897=mix(l9_1828,l9_1897,float4(l9_1831));
}
float4 l9_1898=l9_1897;
l9_1812=l9_1898;
float4 l9_1899=l9_1812;
float4 l9_1900=l9_1899;
float2 l9_1901=((l9_1810-float2(0.1))*0.5)+float2(0.1);
float2 l9_1902=l9_1901;
float4 l9_1903=float4(0.0);
int l9_1904;
if ((int(screenTexHasSwappedViews_tmp)!=0))
{
int l9_1905=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1905=0;
}
else
{
l9_1905=in.varStereoViewID;
}
int l9_1906=l9_1905;
l9_1904=1-l9_1906;
}
else
{
int l9_1907=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1907=0;
}
else
{
l9_1907=in.varStereoViewID;
}
int l9_1908=l9_1907;
l9_1904=l9_1908;
}
int l9_1909=l9_1904;
int l9_1910=screenTexLayout_tmp;
int l9_1911=l9_1909;
float2 l9_1912=l9_1902;
bool l9_1913=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 l9_1914=(*sc_set0.UserUniforms).screenTexTransform;
int2 l9_1915=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool l9_1916=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 l9_1917=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool l9_1918=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 l9_1919=(*sc_set0.UserUniforms).screenTexBorderColor;
float l9_1920=0.0;
bool l9_1921=l9_1918&&(!l9_1916);
float l9_1922=1.0;
float l9_1923=l9_1912.x;
int l9_1924=l9_1915.x;
if (l9_1924==1)
{
l9_1923=fract(l9_1923);
}
else
{
if (l9_1924==2)
{
float l9_1925=fract(l9_1923);
float l9_1926=l9_1923-l9_1925;
float l9_1927=step(0.25,fract(l9_1926*0.5));
l9_1923=mix(l9_1925,1.0-l9_1925,fast::clamp(l9_1927,0.0,1.0));
}
}
l9_1912.x=l9_1923;
float l9_1928=l9_1912.y;
int l9_1929=l9_1915.y;
if (l9_1929==1)
{
l9_1928=fract(l9_1928);
}
else
{
if (l9_1929==2)
{
float l9_1930=fract(l9_1928);
float l9_1931=l9_1928-l9_1930;
float l9_1932=step(0.25,fract(l9_1931*0.5));
l9_1928=mix(l9_1930,1.0-l9_1930,fast::clamp(l9_1932,0.0,1.0));
}
}
l9_1912.y=l9_1928;
if (l9_1916)
{
bool l9_1933=l9_1918;
bool l9_1934;
if (l9_1933)
{
l9_1934=l9_1915.x==3;
}
else
{
l9_1934=l9_1933;
}
float l9_1935=l9_1912.x;
float l9_1936=l9_1917.x;
float l9_1937=l9_1917.z;
bool l9_1938=l9_1934;
float l9_1939=l9_1922;
float l9_1940=fast::clamp(l9_1935,l9_1936,l9_1937);
float l9_1941=step(abs(l9_1935-l9_1940),9.9999997e-06);
l9_1939*=(l9_1941+((1.0-float(l9_1938))*(1.0-l9_1941)));
l9_1935=l9_1940;
l9_1912.x=l9_1935;
l9_1922=l9_1939;
bool l9_1942=l9_1918;
bool l9_1943;
if (l9_1942)
{
l9_1943=l9_1915.y==3;
}
else
{
l9_1943=l9_1942;
}
float l9_1944=l9_1912.y;
float l9_1945=l9_1917.y;
float l9_1946=l9_1917.w;
bool l9_1947=l9_1943;
float l9_1948=l9_1922;
float l9_1949=fast::clamp(l9_1944,l9_1945,l9_1946);
float l9_1950=step(abs(l9_1944-l9_1949),9.9999997e-06);
l9_1948*=(l9_1950+((1.0-float(l9_1947))*(1.0-l9_1950)));
l9_1944=l9_1949;
l9_1912.y=l9_1944;
l9_1922=l9_1948;
}
float2 l9_1951=l9_1912;
bool l9_1952=l9_1913;
float3x3 l9_1953=l9_1914;
if (l9_1952)
{
l9_1951=float2((l9_1953*float3(l9_1951,1.0)).xy);
}
float2 l9_1954=l9_1951;
l9_1912=l9_1954;
float l9_1955=l9_1912.x;
int l9_1956=l9_1915.x;
bool l9_1957=l9_1921;
float l9_1958=l9_1922;
if ((l9_1956==0)||(l9_1956==3))
{
float l9_1959=l9_1955;
float l9_1960=0.0;
float l9_1961=1.0;
bool l9_1962=l9_1957;
float l9_1963=l9_1958;
float l9_1964=fast::clamp(l9_1959,l9_1960,l9_1961);
float l9_1965=step(abs(l9_1959-l9_1964),9.9999997e-06);
l9_1963*=(l9_1965+((1.0-float(l9_1962))*(1.0-l9_1965)));
l9_1959=l9_1964;
l9_1955=l9_1959;
l9_1958=l9_1963;
}
l9_1912.x=l9_1955;
l9_1922=l9_1958;
float l9_1966=l9_1912.y;
int l9_1967=l9_1915.y;
bool l9_1968=l9_1921;
float l9_1969=l9_1922;
if ((l9_1967==0)||(l9_1967==3))
{
float l9_1970=l9_1966;
float l9_1971=0.0;
float l9_1972=1.0;
bool l9_1973=l9_1968;
float l9_1974=l9_1969;
float l9_1975=fast::clamp(l9_1970,l9_1971,l9_1972);
float l9_1976=step(abs(l9_1970-l9_1975),9.9999997e-06);
l9_1974*=(l9_1976+((1.0-float(l9_1973))*(1.0-l9_1976)));
l9_1970=l9_1975;
l9_1966=l9_1970;
l9_1969=l9_1974;
}
l9_1912.y=l9_1966;
l9_1922=l9_1969;
float2 l9_1977=l9_1912;
int l9_1978=l9_1910;
int l9_1979=l9_1911;
float l9_1980=l9_1920;
float2 l9_1981=l9_1977;
int l9_1982=l9_1978;
int l9_1983=l9_1979;
float3 l9_1984=float3(0.0);
if (l9_1982==0)
{
l9_1984=float3(l9_1981,0.0);
}
else
{
if (l9_1982==1)
{
l9_1984=float3(l9_1981.x,(l9_1981.y*0.5)+(0.5-(float(l9_1983)*0.5)),0.0);
}
else
{
l9_1984=float3(l9_1981,float(l9_1983));
}
}
float3 l9_1985=l9_1984;
float3 l9_1986=l9_1985;
float4 l9_1987=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_1986.xy,bias(l9_1980));
float4 l9_1988=l9_1987;
if (l9_1918)
{
l9_1988=mix(l9_1919,l9_1988,float4(l9_1922));
}
float4 l9_1989=l9_1988;
l9_1903=l9_1989;
float4 l9_1990=l9_1903;
float4 l9_1991=l9_1990;
float2 l9_1992=l9_1717;
if (N123_EnableInfinite==1.0)
{
float2 l9_1993=float2(N123_OceanAabbMin.x,N123_OceanAabbMin.z);
float2 l9_1994=float2(N123_OceanAabbMax.x,N123_OceanAabbMax.z);
float3 l9_1995=(*sc_set0.UserUniforms).sc_Camera.position;
float2 l9_1996=float2(0.0)+(((l9_1995.xz-l9_1993)*1.0)/((l9_1994-l9_1993)+float2(1e-06)));
l9_1996.y=1.0-l9_1996.y;
l9_1992=(l9_1717+l9_1996)-float2(0.5);
}
float2 l9_1997=l9_1992;
float4 l9_1998=float4(0.0);
int l9_1999;
if ((int(oceanHeightmapHasSwappedViews_tmp)!=0))
{
int l9_2000=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2000=0;
}
else
{
l9_2000=in.varStereoViewID;
}
int l9_2001=l9_2000;
l9_1999=1-l9_2001;
}
else
{
int l9_2002=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2002=0;
}
else
{
l9_2002=in.varStereoViewID;
}
int l9_2003=l9_2002;
l9_1999=l9_2003;
}
int l9_2004=l9_1999;
int l9_2005=oceanHeightmapLayout_tmp;
int l9_2006=l9_2004;
float2 l9_2007=l9_1997;
bool l9_2008=(int(SC_USE_UV_TRANSFORM_oceanHeightmap_tmp)!=0);
float3x3 l9_2009=(*sc_set0.UserUniforms).oceanHeightmapTransform;
int2 l9_2010=int2(SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap_tmp,SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap_tmp);
bool l9_2011=(int(SC_USE_UV_MIN_MAX_oceanHeightmap_tmp)!=0);
float4 l9_2012=(*sc_set0.UserUniforms).oceanHeightmapUvMinMax;
bool l9_2013=(int(SC_USE_CLAMP_TO_BORDER_oceanHeightmap_tmp)!=0);
float4 l9_2014=(*sc_set0.UserUniforms).oceanHeightmapBorderColor;
float l9_2015=0.0;
bool l9_2016=l9_2013&&(!l9_2011);
float l9_2017=1.0;
float l9_2018=l9_2007.x;
int l9_2019=l9_2010.x;
if (l9_2019==1)
{
l9_2018=fract(l9_2018);
}
else
{
if (l9_2019==2)
{
float l9_2020=fract(l9_2018);
float l9_2021=l9_2018-l9_2020;
float l9_2022=step(0.25,fract(l9_2021*0.5));
l9_2018=mix(l9_2020,1.0-l9_2020,fast::clamp(l9_2022,0.0,1.0));
}
}
l9_2007.x=l9_2018;
float l9_2023=l9_2007.y;
int l9_2024=l9_2010.y;
if (l9_2024==1)
{
l9_2023=fract(l9_2023);
}
else
{
if (l9_2024==2)
{
float l9_2025=fract(l9_2023);
float l9_2026=l9_2023-l9_2025;
float l9_2027=step(0.25,fract(l9_2026*0.5));
l9_2023=mix(l9_2025,1.0-l9_2025,fast::clamp(l9_2027,0.0,1.0));
}
}
l9_2007.y=l9_2023;
if (l9_2011)
{
bool l9_2028=l9_2013;
bool l9_2029;
if (l9_2028)
{
l9_2029=l9_2010.x==3;
}
else
{
l9_2029=l9_2028;
}
float l9_2030=l9_2007.x;
float l9_2031=l9_2012.x;
float l9_2032=l9_2012.z;
bool l9_2033=l9_2029;
float l9_2034=l9_2017;
float l9_2035=fast::clamp(l9_2030,l9_2031,l9_2032);
float l9_2036=step(abs(l9_2030-l9_2035),9.9999997e-06);
l9_2034*=(l9_2036+((1.0-float(l9_2033))*(1.0-l9_2036)));
l9_2030=l9_2035;
l9_2007.x=l9_2030;
l9_2017=l9_2034;
bool l9_2037=l9_2013;
bool l9_2038;
if (l9_2037)
{
l9_2038=l9_2010.y==3;
}
else
{
l9_2038=l9_2037;
}
float l9_2039=l9_2007.y;
float l9_2040=l9_2012.y;
float l9_2041=l9_2012.w;
bool l9_2042=l9_2038;
float l9_2043=l9_2017;
float l9_2044=fast::clamp(l9_2039,l9_2040,l9_2041);
float l9_2045=step(abs(l9_2039-l9_2044),9.9999997e-06);
l9_2043*=(l9_2045+((1.0-float(l9_2042))*(1.0-l9_2045)));
l9_2039=l9_2044;
l9_2007.y=l9_2039;
l9_2017=l9_2043;
}
float2 l9_2046=l9_2007;
bool l9_2047=l9_2008;
float3x3 l9_2048=l9_2009;
if (l9_2047)
{
l9_2046=float2((l9_2048*float3(l9_2046,1.0)).xy);
}
float2 l9_2049=l9_2046;
l9_2007=l9_2049;
float l9_2050=l9_2007.x;
int l9_2051=l9_2010.x;
bool l9_2052=l9_2016;
float l9_2053=l9_2017;
if ((l9_2051==0)||(l9_2051==3))
{
float l9_2054=l9_2050;
float l9_2055=0.0;
float l9_2056=1.0;
bool l9_2057=l9_2052;
float l9_2058=l9_2053;
float l9_2059=fast::clamp(l9_2054,l9_2055,l9_2056);
float l9_2060=step(abs(l9_2054-l9_2059),9.9999997e-06);
l9_2058*=(l9_2060+((1.0-float(l9_2057))*(1.0-l9_2060)));
l9_2054=l9_2059;
l9_2050=l9_2054;
l9_2053=l9_2058;
}
l9_2007.x=l9_2050;
l9_2017=l9_2053;
float l9_2061=l9_2007.y;
int l9_2062=l9_2010.y;
bool l9_2063=l9_2016;
float l9_2064=l9_2017;
if ((l9_2062==0)||(l9_2062==3))
{
float l9_2065=l9_2061;
float l9_2066=0.0;
float l9_2067=1.0;
bool l9_2068=l9_2063;
float l9_2069=l9_2064;
float l9_2070=fast::clamp(l9_2065,l9_2066,l9_2067);
float l9_2071=step(abs(l9_2065-l9_2070),9.9999997e-06);
l9_2069*=(l9_2071+((1.0-float(l9_2068))*(1.0-l9_2071)));
l9_2065=l9_2070;
l9_2061=l9_2065;
l9_2064=l9_2069;
}
l9_2007.y=l9_2061;
l9_2017=l9_2064;
float2 l9_2072=l9_2007;
int l9_2073=l9_2005;
int l9_2074=l9_2006;
float l9_2075=l9_2015;
float2 l9_2076=l9_2072;
int l9_2077=l9_2073;
int l9_2078=l9_2074;
float3 l9_2079=float3(0.0);
if (l9_2077==0)
{
l9_2079=float3(l9_2076,0.0);
}
else
{
if (l9_2077==1)
{
l9_2079=float3(l9_2076.x,(l9_2076.y*0.5)+(0.5-(float(l9_2078)*0.5)),0.0);
}
else
{
l9_2079=float3(l9_2076,float(l9_2078));
}
}
float3 l9_2080=l9_2079;
float3 l9_2081=l9_2080;
float4 l9_2082=sc_set0.oceanHeightmap.sample(sc_set0.oceanHeightmapSmpSC,l9_2081.xy,bias(l9_2075));
float4 l9_2083=l9_2082;
if (l9_2013)
{
l9_2083=mix(l9_2014,l9_2083,float4(l9_2017));
}
float4 l9_2084=l9_2083;
l9_1998=l9_2084;
float4 l9_2085=l9_1998;
float2 l9_2086=l9_2085.xy;
float l9_2087=N123_unpackVal.x;
float l9_2088=N123_unpackVal.y;
float l9_2089=0.0;
float2 l9_2090=l9_2086;
float l9_2091=l9_2087;
float l9_2092=l9_2088;
float l9_2093=0.99998999;
float2 l9_2094=l9_2090;
#if (1)
{
l9_2094=floor((l9_2094*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_2095=dot(l9_2094,float2(1.0,0.0039215689));
float l9_2096=l9_2095;
float l9_2097=0.0;
float l9_2098=l9_2093;
float l9_2099=l9_2091;
float l9_2100=l9_2092;
float l9_2101=l9_2099+(((l9_2096-l9_2097)*(l9_2100-l9_2099))/(l9_2098-l9_2097));
float l9_2102=l9_2101;
l9_2089=l9_2102;
float l9_2103=l9_2089;
float l9_2104=l9_2103;
float l9_2105=0.0+(((l9_2104-N123_unpackVal.x)*1.0)/((N123_unpackVal.y-N123_unpackVal.x)+1e-06));
tempGlobals.N123_TatalHeightRemap=l9_2105;
float l9_2106=l9_2104;
if (N123_EnableFluid==1.0)
{
float2 l9_2107=l9_1717;
float4 l9_2108=float4(0.0);
int l9_2109;
if ((int(fluidPressureHasSwappedViews_tmp)!=0))
{
int l9_2110=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2110=0;
}
else
{
l9_2110=in.varStereoViewID;
}
int l9_2111=l9_2110;
l9_2109=1-l9_2111;
}
else
{
int l9_2112=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2112=0;
}
else
{
l9_2112=in.varStereoViewID;
}
int l9_2113=l9_2112;
l9_2109=l9_2113;
}
int l9_2114=l9_2109;
int l9_2115=fluidPressureLayout_tmp;
int l9_2116=l9_2114;
float2 l9_2117=l9_2107;
bool l9_2118=(int(SC_USE_UV_TRANSFORM_fluidPressure_tmp)!=0);
float3x3 l9_2119=(*sc_set0.UserUniforms).fluidPressureTransform;
int2 l9_2120=int2(SC_SOFTWARE_WRAP_MODE_U_fluidPressure_tmp,SC_SOFTWARE_WRAP_MODE_V_fluidPressure_tmp);
bool l9_2121=(int(SC_USE_UV_MIN_MAX_fluidPressure_tmp)!=0);
float4 l9_2122=(*sc_set0.UserUniforms).fluidPressureUvMinMax;
bool l9_2123=(int(SC_USE_CLAMP_TO_BORDER_fluidPressure_tmp)!=0);
float4 l9_2124=(*sc_set0.UserUniforms).fluidPressureBorderColor;
float l9_2125=0.0;
bool l9_2126=l9_2123&&(!l9_2121);
float l9_2127=1.0;
float l9_2128=l9_2117.x;
int l9_2129=l9_2120.x;
if (l9_2129==1)
{
l9_2128=fract(l9_2128);
}
else
{
if (l9_2129==2)
{
float l9_2130=fract(l9_2128);
float l9_2131=l9_2128-l9_2130;
float l9_2132=step(0.25,fract(l9_2131*0.5));
l9_2128=mix(l9_2130,1.0-l9_2130,fast::clamp(l9_2132,0.0,1.0));
}
}
l9_2117.x=l9_2128;
float l9_2133=l9_2117.y;
int l9_2134=l9_2120.y;
if (l9_2134==1)
{
l9_2133=fract(l9_2133);
}
else
{
if (l9_2134==2)
{
float l9_2135=fract(l9_2133);
float l9_2136=l9_2133-l9_2135;
float l9_2137=step(0.25,fract(l9_2136*0.5));
l9_2133=mix(l9_2135,1.0-l9_2135,fast::clamp(l9_2137,0.0,1.0));
}
}
l9_2117.y=l9_2133;
if (l9_2121)
{
bool l9_2138=l9_2123;
bool l9_2139;
if (l9_2138)
{
l9_2139=l9_2120.x==3;
}
else
{
l9_2139=l9_2138;
}
float l9_2140=l9_2117.x;
float l9_2141=l9_2122.x;
float l9_2142=l9_2122.z;
bool l9_2143=l9_2139;
float l9_2144=l9_2127;
float l9_2145=fast::clamp(l9_2140,l9_2141,l9_2142);
float l9_2146=step(abs(l9_2140-l9_2145),9.9999997e-06);
l9_2144*=(l9_2146+((1.0-float(l9_2143))*(1.0-l9_2146)));
l9_2140=l9_2145;
l9_2117.x=l9_2140;
l9_2127=l9_2144;
bool l9_2147=l9_2123;
bool l9_2148;
if (l9_2147)
{
l9_2148=l9_2120.y==3;
}
else
{
l9_2148=l9_2147;
}
float l9_2149=l9_2117.y;
float l9_2150=l9_2122.y;
float l9_2151=l9_2122.w;
bool l9_2152=l9_2148;
float l9_2153=l9_2127;
float l9_2154=fast::clamp(l9_2149,l9_2150,l9_2151);
float l9_2155=step(abs(l9_2149-l9_2154),9.9999997e-06);
l9_2153*=(l9_2155+((1.0-float(l9_2152))*(1.0-l9_2155)));
l9_2149=l9_2154;
l9_2117.y=l9_2149;
l9_2127=l9_2153;
}
float2 l9_2156=l9_2117;
bool l9_2157=l9_2118;
float3x3 l9_2158=l9_2119;
if (l9_2157)
{
l9_2156=float2((l9_2158*float3(l9_2156,1.0)).xy);
}
float2 l9_2159=l9_2156;
l9_2117=l9_2159;
float l9_2160=l9_2117.x;
int l9_2161=l9_2120.x;
bool l9_2162=l9_2126;
float l9_2163=l9_2127;
if ((l9_2161==0)||(l9_2161==3))
{
float l9_2164=l9_2160;
float l9_2165=0.0;
float l9_2166=1.0;
bool l9_2167=l9_2162;
float l9_2168=l9_2163;
float l9_2169=fast::clamp(l9_2164,l9_2165,l9_2166);
float l9_2170=step(abs(l9_2164-l9_2169),9.9999997e-06);
l9_2168*=(l9_2170+((1.0-float(l9_2167))*(1.0-l9_2170)));
l9_2164=l9_2169;
l9_2160=l9_2164;
l9_2163=l9_2168;
}
l9_2117.x=l9_2160;
l9_2127=l9_2163;
float l9_2171=l9_2117.y;
int l9_2172=l9_2120.y;
bool l9_2173=l9_2126;
float l9_2174=l9_2127;
if ((l9_2172==0)||(l9_2172==3))
{
float l9_2175=l9_2171;
float l9_2176=0.0;
float l9_2177=1.0;
bool l9_2178=l9_2173;
float l9_2179=l9_2174;
float l9_2180=fast::clamp(l9_2175,l9_2176,l9_2177);
float l9_2181=step(abs(l9_2175-l9_2180),9.9999997e-06);
l9_2179*=(l9_2181+((1.0-float(l9_2178))*(1.0-l9_2181)));
l9_2175=l9_2180;
l9_2171=l9_2175;
l9_2174=l9_2179;
}
l9_2117.y=l9_2171;
l9_2127=l9_2174;
float2 l9_2182=l9_2117;
int l9_2183=l9_2115;
int l9_2184=l9_2116;
float l9_2185=l9_2125;
float2 l9_2186=l9_2182;
int l9_2187=l9_2183;
int l9_2188=l9_2184;
float3 l9_2189=float3(0.0);
if (l9_2187==0)
{
l9_2189=float3(l9_2186,0.0);
}
else
{
if (l9_2187==1)
{
l9_2189=float3(l9_2186.x,(l9_2186.y*0.5)+(0.5-(float(l9_2188)*0.5)),0.0);
}
else
{
l9_2189=float3(l9_2186,float(l9_2188));
}
}
float3 l9_2190=l9_2189;
float3 l9_2191=l9_2190;
float4 l9_2192=sc_set0.fluidPressure.sample(sc_set0.fluidPressureSmpSC,l9_2191.xy,bias(l9_2185));
float4 l9_2193=l9_2192;
if (l9_2123)
{
l9_2193=mix(l9_2124,l9_2193,float4(l9_2127));
}
float4 l9_2194=l9_2193;
l9_2108=l9_2194;
float4 l9_2195=l9_2108;
float2 l9_2196=l9_2195.xy;
float l9_2197=N123_pressureRange.x;
float l9_2198=N123_pressureRange.y;
float l9_2199=0.0;
float2 l9_2200=l9_2196;
float l9_2201=l9_2197;
float l9_2202=l9_2198;
float l9_2203=0.99998999;
float2 l9_2204=l9_2200;
#if (1)
{
l9_2204=floor((l9_2204*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_2205=dot(l9_2204,float2(1.0,0.0039215689));
float l9_2206=l9_2205;
float l9_2207=0.0;
float l9_2208=l9_2203;
float l9_2209=l9_2201;
float l9_2210=l9_2202;
float l9_2211=l9_2209+(((l9_2206-l9_2207)*(l9_2210-l9_2209))/(l9_2208-l9_2207));
float l9_2212=l9_2211;
l9_2199=l9_2212;
float l9_2213=l9_2199;
float l9_2214=l9_2213;
float l9_2215=l9_2214*N123_FluidMul;
l9_2106=l9_2104+l9_2215;
float l9_2216=(0.0+(((fast::clamp(l9_2215,N123_unpackVal.x,N123_unpackVal.y)-N123_unpackVal.x)*1.0)/((N123_unpackVal.y-N123_unpackVal.x)+1e-06)))*0.60000002;
tempGlobals.N123_TatalHeightRemap+=l9_2216;
}
float l9_2217=fast::clamp(smoothstep(0.44999999,0.60000002,tempGlobals.N123_TatalHeightRemap),0.0,1.0);
float2 l9_2218=l9_1992;
float4 l9_2219=float4(0.0);
int l9_2220;
if ((int(oceanNormalHasSwappedViews_tmp)!=0))
{
int l9_2221=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2221=0;
}
else
{
l9_2221=in.varStereoViewID;
}
int l9_2222=l9_2221;
l9_2220=1-l9_2222;
}
else
{
int l9_2223=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2223=0;
}
else
{
l9_2223=in.varStereoViewID;
}
int l9_2224=l9_2223;
l9_2220=l9_2224;
}
int l9_2225=l9_2220;
int l9_2226=oceanNormalLayout_tmp;
int l9_2227=l9_2225;
float2 l9_2228=l9_2218;
bool l9_2229=(int(SC_USE_UV_TRANSFORM_oceanNormal_tmp)!=0);
float3x3 l9_2230=(*sc_set0.UserUniforms).oceanNormalTransform;
int2 l9_2231=int2(SC_SOFTWARE_WRAP_MODE_U_oceanNormal_tmp,SC_SOFTWARE_WRAP_MODE_V_oceanNormal_tmp);
bool l9_2232=(int(SC_USE_UV_MIN_MAX_oceanNormal_tmp)!=0);
float4 l9_2233=(*sc_set0.UserUniforms).oceanNormalUvMinMax;
bool l9_2234=(int(SC_USE_CLAMP_TO_BORDER_oceanNormal_tmp)!=0);
float4 l9_2235=(*sc_set0.UserUniforms).oceanNormalBorderColor;
float l9_2236=0.0;
bool l9_2237=l9_2234&&(!l9_2232);
float l9_2238=1.0;
float l9_2239=l9_2228.x;
int l9_2240=l9_2231.x;
if (l9_2240==1)
{
l9_2239=fract(l9_2239);
}
else
{
if (l9_2240==2)
{
float l9_2241=fract(l9_2239);
float l9_2242=l9_2239-l9_2241;
float l9_2243=step(0.25,fract(l9_2242*0.5));
l9_2239=mix(l9_2241,1.0-l9_2241,fast::clamp(l9_2243,0.0,1.0));
}
}
l9_2228.x=l9_2239;
float l9_2244=l9_2228.y;
int l9_2245=l9_2231.y;
if (l9_2245==1)
{
l9_2244=fract(l9_2244);
}
else
{
if (l9_2245==2)
{
float l9_2246=fract(l9_2244);
float l9_2247=l9_2244-l9_2246;
float l9_2248=step(0.25,fract(l9_2247*0.5));
l9_2244=mix(l9_2246,1.0-l9_2246,fast::clamp(l9_2248,0.0,1.0));
}
}
l9_2228.y=l9_2244;
if (l9_2232)
{
bool l9_2249=l9_2234;
bool l9_2250;
if (l9_2249)
{
l9_2250=l9_2231.x==3;
}
else
{
l9_2250=l9_2249;
}
float l9_2251=l9_2228.x;
float l9_2252=l9_2233.x;
float l9_2253=l9_2233.z;
bool l9_2254=l9_2250;
float l9_2255=l9_2238;
float l9_2256=fast::clamp(l9_2251,l9_2252,l9_2253);
float l9_2257=step(abs(l9_2251-l9_2256),9.9999997e-06);
l9_2255*=(l9_2257+((1.0-float(l9_2254))*(1.0-l9_2257)));
l9_2251=l9_2256;
l9_2228.x=l9_2251;
l9_2238=l9_2255;
bool l9_2258=l9_2234;
bool l9_2259;
if (l9_2258)
{
l9_2259=l9_2231.y==3;
}
else
{
l9_2259=l9_2258;
}
float l9_2260=l9_2228.y;
float l9_2261=l9_2233.y;
float l9_2262=l9_2233.w;
bool l9_2263=l9_2259;
float l9_2264=l9_2238;
float l9_2265=fast::clamp(l9_2260,l9_2261,l9_2262);
float l9_2266=step(abs(l9_2260-l9_2265),9.9999997e-06);
l9_2264*=(l9_2266+((1.0-float(l9_2263))*(1.0-l9_2266)));
l9_2260=l9_2265;
l9_2228.y=l9_2260;
l9_2238=l9_2264;
}
float2 l9_2267=l9_2228;
bool l9_2268=l9_2229;
float3x3 l9_2269=l9_2230;
if (l9_2268)
{
l9_2267=float2((l9_2269*float3(l9_2267,1.0)).xy);
}
float2 l9_2270=l9_2267;
l9_2228=l9_2270;
float l9_2271=l9_2228.x;
int l9_2272=l9_2231.x;
bool l9_2273=l9_2237;
float l9_2274=l9_2238;
if ((l9_2272==0)||(l9_2272==3))
{
float l9_2275=l9_2271;
float l9_2276=0.0;
float l9_2277=1.0;
bool l9_2278=l9_2273;
float l9_2279=l9_2274;
float l9_2280=fast::clamp(l9_2275,l9_2276,l9_2277);
float l9_2281=step(abs(l9_2275-l9_2280),9.9999997e-06);
l9_2279*=(l9_2281+((1.0-float(l9_2278))*(1.0-l9_2281)));
l9_2275=l9_2280;
l9_2271=l9_2275;
l9_2274=l9_2279;
}
l9_2228.x=l9_2271;
l9_2238=l9_2274;
float l9_2282=l9_2228.y;
int l9_2283=l9_2231.y;
bool l9_2284=l9_2237;
float l9_2285=l9_2238;
if ((l9_2283==0)||(l9_2283==3))
{
float l9_2286=l9_2282;
float l9_2287=0.0;
float l9_2288=1.0;
bool l9_2289=l9_2284;
float l9_2290=l9_2285;
float l9_2291=fast::clamp(l9_2286,l9_2287,l9_2288);
float l9_2292=step(abs(l9_2286-l9_2291),9.9999997e-06);
l9_2290*=(l9_2292+((1.0-float(l9_2289))*(1.0-l9_2292)));
l9_2286=l9_2291;
l9_2282=l9_2286;
l9_2285=l9_2290;
}
l9_2228.y=l9_2282;
l9_2238=l9_2285;
float2 l9_2293=l9_2228;
int l9_2294=l9_2226;
int l9_2295=l9_2227;
float l9_2296=l9_2236;
float2 l9_2297=l9_2293;
int l9_2298=l9_2294;
int l9_2299=l9_2295;
float3 l9_2300=float3(0.0);
if (l9_2298==0)
{
l9_2300=float3(l9_2297,0.0);
}
else
{
if (l9_2298==1)
{
l9_2300=float3(l9_2297.x,(l9_2297.y*0.5)+(0.5-(float(l9_2299)*0.5)),0.0);
}
else
{
l9_2300=float3(l9_2297,float(l9_2299));
}
}
float3 l9_2301=l9_2300;
float3 l9_2302=l9_2301;
float4 l9_2303=sc_set0.oceanNormal.sample(sc_set0.oceanNormalSmpSC,l9_2302.xy,bias(l9_2296));
float4 l9_2304=l9_2303;
if (l9_2234)
{
l9_2304=mix(l9_2235,l9_2304,float4(l9_2238));
}
float4 l9_2305=l9_2304;
l9_2219=l9_2305;
float4 l9_2306=l9_2219;
float3 l9_2307=(l9_2306.xyz*1.9921875)-float3(1.0);
N123_Normal=l9_2307;
N123_SurfacePosition=float3(0.0,l9_2106,0.0)+l9_1719;
tempGlobals.N123_fbm=1.0;
if (N123_EnableFoam==1.0)
{
float l9_2308=tempGlobals.gTimeElapsed;
float2 l9_2309=N123_SurfacePosition.zx*N123_FBMScale;
float l9_2310=l9_2308*N123_OceanSpeed;
float l9_2311=0.0;
float2 l9_2312=l9_2309+float2(l9_2310);
float2 l9_2313=floor(l9_2312);
float2 l9_2314=fract(l9_2312);
l9_2314=(l9_2314*l9_2314)*(float2(3.0)-(l9_2314*2.0));
float2 l9_2315=l9_2313;
float l9_2316=fract(sin(dot(l9_2315,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2317=l9_2313+float2(1.0,0.0);
float l9_2318=fract(sin(dot(l9_2317,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2319=l9_2313+float2(0.0,1.0);
float l9_2320=fract(sin(dot(l9_2319,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2321=l9_2313+float2(1.0);
float l9_2322=fract(sin(dot(l9_2321,float2(12.9898,4.1413999)))*43758.547);
float l9_2323=mix(mix(l9_2316,l9_2318,l9_2314.x),mix(l9_2320,l9_2322,l9_2314.x),l9_2314.y);
float l9_2324=l9_2323*l9_2323;
l9_2311+=(0.5*l9_2324);
l9_2309=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_2309)*2.02;
float2 l9_2325=l9_2309;
float2 l9_2326=floor(l9_2325);
float2 l9_2327=fract(l9_2325);
l9_2327=(l9_2327*l9_2327)*(float2(3.0)-(l9_2327*2.0));
float2 l9_2328=l9_2326;
float l9_2329=fract(sin(dot(l9_2328,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2330=l9_2326+float2(1.0,0.0);
float l9_2331=fract(sin(dot(l9_2330,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2332=l9_2326+float2(0.0,1.0);
float l9_2333=fract(sin(dot(l9_2332,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2334=l9_2326+float2(1.0);
float l9_2335=fract(sin(dot(l9_2334,float2(12.9898,4.1413999)))*43758.547);
float l9_2336=mix(mix(l9_2329,l9_2331,l9_2327.x),mix(l9_2333,l9_2335,l9_2327.x),l9_2327.y);
float l9_2337=l9_2336*l9_2336;
l9_2311+=(0.03125*l9_2337);
l9_2309=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_2309)*2.01;
float2 l9_2338=l9_2309;
float2 l9_2339=floor(l9_2338);
float2 l9_2340=fract(l9_2338);
l9_2340=(l9_2340*l9_2340)*(float2(3.0)-(l9_2340*2.0));
float2 l9_2341=l9_2339;
float l9_2342=fract(sin(dot(l9_2341,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2343=l9_2339+float2(1.0,0.0);
float l9_2344=fract(sin(dot(l9_2343,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2345=l9_2339+float2(0.0,1.0);
float l9_2346=fract(sin(dot(l9_2345,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2347=l9_2339+float2(1.0);
float l9_2348=fract(sin(dot(l9_2347,float2(12.9898,4.1413999)))*43758.547);
float l9_2349=mix(mix(l9_2342,l9_2344,l9_2340.x),mix(l9_2346,l9_2348,l9_2340.x),l9_2340.y);
float l9_2350=l9_2349*l9_2349;
l9_2311+=(0.25*l9_2350);
l9_2309=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_2309)*2.03;
float2 l9_2351=l9_2309;
float2 l9_2352=floor(l9_2351);
float2 l9_2353=fract(l9_2351);
l9_2353=(l9_2353*l9_2353)*(float2(3.0)-(l9_2353*2.0));
float2 l9_2354=l9_2352;
float l9_2355=fract(sin(dot(l9_2354,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2356=l9_2352+float2(1.0,0.0);
float l9_2357=fract(sin(dot(l9_2356,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2358=l9_2352+float2(0.0,1.0);
float l9_2359=fract(sin(dot(l9_2358,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2360=l9_2352+float2(1.0);
float l9_2361=fract(sin(dot(l9_2360,float2(12.9898,4.1413999)))*43758.547);
float l9_2362=mix(mix(l9_2355,l9_2357,l9_2353.x),mix(l9_2359,l9_2361,l9_2353.x),l9_2353.y);
float l9_2363=l9_2362*l9_2362;
l9_2311+=(0.125*l9_2363);
l9_2309=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_2309)*2.01;
float2 l9_2364=l9_2309;
float2 l9_2365=floor(l9_2364);
float2 l9_2366=fract(l9_2364);
l9_2366=(l9_2366*l9_2366)*(float2(3.0)-(l9_2366*2.0));
float2 l9_2367=l9_2365;
float l9_2368=fract(sin(dot(l9_2367,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2369=l9_2365+float2(1.0,0.0);
float l9_2370=fract(sin(dot(l9_2369,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2371=l9_2365+float2(0.0,1.0);
float l9_2372=fract(sin(dot(l9_2371,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2373=l9_2365+float2(1.0);
float l9_2374=fract(sin(dot(l9_2373,float2(12.9898,4.1413999)))*43758.547);
float l9_2375=mix(mix(l9_2368,l9_2370,l9_2366.x),mix(l9_2372,l9_2374,l9_2366.x),l9_2366.y);
float l9_2376=l9_2375*l9_2375;
l9_2311+=(0.0625*l9_2376);
l9_2309=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_2309)*2.04;
float2 l9_2377=l9_2309+float2(sin(l9_2310));
float2 l9_2378=floor(l9_2377);
float2 l9_2379=fract(l9_2377);
l9_2379=(l9_2379*l9_2379)*(float2(3.0)-(l9_2379*2.0));
float2 l9_2380=l9_2378;
float l9_2381=fract(sin(dot(l9_2380,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2382=l9_2378+float2(1.0,0.0);
float l9_2383=fract(sin(dot(l9_2382,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2384=l9_2378+float2(0.0,1.0);
float l9_2385=fract(sin(dot(l9_2384,float2(12.9898,4.1413999)))*43758.547);
float2 l9_2386=l9_2378+float2(1.0);
float l9_2387=fract(sin(dot(l9_2386,float2(12.9898,4.1413999)))*43758.547);
float l9_2388=mix(mix(l9_2381,l9_2383,l9_2379.x),mix(l9_2385,l9_2387,l9_2379.x),l9_2379.y);
float l9_2389=l9_2388*l9_2388;
l9_2311+=(0.015625*l9_2389);
float l9_2390=l9_2311/0.96875;
tempGlobals.N123_fbm=1.0-l9_2390;
}
float3 l9_2391=N123_Normal;
float l9_2392=6.0;
float l9_2393=4.0;
float3 l9_2394=tempGlobals.VertexTangent_WorldSpace;
float3 l9_2395=tempGlobals.VertexBinormal_WorldSpace;
float3 l9_2396=tempGlobals.VertexNormal_WorldSpace;
float3 l9_2397=float3x3(float3(l9_2394),float3(l9_2395),float3(l9_2396))*l9_2391;
float3 l9_2398=tempGlobals.ViewDirWS;
float l9_2399=abs(dot(-l9_2398,l9_2397));
float l9_2400=1.0-l9_2399;
float l9_2401=l9_2392;
float l9_2402;
if (l9_2400<=0.0)
{
l9_2402=0.0;
}
else
{
l9_2402=pow(l9_2400,l9_2401);
}
float l9_2403=l9_2402;
float l9_2404=l9_2403;
l9_2404=fast::max(l9_2404,0.0);
l9_2404*=l9_2393;
float l9_2405=l9_2404;
float l9_2406=fast::clamp(l9_2405,0.0,1.0);
float4 l9_2407=float4(0.0);
float l9_2408=0.0;
l9_2408=tempGlobals.N123_TatalHeightRemap;
float4 l9_2409=float4(0.0);
float4 l9_2410=(*sc_set0.UserUniforms).colorTrough;
l9_2409=l9_2410;
float4 l9_2411=float4(0.0);
float4 l9_2412=(*sc_set0.UserUniforms).colorMiddle;
l9_2411=l9_2412;
float4 l9_2413=float4(0.0);
float4 l9_2414=(*sc_set0.UserUniforms).colorCrest;
l9_2413=l9_2414;
float l9_2415=0.0;
l9_2415=tempGlobals.N123_fbm;
float4 l9_2416=float4(0.0);
l9_2416=mix(l9_2411,l9_2413,float4(l9_2415));
float4 l9_2417=float4(0.0);
float l9_2418=l9_2408;
float4 l9_2419=l9_2409;
float l9_2420=(*sc_set0.UserUniforms).Port_Position1_N030;
float4 l9_2421=l9_2409;
float l9_2422=(*sc_set0.UserUniforms).Port_Position2_N030;
float4 l9_2423=l9_2409;
float l9_2424=(*sc_set0.UserUniforms).Port_Position3_N030;
float4 l9_2425=l9_2411;
float l9_2426=(*sc_set0.UserUniforms).Port_Position4_N030;
float4 l9_2427=l9_2416;
float4 l9_2428=l9_2416;
l9_2418=fast::clamp(l9_2418,0.0,1.0);
float4 l9_2429;
if (l9_2418<l9_2420)
{
l9_2429=mix(l9_2419,l9_2421,float4(fast::clamp(l9_2418/l9_2420,0.0,1.0)));
}
else
{
if (l9_2418<l9_2422)
{
l9_2429=mix(l9_2421,l9_2423,float4(fast::clamp((l9_2418-l9_2420)/(l9_2422-l9_2420),0.0,1.0)));
}
else
{
if (l9_2418<l9_2424)
{
l9_2429=mix(l9_2423,l9_2425,float4(fast::clamp((l9_2418-l9_2422)/(l9_2424-l9_2422),0.0,1.0)));
}
else
{
if (l9_2418<l9_2426)
{
l9_2429=mix(l9_2425,l9_2427,float4(fast::clamp((l9_2418-l9_2424)/(l9_2426-l9_2424),0.0,1.0)));
}
else
{
l9_2429=mix(l9_2427,l9_2428,float4(fast::clamp((l9_2418-l9_2426)/(1.0-l9_2426),0.0,1.0)));
}
}
}
}
bool l9_2430=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_2431;
if (l9_2430)
{
l9_2431=!PreviewInfo.Saved;
}
else
{
l9_2431=l9_2430;
}
bool l9_2432;
if (l9_2431)
{
l9_2432=30==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_2432=l9_2431;
}
if (l9_2432)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=l9_2429;
PreviewInfo.Color.w=1.0;
}
l9_2417=l9_2429;
l9_2407=l9_2417;
float4 l9_2433=l9_2407;
float4 l9_2434=l9_2433;
int l9_2435=0;
l9_2435=sc_DirectionalLightsCount_tmp;
int l9_2436=l9_2435;
if (l9_2436>0)
{
float l9_2437;
int l9_2438=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
int l9_2439=0;
l9_2439=sc_DirectionalLightsCount_tmp;
int l9_2440=l9_2439;
if (l9_2438<l9_2440)
{
int l9_2441=l9_2438;
float3 l9_2442=float3(0.0);
if (l9_2441<sc_DirectionalLightsCount_tmp)
{
l9_2442=-(*sc_set0.UserUniforms).sc_DirectionalLights[l9_2441].direction;
}
float3 l9_2443=l9_2442;
float3 l9_2444=l9_2443;
float l9_2445=(dot(N123_Normal,l9_2444)*0.60000002)+0.40000001;
float l9_2446=10.0;
if (l9_2445<=0.0)
{
l9_2437=0.0;
}
else
{
l9_2437=pow(l9_2445,l9_2446);
}
float l9_2447=l9_2437;
float l9_2448=fast::clamp(l9_2447,0.0,1.0);
float4 l9_2449=mix(l9_2434,l9_1991,float4(l9_2448));
float4 l9_2450=l9_2434*l9_1900;
float l9_2451=fast::max(l9_2406,l9_2217)*0.89999998;
N123_FrontFacing=mix(l9_2449,l9_2450,float4(l9_2451));
N123_BackFacing=l9_1900;
l9_2438++;
continue;
}
else
{
break;
}
}
}
param_6=N123_Normal;
Normal_N123=param_6;
float4 Output_N13=float4(0.0);
float3 param_8=Output_N14.xyz;
float param_9=(*sc_set0.UserUniforms).Port_Opacity_N013;
float3 param_10=Normal_N123;
float3 param_11=(*sc_set0.UserUniforms).Port_Emissive_N013;
float param_12=(*sc_set0.UserUniforms).Port_Metallic_N013;
float param_13=(*sc_set0.UserUniforms).Port_Roughness_N013;
float3 param_14=(*sc_set0.UserUniforms).Port_AO_N013;
float3 param_15=(*sc_set0.UserUniforms).Port_SpecularAO_N013;
ssGlobals param_17=Globals;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_17.BumpedNormal=float3x3(float3(param_17.VertexTangent_WorldSpace),float3(param_17.VertexBinormal_WorldSpace),float3(param_17.VertexNormal_WorldSpace))*param_10;
}
float l9_2452=param_9;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_2452<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_2453=gl_FragCoord;
float2 l9_2454=floor(mod(l9_2453.xy,float2(4.0)));
float l9_2455=(mod(dot(l9_2454,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_2452<l9_2455)
{
discard_fragment();
}
}
param_8=fast::max(param_8,float3(0.0));
float4 param_16;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_16=float4(param_8,param_9);
}
else
{
float3 l9_2456=param_8;
float l9_2457=param_9;
float3 l9_2458=param_17.BumpedNormal;
float3 l9_2459=param_17.PositionWS;
float3 l9_2460=param_17.ViewDirWS;
float3 l9_2461=param_11;
float l9_2462=param_12;
float l9_2463=param_13;
float3 l9_2464=param_14;
float3 l9_2465=param_15;
SurfaceProperties l9_2466;
l9_2466.albedo=float3(0.0);
l9_2466.opacity=1.0;
l9_2466.normal=float3(0.0);
l9_2466.positionWS=float3(0.0);
l9_2466.viewDirWS=float3(0.0);
l9_2466.metallic=0.0;
l9_2466.roughness=0.0;
l9_2466.emissive=float3(0.0);
l9_2466.ao=float3(1.0);
l9_2466.specularAo=float3(1.0);
l9_2466.bakedShadows=float3(1.0);
SurfaceProperties l9_2467=l9_2466;
SurfaceProperties l9_2468=l9_2467;
l9_2468.opacity=l9_2457;
float3 l9_2469=l9_2456;
float3 l9_2470;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_2470=float3(pow(l9_2469.x,2.2),pow(l9_2469.y,2.2),pow(l9_2469.z,2.2));
}
else
{
l9_2470=l9_2469*l9_2469;
}
float3 l9_2471=l9_2470;
l9_2468.albedo=l9_2471;
l9_2468.normal=normalize(l9_2458);
l9_2468.positionWS=l9_2459;
l9_2468.viewDirWS=l9_2460;
float3 l9_2472=l9_2461;
float3 l9_2473;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_2473=float3(pow(l9_2472.x,2.2),pow(l9_2472.y,2.2),pow(l9_2472.z,2.2));
}
else
{
l9_2473=l9_2472*l9_2472;
}
float3 l9_2474=l9_2473;
l9_2468.emissive=l9_2474;
l9_2468.metallic=l9_2462;
l9_2468.roughness=l9_2463;
l9_2468.ao=l9_2464;
l9_2468.specularAo=l9_2465;
if ((int(sc_SSAOEnabled_tmp)!=0))
{
float3 l9_2475=l9_2468.positionWS;
l9_2468.ao=evaluateSSAO(l9_2475,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC);
}
SurfaceProperties l9_2476=l9_2468;
SurfaceProperties l9_2477=l9_2476;
float3 l9_2478=mix(float3(0.039999999),l9_2477.albedo*l9_2477.metallic,float3(l9_2477.metallic));
float3 l9_2479=mix(l9_2477.albedo*(1.0-l9_2477.metallic),float3(0.0),float3(l9_2477.metallic));
l9_2476.albedo=l9_2479;
l9_2476.specColor=l9_2478;
SurfaceProperties l9_2480=l9_2476;
l9_2468=l9_2480;
SurfaceProperties l9_2481=l9_2468;
LightingComponents l9_2482;
l9_2482.directDiffuse=float3(0.0);
l9_2482.directSpecular=float3(0.0);
l9_2482.indirectDiffuse=float3(1.0);
l9_2482.indirectSpecular=float3(0.0);
l9_2482.emitted=float3(0.0);
l9_2482.transmitted=float3(0.0);
LightingComponents l9_2483=l9_2482;
LightingComponents l9_2484=l9_2483;
float3 l9_2485=l9_2481.viewDirWS;
int l9_2486=0;
float4 l9_2487=float4(l9_2481.bakedShadows,1.0);
if (sc_DirectionalLightsCount_tmp>0)
{
sc_DirectionalLight_t l9_2488;
LightProperties l9_2489;
int l9_2490=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_2490<sc_DirectionalLightsCount_tmp)
{
l9_2488.direction=(*sc_set0.UserUniforms).sc_DirectionalLights[l9_2490].direction;
l9_2488.color=(*sc_set0.UserUniforms).sc_DirectionalLights[l9_2490].color;
l9_2489.direction=l9_2488.direction;
l9_2489.color=l9_2488.color.xyz;
l9_2489.attenuation=l9_2488.color.w;
l9_2489.attenuation*=l9_2487[(l9_2486<3) ? l9_2486 : 3];
l9_2486++;
LightingComponents l9_2491=l9_2484;
LightProperties l9_2492=l9_2489;
SurfaceProperties l9_2493=l9_2481;
float3 l9_2494=l9_2485;
SurfaceProperties l9_2495=l9_2493;
float3 l9_2496=l9_2492.direction;
float l9_2497=dot(l9_2495.normal,l9_2496);
float l9_2498=fast::clamp(l9_2497,0.0,1.0);
float3 l9_2499=float3(l9_2498);
l9_2491.directDiffuse+=((l9_2499*l9_2492.color)*l9_2492.attenuation);
SurfaceProperties l9_2500=l9_2493;
float3 l9_2501=l9_2492.direction;
float3 l9_2502=l9_2494;
l9_2491.directSpecular+=((calculateDirectSpecular(l9_2500,l9_2501,l9_2502)*l9_2492.color)*l9_2492.attenuation);
LightingComponents l9_2503=l9_2491;
l9_2484=l9_2503;
l9_2490++;
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
sc_PointLight_t_1 l9_2504;
LightProperties l9_2505;
int l9_2506=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_2506<sc_PointLightsCount_tmp)
{
l9_2504.falloffEnabled=(*sc_set0.UserUniforms).sc_PointLights[l9_2506].falloffEnabled!=0;
l9_2504.falloffEndDistance=(*sc_set0.UserUniforms).sc_PointLights[l9_2506].falloffEndDistance;
l9_2504.negRcpFalloffEndDistance4=(*sc_set0.UserUniforms).sc_PointLights[l9_2506].negRcpFalloffEndDistance4;
l9_2504.angleScale=(*sc_set0.UserUniforms).sc_PointLights[l9_2506].angleScale;
l9_2504.angleOffset=(*sc_set0.UserUniforms).sc_PointLights[l9_2506].angleOffset;
l9_2504.direction=(*sc_set0.UserUniforms).sc_PointLights[l9_2506].direction;
l9_2504.position=(*sc_set0.UserUniforms).sc_PointLights[l9_2506].position;
l9_2504.color=(*sc_set0.UserUniforms).sc_PointLights[l9_2506].color;
float3 l9_2507=l9_2504.position-l9_2481.positionWS;
l9_2505.direction=normalize(l9_2507);
l9_2505.color=l9_2504.color.xyz;
l9_2505.attenuation=l9_2504.color.w;
l9_2505.attenuation*=l9_2487[(l9_2486<3) ? l9_2486 : 3];
float3 l9_2508=l9_2505.direction;
float3 l9_2509=l9_2504.direction;
float l9_2510=l9_2504.angleScale;
float l9_2511=l9_2504.angleOffset;
float l9_2512=dot(l9_2508,l9_2509);
float l9_2513=fast::clamp((l9_2512*l9_2510)+l9_2511,0.0,1.0);
float l9_2514=l9_2513*l9_2513;
l9_2505.attenuation*=l9_2514;
if (l9_2504.falloffEnabled)
{
float l9_2515=length(l9_2507);
float l9_2516=l9_2504.falloffEndDistance;
l9_2505.attenuation*=computeDistanceAttenuation(l9_2515,l9_2516);
}
l9_2486++;
LightingComponents l9_2517=l9_2484;
LightProperties l9_2518=l9_2505;
SurfaceProperties l9_2519=l9_2481;
float3 l9_2520=l9_2485;
SurfaceProperties l9_2521=l9_2519;
float3 l9_2522=l9_2518.direction;
float l9_2523=dot(l9_2521.normal,l9_2522);
float l9_2524=fast::clamp(l9_2523,0.0,1.0);
float3 l9_2525=float3(l9_2524);
l9_2517.directDiffuse+=((l9_2525*l9_2518.color)*l9_2518.attenuation);
SurfaceProperties l9_2526=l9_2519;
float3 l9_2527=l9_2518.direction;
float3 l9_2528=l9_2520;
l9_2517.directSpecular+=((calculateDirectSpecular(l9_2526,l9_2527,l9_2528)*l9_2518.color)*l9_2518.attenuation);
LightingComponents l9_2529=l9_2517;
l9_2484=l9_2529;
l9_2506++;
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
float3 l9_2530=float3(0.0);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float2 l9_2531=abs(in.varShadowTex-float2(0.5));
float l9_2532=fast::max(l9_2531.x,l9_2531.y);
float l9_2533=step(l9_2532,0.5);
float4 l9_2534=sc_set0.sc_ShadowTexture.sample(sc_set0.sc_ShadowTextureSmpSC,in.varShadowTex)*l9_2533;
float3 l9_2535=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_2534.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float l9_2536=l9_2534.w*(*sc_set0.UserUniforms).sc_ShadowDensity;
l9_2530=mix(float3(1.0),l9_2535,float3(l9_2536));
}
else
{
l9_2530=float3(1.0);
}
float3 l9_2537=l9_2530;
float3 l9_2538=l9_2537;
l9_2484.directDiffuse*=l9_2538;
l9_2484.directSpecular*=l9_2538;
}
if (((*sc_set0.UserUniforms).sc_RayTracingReceiverEffectsMask&4)!=0)
{
float4 l9_2539=gl_FragCoord;
float2 l9_2540=l9_2539.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2541=l9_2540;
float2 l9_2542=l9_2541;
float l9_2543=0.0;
int l9_2544;
if ((int(sc_RayTracingShadowsHasSwappedViews_tmp)!=0))
{
int l9_2545=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2545=0;
}
else
{
l9_2545=in.varStereoViewID;
}
int l9_2546=l9_2545;
l9_2544=1-l9_2546;
}
else
{
int l9_2547=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2547=0;
}
else
{
l9_2547=in.varStereoViewID;
}
int l9_2548=l9_2547;
l9_2544=l9_2548;
}
int l9_2549=l9_2544;
float2 l9_2550=l9_2542;
int l9_2551=sc_RayTracingShadowsLayout_tmp;
int l9_2552=l9_2549;
float l9_2553=l9_2543;
float2 l9_2554=l9_2550;
int l9_2555=l9_2551;
int l9_2556=l9_2552;
float3 l9_2557=float3(0.0);
if (l9_2555==0)
{
l9_2557=float3(l9_2554,0.0);
}
else
{
if (l9_2555==1)
{
l9_2557=float3(l9_2554.x,(l9_2554.y*0.5)+(0.5-(float(l9_2556)*0.5)),0.0);
}
else
{
l9_2557=float3(l9_2554,float(l9_2556));
}
}
float3 l9_2558=l9_2557;
float3 l9_2559=l9_2558;
float4 l9_2560=sc_set0.sc_RayTracingShadows.sample(sc_set0.sc_RayTracingShadowsSmpSC,l9_2559.xy,bias(l9_2553));
float4 l9_2561=l9_2560;
float4 l9_2562=l9_2561;
float l9_2563=l9_2562.x;
float l9_2564=1.0-l9_2563;
l9_2484.directDiffuse*=l9_2564;
l9_2484.directSpecular*=l9_2564;
}
SurfaceProperties l9_2565=l9_2481;
float3 l9_2566=l9_2565.normal;
float3 l9_2567=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
float3 l9_2568=l9_2566;
float3 l9_2569=l9_2568;
float l9_2570=(*sc_set0.UserUniforms).sc_EnvmapRotation.y;
float2 l9_2571=float2(0.0);
float l9_2572=l9_2569.x;
float l9_2573=-l9_2569.z;
float l9_2574=(l9_2572<0.0) ? (-1.0) : 1.0;
float l9_2575=l9_2574*acos(fast::clamp(l9_2573/length(float2(l9_2572,l9_2573)),-1.0,1.0));
l9_2571.x=l9_2575-1.5707964;
l9_2571.y=acos(l9_2569.y);
l9_2571/=float2(6.2831855,3.1415927);
l9_2571.y=1.0-l9_2571.y;
l9_2571.x+=(l9_2570/360.0);
l9_2571.x=fract((l9_2571.x+floor(l9_2571.x))+1.0);
float2 l9_2576=l9_2571;
float2 l9_2577=l9_2576;
float4 l9_2578=float4(0.0);
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 l9_2579=l9_2577;
float2 l9_2580=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_2581=5.0;
l9_2577=calcSeamlessPanoramicUvsForSampling(l9_2579,l9_2580,l9_2581);
}
float2 l9_2582=l9_2577;
float l9_2583=13.0;
int l9_2584;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_2585=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2585=0;
}
else
{
l9_2585=in.varStereoViewID;
}
int l9_2586=l9_2585;
l9_2584=1-l9_2586;
}
else
{
int l9_2587=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2587=0;
}
else
{
l9_2587=in.varStereoViewID;
}
int l9_2588=l9_2587;
l9_2584=l9_2588;
}
int l9_2589=l9_2584;
float2 l9_2590=l9_2582;
int l9_2591=sc_EnvmapSpecularLayout_tmp;
int l9_2592=l9_2589;
float l9_2593=l9_2583;
float2 l9_2594=l9_2590;
int l9_2595=l9_2591;
int l9_2596=l9_2592;
float3 l9_2597=float3(0.0);
if (l9_2595==0)
{
l9_2597=float3(l9_2594,0.0);
}
else
{
if (l9_2595==1)
{
l9_2597=float3(l9_2594.x,(l9_2594.y*0.5)+(0.5-(float(l9_2596)*0.5)),0.0);
}
else
{
l9_2597=float3(l9_2594,float(l9_2596));
}
}
float3 l9_2598=l9_2597;
float3 l9_2599=l9_2598;
float4 l9_2600=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_2599.xy,bias(l9_2593));
float4 l9_2601=l9_2600;
l9_2578=l9_2601;
}
else
{
if ((int(sc_HasDiffuseEnvmap_tmp)!=0))
{
float2 l9_2602=l9_2577;
float2 l9_2603=(*sc_set0.UserUniforms).sc_EnvmapDiffuseSize.xy;
float l9_2604=0.0;
l9_2577=calcSeamlessPanoramicUvsForSampling(l9_2602,l9_2603,l9_2604);
float2 l9_2605=l9_2577;
float l9_2606=-13.0;
int l9_2607;
if ((int(sc_EnvmapDiffuseHasSwappedViews_tmp)!=0))
{
int l9_2608=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2608=0;
}
else
{
l9_2608=in.varStereoViewID;
}
int l9_2609=l9_2608;
l9_2607=1-l9_2609;
}
else
{
int l9_2610=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2610=0;
}
else
{
l9_2610=in.varStereoViewID;
}
int l9_2611=l9_2610;
l9_2607=l9_2611;
}
int l9_2612=l9_2607;
float2 l9_2613=l9_2605;
int l9_2614=sc_EnvmapDiffuseLayout_tmp;
int l9_2615=l9_2612;
float l9_2616=l9_2606;
float2 l9_2617=l9_2613;
int l9_2618=l9_2614;
int l9_2619=l9_2615;
float3 l9_2620=float3(0.0);
if (l9_2618==0)
{
l9_2620=float3(l9_2617,0.0);
}
else
{
if (l9_2618==1)
{
l9_2620=float3(l9_2617.x,(l9_2617.y*0.5)+(0.5-(float(l9_2619)*0.5)),0.0);
}
else
{
l9_2620=float3(l9_2617,float(l9_2619));
}
}
float3 l9_2621=l9_2620;
float3 l9_2622=l9_2621;
float4 l9_2623=sc_set0.sc_EnvmapDiffuse.sample(sc_set0.sc_EnvmapDiffuseSmpSC,l9_2622.xy,bias(l9_2616));
float4 l9_2624=l9_2623;
l9_2578=l9_2624;
}
else
{
float2 l9_2625=l9_2577;
float l9_2626=13.0;
int l9_2627;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_2628=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2628=0;
}
else
{
l9_2628=in.varStereoViewID;
}
int l9_2629=l9_2628;
l9_2627=1-l9_2629;
}
else
{
int l9_2630=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2630=0;
}
else
{
l9_2630=in.varStereoViewID;
}
int l9_2631=l9_2630;
l9_2627=l9_2631;
}
int l9_2632=l9_2627;
float2 l9_2633=l9_2625;
int l9_2634=sc_EnvmapSpecularLayout_tmp;
int l9_2635=l9_2632;
float l9_2636=l9_2626;
float2 l9_2637=l9_2633;
int l9_2638=l9_2634;
int l9_2639=l9_2635;
float3 l9_2640=float3(0.0);
if (l9_2638==0)
{
l9_2640=float3(l9_2637,0.0);
}
else
{
if (l9_2638==1)
{
l9_2640=float3(l9_2637.x,(l9_2637.y*0.5)+(0.5-(float(l9_2639)*0.5)),0.0);
}
else
{
l9_2640=float3(l9_2637,float(l9_2639));
}
}
float3 l9_2641=l9_2640;
float3 l9_2642=l9_2641;
float4 l9_2643=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_2642.xy,bias(l9_2636));
float4 l9_2644=l9_2643;
l9_2578=l9_2644;
}
}
float4 l9_2645=l9_2578;
float3 l9_2646=l9_2645.xyz*(1.0/l9_2645.w);
float3 l9_2647=l9_2646*(*sc_set0.UserUniforms).sc_EnvmapExposure;
l9_2567=l9_2647;
}
else
{
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_SphericalHarmonics_tmp)
{
float3 l9_2648=(*sc_set0.UserUniforms).sc_Sh[0];
float3 l9_2649=(*sc_set0.UserUniforms).sc_Sh[1];
float3 l9_2650=(*sc_set0.UserUniforms).sc_Sh[2];
float3 l9_2651=(*sc_set0.UserUniforms).sc_Sh[3];
float3 l9_2652=(*sc_set0.UserUniforms).sc_Sh[4];
float3 l9_2653=(*sc_set0.UserUniforms).sc_Sh[5];
float3 l9_2654=(*sc_set0.UserUniforms).sc_Sh[6];
float3 l9_2655=(*sc_set0.UserUniforms).sc_Sh[7];
float3 l9_2656=(*sc_set0.UserUniforms).sc_Sh[8];
float3 l9_2657=-l9_2566;
float l9_2658=0.0;
l9_2658=l9_2657.x;
float l9_2659=l9_2657.y;
float l9_2660=l9_2657.z;
float l9_2661=l9_2658*l9_2658;
float l9_2662=l9_2659*l9_2659;
float l9_2663=l9_2660*l9_2660;
float l9_2664=l9_2658*l9_2659;
float l9_2665=l9_2659*l9_2660;
float l9_2666=l9_2658*l9_2660;
float3 l9_2667=((((((l9_2656*0.42904299)*(l9_2661-l9_2662))+((l9_2654*0.74312502)*l9_2663))+(l9_2648*0.88622701))-(l9_2654*0.24770799))+((((l9_2652*l9_2664)+(l9_2655*l9_2666))+(l9_2653*l9_2665))*0.85808599))+((((l9_2651*l9_2658)+(l9_2649*l9_2659))+(l9_2650*l9_2660))*1.0233279);
l9_2567=l9_2667*(*sc_set0.UserUniforms).sc_ShIntensity;
}
}
if (((*sc_set0.UserUniforms).sc_RayTracingReceiverEffectsMask&2)!=0)
{
float4 l9_2668=gl_FragCoord;
float2 l9_2669=l9_2668.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2670=l9_2669;
float2 l9_2671=l9_2670;
float l9_2672=0.0;
int l9_2673;
if ((int(sc_RayTracingGlobalIlluminationHasSwappedViews_tmp)!=0))
{
int l9_2674=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2674=0;
}
else
{
l9_2674=in.varStereoViewID;
}
int l9_2675=l9_2674;
l9_2673=1-l9_2675;
}
else
{
int l9_2676=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2676=0;
}
else
{
l9_2676=in.varStereoViewID;
}
int l9_2677=l9_2676;
l9_2673=l9_2677;
}
int l9_2678=l9_2673;
float2 l9_2679=l9_2671;
int l9_2680=sc_RayTracingGlobalIlluminationLayout_tmp;
int l9_2681=l9_2678;
float l9_2682=l9_2672;
float2 l9_2683=l9_2679;
int l9_2684=l9_2680;
int l9_2685=l9_2681;
float3 l9_2686=float3(0.0);
if (l9_2684==0)
{
l9_2686=float3(l9_2683,0.0);
}
else
{
if (l9_2684==1)
{
l9_2686=float3(l9_2683.x,(l9_2683.y*0.5)+(0.5-(float(l9_2685)*0.5)),0.0);
}
else
{
l9_2686=float3(l9_2683,float(l9_2685));
}
}
float3 l9_2687=l9_2686;
float3 l9_2688=l9_2687;
float4 l9_2689=sc_set0.sc_RayTracingGlobalIllumination.sample(sc_set0.sc_RayTracingGlobalIlluminationSmpSC,l9_2688.xy,bias(l9_2682));
float4 l9_2690=l9_2689;
float4 l9_2691=l9_2690;
float4 l9_2692=l9_2691;
l9_2567=mix(l9_2567,l9_2692.xyz,float3(l9_2692.w));
}
if (sc_AmbientLightsCount_tmp>0)
{
if (sc_AmbientLightMode0_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_2567+=((*sc_set0.UserUniforms).sc_AmbientLights[0].color*(*sc_set0.UserUniforms).sc_AmbientLights[0].intensity);
}
else
{
l9_2567.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[0].color.x);
}
}
if (sc_AmbientLightsCount_tmp>1)
{
if (sc_AmbientLightMode1_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_2567+=((*sc_set0.UserUniforms).sc_AmbientLights[1].color*(*sc_set0.UserUniforms).sc_AmbientLights[1].intensity);
}
else
{
l9_2567.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[1].color.x);
}
}
if (sc_AmbientLightsCount_tmp>2)
{
if (sc_AmbientLightMode2_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_2567+=((*sc_set0.UserUniforms).sc_AmbientLights[2].color*(*sc_set0.UserUniforms).sc_AmbientLights[2].intensity);
}
else
{
l9_2567.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[2].color.x);
}
}
if ((int(sc_LightEstimation_tmp)!=0))
{
float3 l9_2693=l9_2566;
float3 l9_2694=(*sc_set0.UserUniforms).sc_LightEstimationData.ambientLight;
sc_SphericalGaussianLight_t l9_2695;
float l9_2696;
int l9_2697=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_2697<sc_LightEstimationSGCount_tmp)
{
l9_2695.color=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_2697].color;
l9_2695.sharpness=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_2697].sharpness;
l9_2695.axis=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_2697].axis;
float3 l9_2698=l9_2693;
float l9_2699=dot(l9_2695.axis,l9_2698);
float l9_2700=l9_2695.sharpness;
float l9_2701=0.36000001;
float l9_2702=1.0/(4.0*l9_2701);
float l9_2703=exp(-l9_2700);
float l9_2704=l9_2703*l9_2703;
float l9_2705=1.0/l9_2700;
float l9_2706=(1.0+(2.0*l9_2704))-l9_2705;
float l9_2707=((l9_2703-l9_2704)*l9_2705)-l9_2704;
float l9_2708=sqrt(1.0-l9_2706);
float l9_2709=l9_2701*l9_2699;
float l9_2710=l9_2702*l9_2708;
float l9_2711=l9_2709+l9_2710;
float l9_2712=l9_2699;
float l9_2713=fast::clamp(l9_2712,0.0,1.0);
float l9_2714=l9_2713;
if (step(abs(l9_2709),l9_2710)>0.5)
{
l9_2696=(l9_2711*l9_2711)/l9_2708;
}
else
{
l9_2696=l9_2714;
}
l9_2714=l9_2696;
float l9_2715=(l9_2706*l9_2714)+l9_2707;
sc_SphericalGaussianLight_t l9_2716=l9_2695;
float3 l9_2717=(l9_2716.color/float3(l9_2716.sharpness))*6.2831855;
float3 l9_2718=(l9_2717*l9_2715)/float3(3.1415927);
l9_2694+=l9_2718;
l9_2697++;
continue;
}
else
{
break;
}
}
float3 l9_2719=l9_2694;
l9_2567+=l9_2719;
}
float3 l9_2720=l9_2567;
float3 l9_2721=l9_2720;
l9_2484.indirectDiffuse=l9_2721;
SurfaceProperties l9_2722=l9_2481;
float3 l9_2723=l9_2485;
float3 l9_2724=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
SurfaceProperties l9_2725=l9_2722;
float3 l9_2726=l9_2723;
float3 l9_2727=l9_2725.normal;
float3 l9_2728=reflect(-l9_2726,l9_2727);
float3 l9_2729=l9_2727;
float3 l9_2730=l9_2728;
float l9_2731=l9_2725.roughness;
l9_2728=getSpecularDominantDir(l9_2729,l9_2730,l9_2731);
float l9_2732=l9_2725.roughness;
float l9_2733=pow(l9_2732,0.66666669);
float l9_2734=fast::clamp(l9_2733,0.0,1.0);
float l9_2735=l9_2734*5.0;
float l9_2736=l9_2735;
float l9_2737=l9_2736;
float3 l9_2738=l9_2728;
float l9_2739=l9_2737;
float3 l9_2740=l9_2738;
float l9_2741=l9_2739;
float4 l9_2742=float4(0.0);
float3 l9_2743=l9_2740;
float l9_2744=(*sc_set0.UserUniforms).sc_EnvmapRotation.y;
float2 l9_2745=float2(0.0);
float l9_2746=l9_2743.x;
float l9_2747=-l9_2743.z;
float l9_2748=(l9_2746<0.0) ? (-1.0) : 1.0;
float l9_2749=l9_2748*acos(fast::clamp(l9_2747/length(float2(l9_2746,l9_2747)),-1.0,1.0));
l9_2745.x=l9_2749-1.5707964;
l9_2745.y=acos(l9_2743.y);
l9_2745/=float2(6.2831855,3.1415927);
l9_2745.y=1.0-l9_2745.y;
l9_2745.x+=(l9_2744/360.0);
l9_2745.x=fract((l9_2745.x+floor(l9_2745.x))+1.0);
float2 l9_2750=l9_2745;
float2 l9_2751=l9_2750;
if (SC_DEVICE_CLASS_tmp>=2)
{
float l9_2752=floor(l9_2741);
float l9_2753=ceil(l9_2741);
float l9_2754=l9_2741-l9_2752;
float2 l9_2755=l9_2751;
float2 l9_2756=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_2757=l9_2752;
float2 l9_2758=calcSeamlessPanoramicUvsForSampling(l9_2755,l9_2756,l9_2757);
float2 l9_2759=l9_2758;
float l9_2760=l9_2752;
float2 l9_2761=l9_2759;
float l9_2762=l9_2760;
int l9_2763;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_2764=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2764=0;
}
else
{
l9_2764=in.varStereoViewID;
}
int l9_2765=l9_2764;
l9_2763=1-l9_2765;
}
else
{
int l9_2766=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2766=0;
}
else
{
l9_2766=in.varStereoViewID;
}
int l9_2767=l9_2766;
l9_2763=l9_2767;
}
int l9_2768=l9_2763;
float2 l9_2769=l9_2761;
int l9_2770=sc_EnvmapSpecularLayout_tmp;
int l9_2771=l9_2768;
float l9_2772=l9_2762;
float2 l9_2773=l9_2769;
int l9_2774=l9_2770;
int l9_2775=l9_2771;
float3 l9_2776=float3(0.0);
if (l9_2774==0)
{
l9_2776=float3(l9_2773,0.0);
}
else
{
if (l9_2774==1)
{
l9_2776=float3(l9_2773.x,(l9_2773.y*0.5)+(0.5-(float(l9_2775)*0.5)),0.0);
}
else
{
l9_2776=float3(l9_2773,float(l9_2775));
}
}
float3 l9_2777=l9_2776;
float3 l9_2778=l9_2777;
float4 l9_2779=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_2778.xy,level(l9_2772));
float4 l9_2780=l9_2779;
float4 l9_2781=l9_2780;
float4 l9_2782=l9_2781;
float2 l9_2783=l9_2751;
float2 l9_2784=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_2785=l9_2753;
float2 l9_2786=calcSeamlessPanoramicUvsForSampling(l9_2783,l9_2784,l9_2785);
float2 l9_2787=l9_2786;
float l9_2788=l9_2753;
float2 l9_2789=l9_2787;
float l9_2790=l9_2788;
int l9_2791;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_2792=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2792=0;
}
else
{
l9_2792=in.varStereoViewID;
}
int l9_2793=l9_2792;
l9_2791=1-l9_2793;
}
else
{
int l9_2794=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2794=0;
}
else
{
l9_2794=in.varStereoViewID;
}
int l9_2795=l9_2794;
l9_2791=l9_2795;
}
int l9_2796=l9_2791;
float2 l9_2797=l9_2789;
int l9_2798=sc_EnvmapSpecularLayout_tmp;
int l9_2799=l9_2796;
float l9_2800=l9_2790;
float2 l9_2801=l9_2797;
int l9_2802=l9_2798;
int l9_2803=l9_2799;
float3 l9_2804=float3(0.0);
if (l9_2802==0)
{
l9_2804=float3(l9_2801,0.0);
}
else
{
if (l9_2802==1)
{
l9_2804=float3(l9_2801.x,(l9_2801.y*0.5)+(0.5-(float(l9_2803)*0.5)),0.0);
}
else
{
l9_2804=float3(l9_2801,float(l9_2803));
}
}
float3 l9_2805=l9_2804;
float3 l9_2806=l9_2805;
float4 l9_2807=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_2806.xy,level(l9_2800));
float4 l9_2808=l9_2807;
float4 l9_2809=l9_2808;
float4 l9_2810=l9_2809;
l9_2742=mix(l9_2782,l9_2810,float4(l9_2754));
}
else
{
float2 l9_2811=l9_2751;
float l9_2812=l9_2741;
float2 l9_2813=l9_2811;
float l9_2814=l9_2812;
int l9_2815;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_2816=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2816=0;
}
else
{
l9_2816=in.varStereoViewID;
}
int l9_2817=l9_2816;
l9_2815=1-l9_2817;
}
else
{
int l9_2818=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2818=0;
}
else
{
l9_2818=in.varStereoViewID;
}
int l9_2819=l9_2818;
l9_2815=l9_2819;
}
int l9_2820=l9_2815;
float2 l9_2821=l9_2813;
int l9_2822=sc_EnvmapSpecularLayout_tmp;
int l9_2823=l9_2820;
float l9_2824=l9_2814;
float2 l9_2825=l9_2821;
int l9_2826=l9_2822;
int l9_2827=l9_2823;
float3 l9_2828=float3(0.0);
if (l9_2826==0)
{
l9_2828=float3(l9_2825,0.0);
}
else
{
if (l9_2826==1)
{
l9_2828=float3(l9_2825.x,(l9_2825.y*0.5)+(0.5-(float(l9_2827)*0.5)),0.0);
}
else
{
l9_2828=float3(l9_2825,float(l9_2827));
}
}
float3 l9_2829=l9_2828;
float3 l9_2830=l9_2829;
float4 l9_2831=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_2830.xy,level(l9_2824));
float4 l9_2832=l9_2831;
float4 l9_2833=l9_2832;
l9_2742=l9_2833;
}
float4 l9_2834=l9_2742;
float3 l9_2835=l9_2834.xyz*(1.0/l9_2834.w);
float3 l9_2836=l9_2835;
float3 l9_2837=l9_2836*(*sc_set0.UserUniforms).sc_EnvmapExposure;
l9_2837+=float3(1e-06);
float3 l9_2838=l9_2837;
float3 l9_2839=l9_2838;
if (((*sc_set0.UserUniforms).sc_RayTracingReceiverEffectsMask&1)!=0)
{
float4 l9_2840=gl_FragCoord;
float2 l9_2841=l9_2840.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2842=l9_2841;
float2 l9_2843=l9_2842;
float l9_2844=0.0;
int l9_2845;
if ((int(sc_RayTracingReflectionsHasSwappedViews_tmp)!=0))
{
int l9_2846=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2846=0;
}
else
{
l9_2846=in.varStereoViewID;
}
int l9_2847=l9_2846;
l9_2845=1-l9_2847;
}
else
{
int l9_2848=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2848=0;
}
else
{
l9_2848=in.varStereoViewID;
}
int l9_2849=l9_2848;
l9_2845=l9_2849;
}
int l9_2850=l9_2845;
float2 l9_2851=l9_2843;
int l9_2852=sc_RayTracingReflectionsLayout_tmp;
int l9_2853=l9_2850;
float l9_2854=l9_2844;
float2 l9_2855=l9_2851;
int l9_2856=l9_2852;
int l9_2857=l9_2853;
float3 l9_2858=float3(0.0);
if (l9_2856==0)
{
l9_2858=float3(l9_2855,0.0);
}
else
{
if (l9_2856==1)
{
l9_2858=float3(l9_2855.x,(l9_2855.y*0.5)+(0.5-(float(l9_2857)*0.5)),0.0);
}
else
{
l9_2858=float3(l9_2855,float(l9_2857));
}
}
float3 l9_2859=l9_2858;
float3 l9_2860=l9_2859;
float4 l9_2861=sc_set0.sc_RayTracingReflections.sample(sc_set0.sc_RayTracingReflectionsSmpSC,l9_2860.xy,bias(l9_2854));
float4 l9_2862=l9_2861;
float4 l9_2863=l9_2862;
float4 l9_2864=l9_2863;
l9_2839=mix(l9_2839,l9_2864.xyz,float3(l9_2864.w));
}
float l9_2865=abs(dot(l9_2727,l9_2726));
SurfaceProperties l9_2866=l9_2725;
float l9_2867=l9_2865;
float3 l9_2868=l9_2839*envBRDFApprox(l9_2866,l9_2867);
l9_2724+=l9_2868;
}
if ((int(sc_LightEstimation_tmp)!=0))
{
SurfaceProperties l9_2869=l9_2722;
float3 l9_2870=l9_2723;
float l9_2871=fast::clamp(l9_2869.roughness*l9_2869.roughness,0.0099999998,1.0);
float3 l9_2872=(*sc_set0.UserUniforms).sc_LightEstimationData.ambientLight*l9_2869.specColor;
sc_SphericalGaussianLight_t l9_2873;
sc_SphericalGaussianLight_t l9_2874;
sc_SphericalGaussianLight_t l9_2875;
int l9_2876=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_2876<sc_LightEstimationSGCount_tmp)
{
l9_2873.color=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_2876].color;
l9_2873.sharpness=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_2876].sharpness;
l9_2873.axis=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_2876].axis;
float3 l9_2877=l9_2869.normal;
float l9_2878=l9_2871;
float3 l9_2879=l9_2870;
float3 l9_2880=l9_2869.specColor;
float3 l9_2881=l9_2877;
float l9_2882=l9_2878;
l9_2874.axis=l9_2881;
float l9_2883=l9_2882*l9_2882;
l9_2874.sharpness=2.0/l9_2883;
l9_2874.color=float3(1.0/(3.1415927*l9_2883));
sc_SphericalGaussianLight_t l9_2884=l9_2874;
sc_SphericalGaussianLight_t l9_2885=l9_2884;
sc_SphericalGaussianLight_t l9_2886=l9_2885;
float3 l9_2887=l9_2879;
l9_2875.axis=reflect(-l9_2887,l9_2886.axis);
l9_2875.color=l9_2886.color;
l9_2875.sharpness=l9_2886.sharpness;
l9_2875.sharpness/=(4.0*fast::max(dot(l9_2886.axis,l9_2887),9.9999997e-05));
sc_SphericalGaussianLight_t l9_2888=l9_2875;
sc_SphericalGaussianLight_t l9_2889=l9_2888;
sc_SphericalGaussianLight_t l9_2890=l9_2889;
sc_SphericalGaussianLight_t l9_2891=l9_2873;
float l9_2892=length((l9_2890.axis*l9_2890.sharpness)+(l9_2891.axis*l9_2891.sharpness));
float3 l9_2893=(l9_2890.color*exp((l9_2892-l9_2890.sharpness)-l9_2891.sharpness))*l9_2891.color;
float l9_2894=1.0-exp((-2.0)*l9_2892);
float3 l9_2895=((l9_2893*6.2831855)*l9_2894)/float3(l9_2892);
float3 l9_2896=l9_2895;
float3 l9_2897=l9_2889.axis;
float l9_2898=l9_2878*l9_2878;
float l9_2899=dot(l9_2877,l9_2897);
float l9_2900=fast::clamp(l9_2899,0.0,1.0);
float l9_2901=l9_2900;
float l9_2902=dot(l9_2877,l9_2879);
float l9_2903=fast::clamp(l9_2902,0.0,1.0);
float l9_2904=l9_2903;
float3 l9_2905=normalize(l9_2889.axis+l9_2879);
float l9_2906=l9_2898;
float l9_2907=l9_2901;
float l9_2908=1.0/(l9_2907+sqrt(l9_2906+(((1.0-l9_2906)*l9_2907)*l9_2907)));
float l9_2909=l9_2898;
float l9_2910=l9_2904;
float l9_2911=1.0/(l9_2910+sqrt(l9_2909+(((1.0-l9_2909)*l9_2910)*l9_2910)));
l9_2896*=(l9_2908*l9_2911);
float l9_2912=dot(l9_2897,l9_2905);
float l9_2913=fast::clamp(l9_2912,0.0,1.0);
float l9_2914=pow(1.0-l9_2913,5.0);
l9_2896*=(l9_2880+((float3(1.0)-l9_2880)*l9_2914));
l9_2896*=l9_2901;
float3 l9_2915=l9_2896;
l9_2872+=l9_2915;
l9_2876++;
continue;
}
else
{
break;
}
}
float3 l9_2916=l9_2872;
l9_2724+=l9_2916;
}
float3 l9_2917=l9_2724;
l9_2484.indirectSpecular=l9_2917;
LightingComponents l9_2918=l9_2484;
LightingComponents l9_2919=l9_2918;
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_2919.directDiffuse=float3(0.0);
l9_2919.indirectDiffuse=float3(0.0);
float4 l9_2920=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_2921=out.sc_FragData0;
l9_2920=l9_2921;
}
else
{
float4 l9_2922=gl_FragCoord;
float2 l9_2923=l9_2922.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2924=l9_2923;
float2 l9_2925=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_2926=1;
int l9_2927=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2927=0;
}
else
{
l9_2927=in.varStereoViewID;
}
int l9_2928=l9_2927;
int l9_2929=l9_2928;
float3 l9_2930=float3(l9_2924,0.0);
int l9_2931=l9_2926;
int l9_2932=l9_2929;
if (l9_2931==1)
{
l9_2930.y=((2.0*l9_2930.y)+float(l9_2932))-1.0;
}
float2 l9_2933=l9_2930.xy;
l9_2925=l9_2933;
}
else
{
l9_2925=l9_2924;
}
float2 l9_2934=l9_2925;
float2 l9_2935=l9_2934;
float2 l9_2936=l9_2935;
float2 l9_2937=l9_2936;
float l9_2938=0.0;
int l9_2939;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_2940=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2940=0;
}
else
{
l9_2940=in.varStereoViewID;
}
int l9_2941=l9_2940;
l9_2939=1-l9_2941;
}
else
{
int l9_2942=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2942=0;
}
else
{
l9_2942=in.varStereoViewID;
}
int l9_2943=l9_2942;
l9_2939=l9_2943;
}
int l9_2944=l9_2939;
float2 l9_2945=l9_2937;
int l9_2946=sc_ScreenTextureLayout_tmp;
int l9_2947=l9_2944;
float l9_2948=l9_2938;
float2 l9_2949=l9_2945;
int l9_2950=l9_2946;
int l9_2951=l9_2947;
float3 l9_2952=float3(0.0);
if (l9_2950==0)
{
l9_2952=float3(l9_2949,0.0);
}
else
{
if (l9_2950==1)
{
l9_2952=float3(l9_2949.x,(l9_2949.y*0.5)+(0.5-(float(l9_2951)*0.5)),0.0);
}
else
{
l9_2952=float3(l9_2949,float(l9_2951));
}
}
float3 l9_2953=l9_2952;
float3 l9_2954=l9_2953;
float4 l9_2955=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_2954.xy,bias(l9_2948));
float4 l9_2956=l9_2955;
float4 l9_2957=l9_2956;
l9_2920=l9_2957;
}
float4 l9_2958=l9_2920;
float3 l9_2959=l9_2958.xyz;
float3 l9_2960;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_2960=float3(pow(l9_2959.x,2.2),pow(l9_2959.y,2.2),pow(l9_2959.z,2.2));
}
else
{
l9_2960=l9_2959*l9_2959;
}
float3 l9_2961=l9_2960;
float3 l9_2962=l9_2961;
l9_2919.transmitted=l9_2962*mix(float3(1.0),l9_2468.albedo,float3(l9_2468.opacity));
l9_2468.opacity=1.0;
}
bool l9_2963=false;
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_2963=true;
}
SurfaceProperties l9_2964=l9_2468;
LightingComponents l9_2965=l9_2919;
bool l9_2966=l9_2963;
float3 l9_2967=l9_2964.albedo*(l9_2965.directDiffuse+(l9_2965.indirectDiffuse*l9_2964.ao));
float3 l9_2968=l9_2965.directSpecular+(l9_2965.indirectSpecular*l9_2964.specularAo);
float3 l9_2969=l9_2964.emissive;
float3 l9_2970=l9_2965.transmitted;
if (l9_2966)
{
float l9_2971=l9_2964.opacity;
l9_2967*=srgbToLinear(l9_2971);
}
float3 l9_2972=((l9_2967+l9_2968)+l9_2969)+l9_2970;
float3 l9_2973=l9_2972;
float4 l9_2974=float4(l9_2973,l9_2468.opacity);
if ((int(sc_IsEditor_tmp)!=0))
{
l9_2974.x+=((l9_2468.ao.x*l9_2468.specularAo.x)*9.9999997e-06);
}
if (!(int(sc_BlendMode_Multiply_tmp)!=0))
{
float3 l9_2975=l9_2974.xyz;
float l9_2976=1.8;
float l9_2977=1.4;
float l9_2978=0.5;
float l9_2979=1.5;
float3 l9_2980=(l9_2975*((l9_2975*l9_2976)+float3(l9_2977)))/((l9_2975*((l9_2975*l9_2976)+float3(l9_2978)))+float3(l9_2979));
l9_2974=float4(l9_2980.x,l9_2980.y,l9_2980.z,l9_2974.w);
}
float3 l9_2981=l9_2974.xyz;
float l9_2982=l9_2981.x;
float l9_2983=l9_2981.y;
float l9_2984=l9_2981.z;
float3 l9_2985=float3(linearToSrgb(l9_2982),linearToSrgb(l9_2983),linearToSrgb(l9_2984));
l9_2974=float4(l9_2985.x,l9_2985.y,l9_2985.z,l9_2974.w);
float4 l9_2986=l9_2974;
param_16=l9_2986;
}
param_16=fast::max(param_16,float4(0.0));
Output_N13=param_16;
float2 ScreenCoord_N36=float2(0.0);
ScreenCoord_N36=Globals.gScreenCoord;
float Depth_N35=0.0;
int l9_2987;
if ((int(bodyDepthTexHasSwappedViews_tmp)!=0))
{
int l9_2988=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2988=0;
}
else
{
l9_2988=in.varStereoViewID;
}
int l9_2989=l9_2988;
l9_2987=1-l9_2989;
}
else
{
int l9_2990=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2990=0;
}
else
{
l9_2990=in.varStereoViewID;
}
int l9_2991=l9_2990;
l9_2987=l9_2991;
}
int l9_2992=l9_2987;
int param_18=bodyDepthTexLayout_tmp;
int param_19=l9_2992;
float2 param_20=ScreenCoord_N36;
bool param_21=(int(SC_USE_UV_TRANSFORM_bodyDepthTex_tmp)!=0);
float3x3 param_22=(*sc_set0.UserUniforms).bodyDepthTexTransform;
int2 param_23=int2(SC_SOFTWARE_WRAP_MODE_U_bodyDepthTex_tmp,SC_SOFTWARE_WRAP_MODE_V_bodyDepthTex_tmp);
bool param_24=(int(SC_USE_UV_MIN_MAX_bodyDepthTex_tmp)!=0);
float4 param_25=(*sc_set0.UserUniforms).bodyDepthTexUvMinMax;
bool param_26=(int(SC_USE_CLAMP_TO_BORDER_bodyDepthTex_tmp)!=0);
float4 param_27=(*sc_set0.UserUniforms).bodyDepthTexBorderColor;
float param_28=0.0;
bool l9_2993=param_26&&(!param_24);
float l9_2994=1.0;
float l9_2995=param_20.x;
int l9_2996=param_23.x;
if (l9_2996==1)
{
l9_2995=fract(l9_2995);
}
else
{
if (l9_2996==2)
{
float l9_2997=fract(l9_2995);
float l9_2998=l9_2995-l9_2997;
float l9_2999=step(0.25,fract(l9_2998*0.5));
l9_2995=mix(l9_2997,1.0-l9_2997,fast::clamp(l9_2999,0.0,1.0));
}
}
param_20.x=l9_2995;
float l9_3000=param_20.y;
int l9_3001=param_23.y;
if (l9_3001==1)
{
l9_3000=fract(l9_3000);
}
else
{
if (l9_3001==2)
{
float l9_3002=fract(l9_3000);
float l9_3003=l9_3000-l9_3002;
float l9_3004=step(0.25,fract(l9_3003*0.5));
l9_3000=mix(l9_3002,1.0-l9_3002,fast::clamp(l9_3004,0.0,1.0));
}
}
param_20.y=l9_3000;
if (param_24)
{
bool l9_3005=param_26;
bool l9_3006;
if (l9_3005)
{
l9_3006=param_23.x==3;
}
else
{
l9_3006=l9_3005;
}
float l9_3007=param_20.x;
float l9_3008=param_25.x;
float l9_3009=param_25.z;
bool l9_3010=l9_3006;
float l9_3011=l9_2994;
float l9_3012=fast::clamp(l9_3007,l9_3008,l9_3009);
float l9_3013=step(abs(l9_3007-l9_3012),9.9999997e-06);
l9_3011*=(l9_3013+((1.0-float(l9_3010))*(1.0-l9_3013)));
l9_3007=l9_3012;
param_20.x=l9_3007;
l9_2994=l9_3011;
bool l9_3014=param_26;
bool l9_3015;
if (l9_3014)
{
l9_3015=param_23.y==3;
}
else
{
l9_3015=l9_3014;
}
float l9_3016=param_20.y;
float l9_3017=param_25.y;
float l9_3018=param_25.w;
bool l9_3019=l9_3015;
float l9_3020=l9_2994;
float l9_3021=fast::clamp(l9_3016,l9_3017,l9_3018);
float l9_3022=step(abs(l9_3016-l9_3021),9.9999997e-06);
l9_3020*=(l9_3022+((1.0-float(l9_3019))*(1.0-l9_3022)));
l9_3016=l9_3021;
param_20.y=l9_3016;
l9_2994=l9_3020;
}
float2 l9_3023=param_20;
bool l9_3024=param_21;
float3x3 l9_3025=param_22;
if (l9_3024)
{
l9_3023=float2((l9_3025*float3(l9_3023,1.0)).xy);
}
float2 l9_3026=l9_3023;
param_20=l9_3026;
float l9_3027=param_20.x;
int l9_3028=param_23.x;
bool l9_3029=l9_2993;
float l9_3030=l9_2994;
if ((l9_3028==0)||(l9_3028==3))
{
float l9_3031=l9_3027;
float l9_3032=0.0;
float l9_3033=1.0;
bool l9_3034=l9_3029;
float l9_3035=l9_3030;
float l9_3036=fast::clamp(l9_3031,l9_3032,l9_3033);
float l9_3037=step(abs(l9_3031-l9_3036),9.9999997e-06);
l9_3035*=(l9_3037+((1.0-float(l9_3034))*(1.0-l9_3037)));
l9_3031=l9_3036;
l9_3027=l9_3031;
l9_3030=l9_3035;
}
param_20.x=l9_3027;
l9_2994=l9_3030;
float l9_3038=param_20.y;
int l9_3039=param_23.y;
bool l9_3040=l9_2993;
float l9_3041=l9_2994;
if ((l9_3039==0)||(l9_3039==3))
{
float l9_3042=l9_3038;
float l9_3043=0.0;
float l9_3044=1.0;
bool l9_3045=l9_3040;
float l9_3046=l9_3041;
float l9_3047=fast::clamp(l9_3042,l9_3043,l9_3044);
float l9_3048=step(abs(l9_3042-l9_3047),9.9999997e-06);
l9_3046*=(l9_3048+((1.0-float(l9_3045))*(1.0-l9_3048)));
l9_3042=l9_3047;
l9_3038=l9_3042;
l9_3041=l9_3046;
}
param_20.y=l9_3038;
l9_2994=l9_3041;
float2 l9_3049=param_20;
int l9_3050=param_18;
int l9_3051=param_19;
float l9_3052=param_28;
float2 l9_3053=l9_3049;
int l9_3054=l9_3050;
int l9_3055=l9_3051;
float3 l9_3056=float3(0.0);
if (l9_3054==0)
{
l9_3056=float3(l9_3053,0.0);
}
else
{
if (l9_3054==1)
{
l9_3056=float3(l9_3053.x,(l9_3053.y*0.5)+(0.5-(float(l9_3055)*0.5)),0.0);
}
else
{
l9_3056=float3(l9_3053,float(l9_3055));
}
}
float3 l9_3057=l9_3056;
float3 l9_3058=l9_3057;
float4 l9_3059=sc_set0.bodyDepthTex.sample(sc_set0.bodyDepthTexSmpSC,l9_3058.xy,bias(l9_3052));
float4 l9_3060=l9_3059;
if (param_26)
{
l9_3060=mix(param_27,l9_3060,float4(l9_2994));
}
float4 l9_3061=l9_3060;
float param_29=l9_3061.x;
float4 param_30=(*sc_set0.UserUniforms).bodyDepthTexProjectionMatrixTerms;
float l9_3062=param_30.x;
float l9_3063=param_30.y;
bool l9_3064=param_30.z==0.0;
param_29=(param_29*2.0)-1.0;
float l9_3065;
if (l9_3064)
{
l9_3065=(param_29-l9_3063)/l9_3062;
}
else
{
l9_3065=l9_3063/((-param_29)-l9_3062);
}
float l9_3066=l9_3065;
Depth_N35=l9_3066;
float Depth_N37=0.0;
float l9_3067=(*sc_set0.UserUniforms).sc_Camera.clipPlanes.x;
float l9_3068=(*sc_set0.UserUniforms).sc_Camera.clipPlanes.y;
float4 l9_3069=gl_FragCoord;
float param_31=(l9_3068*l9_3067)/(l9_3068+(l9_3069.z*(l9_3067-l9_3068)));
Depth_N37=param_31;
float4 Result_N34=float4(0.0);
float param_32=Output_N40;
float4 param_33=Output_N13;
float param_34=Depth_N35;
float param_35=Depth_N37;
ssGlobals param_37=Globals;
tempGlobals=param_37;
float4 param_36=float4(0.0);
N34_EnableBodyDepth=param_32;
N34_OceanColor=param_33;
N34_BodyDepth=param_34;
N34_cameraDepth=param_35;
float l9_3070=N34_BodyDepth-(1.0-N34_cameraDepth);
float l9_3071=l9_3070*0.039999999;
float l9_3072=30.0;
float l9_3073;
if (l9_3071<=0.0)
{
l9_3073=0.0;
}
else
{
l9_3073=pow(l9_3071,l9_3072);
}
float l9_3074=l9_3073;
l9_3070=1.0-fast::clamp(l9_3074,0.0,1.0);
N34_Result=mix(N34_OceanColor,float4(N34_OceanColor.xyz,l9_3070),float4(N34_EnableBodyDepth));
if (!(SC_DEVICE_CLASS_tmp>=2))
{
N34_Result=N34_OceanColor;
}
else
{
}
param_36=N34_Result;
Result_N34=param_36;
FinalColor=Result_N34;
float4 param_38=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_3075=param_38;
float4 l9_3076=l9_3075;
float l9_3077=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_3077=l9_3076.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_3077=fast::clamp(l9_3076.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_3077=fast::clamp(dot(l9_3076.xyz,float3(l9_3076.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_3077=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_3077=(1.0-dot(l9_3076.xyz,float3(0.33333001)))*l9_3076.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_3077=(1.0-fast::clamp(dot(l9_3076.xyz,float3(1.0)),0.0,1.0))*l9_3076.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_3077=fast::clamp(dot(l9_3076.xyz,float3(1.0)),0.0,1.0)*l9_3076.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_3077=fast::clamp(dot(l9_3076.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_3077=fast::clamp(dot(l9_3076.xyz,float3(1.0)),0.0,1.0)*l9_3076.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_3077=dot(l9_3076.xyz,float3(0.33333001))*l9_3076.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_3077=1.0-fast::clamp(dot(l9_3076.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_3077=fast::clamp(dot(l9_3076.xyz,float3(1.0)),0.0,1.0);
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
float l9_3078=l9_3077;
float l9_3079=l9_3078;
float l9_3080=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_3079;
float3 l9_3081=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_3075.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_3082=float4(l9_3081.x,l9_3081.y,l9_3081.z,l9_3080);
param_38=l9_3082;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_38=float4(param_38.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_3083=param_38;
float4 l9_3084=float4(0.0);
float4 l9_3085=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_3086=out.sc_FragData0;
l9_3085=l9_3086;
}
else
{
float4 l9_3087=gl_FragCoord;
float2 l9_3088=l9_3087.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_3089=l9_3088;
float2 l9_3090=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_3091=1;
int l9_3092=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3092=0;
}
else
{
l9_3092=in.varStereoViewID;
}
int l9_3093=l9_3092;
int l9_3094=l9_3093;
float3 l9_3095=float3(l9_3089,0.0);
int l9_3096=l9_3091;
int l9_3097=l9_3094;
if (l9_3096==1)
{
l9_3095.y=((2.0*l9_3095.y)+float(l9_3097))-1.0;
}
float2 l9_3098=l9_3095.xy;
l9_3090=l9_3098;
}
else
{
l9_3090=l9_3089;
}
float2 l9_3099=l9_3090;
float2 l9_3100=l9_3099;
float2 l9_3101=l9_3100;
float2 l9_3102=l9_3101;
float l9_3103=0.0;
int l9_3104;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_3105=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3105=0;
}
else
{
l9_3105=in.varStereoViewID;
}
int l9_3106=l9_3105;
l9_3104=1-l9_3106;
}
else
{
int l9_3107=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3107=0;
}
else
{
l9_3107=in.varStereoViewID;
}
int l9_3108=l9_3107;
l9_3104=l9_3108;
}
int l9_3109=l9_3104;
float2 l9_3110=l9_3102;
int l9_3111=sc_ScreenTextureLayout_tmp;
int l9_3112=l9_3109;
float l9_3113=l9_3103;
float2 l9_3114=l9_3110;
int l9_3115=l9_3111;
int l9_3116=l9_3112;
float3 l9_3117=float3(0.0);
if (l9_3115==0)
{
l9_3117=float3(l9_3114,0.0);
}
else
{
if (l9_3115==1)
{
l9_3117=float3(l9_3114.x,(l9_3114.y*0.5)+(0.5-(float(l9_3116)*0.5)),0.0);
}
else
{
l9_3117=float3(l9_3114,float(l9_3116));
}
}
float3 l9_3118=l9_3117;
float3 l9_3119=l9_3118;
float4 l9_3120=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_3119.xy,bias(l9_3113));
float4 l9_3121=l9_3120;
float4 l9_3122=l9_3121;
l9_3085=l9_3122;
}
float4 l9_3123=l9_3085;
float3 l9_3124=l9_3123.xyz;
float3 l9_3125=l9_3124;
float3 l9_3126=l9_3083.xyz;
float3 l9_3127=definedBlend(l9_3125,l9_3126,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_3084=float4(l9_3127.x,l9_3127.y,l9_3127.z,l9_3084.w);
float3 l9_3128=mix(l9_3124,l9_3084.xyz,float3(l9_3083.w));
l9_3084=float4(l9_3128.x,l9_3128.y,l9_3128.z,l9_3084.w);
l9_3084.w=1.0;
float4 l9_3129=l9_3084;
param_38=l9_3129;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_3130=float4(in.varScreenPos.xyz,1.0);
param_38=l9_3130;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_3131=gl_FragCoord;
float l9_3132=fast::clamp(abs(l9_3131.z),0.0,1.0);
float4 l9_3133=float4(l9_3132,1.0-l9_3132,1.0,1.0);
param_38=l9_3133;
}
else
{
float4 l9_3134=param_38;
float4 l9_3135=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_3135=float4(mix(float3(1.0),l9_3134.xyz,float3(l9_3134.w)),l9_3134.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_3136=l9_3134.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_3136=fast::clamp(l9_3136,0.0,1.0);
}
l9_3135=float4(l9_3134.xyz*l9_3136,l9_3136);
}
else
{
l9_3135=l9_3134;
}
}
float4 l9_3137=l9_3135;
param_38=l9_3137;
}
}
}
}
}
float4 l9_3138=param_38;
FinalColor=l9_3138;
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
float4 l9_3139=float4(0.0);
l9_3139=float4(0.0);
float4 l9_3140=l9_3139;
float4 Cost=l9_3140;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float4 param_39=FinalColor;
FinalColor=sc_OutputMotionVectorIfNeeded(param_39,in.varPosAndMotion,in.varNormalAndMotion);
float4 param_40=FinalColor;
float4 l9_3141=param_40;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_3141.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.sc_FragData0=l9_3141;
return out;
}
} // FRAGMENT SHADER

namespace SNAP_RECV {
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float N123_fbm;
float N123_TatalHeightRemap;
float3 BumpedNormal;
float3 ViewDirWS;
float3 PositionWS;
float3 VertexTangent_WorldSpace;
float3 VertexNormal_WorldSpace;
float3 VertexBinormal_WorldSpace;
float gFrontFacing;
float3 SurfacePosition_WorldSpace;
float2 Surface_UVCoord0;
float2 gScreenCoord;
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
float3 oceanMin;
float3 oceanMax;
float speed;
float enableFoam;
float fbmScale;
float enableInfinite;
float4 screenTexSize;
float4 screenTexDims;
float4 screenTexView;
float3x3 screenTexTransform;
float4 screenTexUvMinMax;
float4 screenTexBorderColor;
float4 distortionTexSize;
float4 distortionTexDims;
float4 distortionTexView;
float3x3 distortionTexTransform;
float4 distortionTexUvMinMax;
float4 distortionTexBorderColor;
float distortionScale;
float distortionIntensity;
float4 oceanHeightmapSize;
float4 oceanHeightmapDims;
float4 oceanHeightmapView;
float3x3 oceanHeightmapTransform;
float4 oceanHeightmapUvMinMax;
float4 oceanHeightmapBorderColor;
float4 oceanNormalSize;
float4 oceanNormalDims;
float4 oceanNormalView;
float3x3 oceanNormalTransform;
float4 oceanNormalUvMinMax;
float4 oceanNormalBorderColor;
float enableFluid;
float2 pressureRange;
float4 fluidPressureSize;
float4 fluidPressureDims;
float4 fluidPressureView;
float3x3 fluidPressureTransform;
float4 fluidPressureUvMinMax;
float4 fluidPressureBorderColor;
float fluidMul;
float2 unpackVal;
float4 colorTrough;
float4 colorMiddle;
float4 colorCrest;
float bodyIntersection;
float4 bodyDepthTexSize;
float4 bodyDepthTexDims;
float4 bodyDepthTexView;
float3x3 bodyDepthTexTransform;
float4 bodyDepthTexUvMinMax;
float4 bodyDepthTexBorderColor;
float4 bodyDepthTexProjectionMatrixTerms;
float Port_Position1_N030;
float Port_Position2_N030;
float Port_Position3_N030;
float Port_Position4_N030;
float Port_Opacity_N013;
float3 Port_Emissive_N013;
float Port_Metallic_N013;
float Port_Roughness_N013;
float3 Port_AO_N013;
float3 Port_SpecularAO_N013;
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
texture2d<float> bodyDepthTex [[id(1)]];
texture2d<float> distortionTex [[id(2)]];
texture2d<float> fluidPressure [[id(3)]];
texture2d<float> intensityTexture [[id(4)]];
texture2d<float> oceanHeightmap [[id(5)]];
texture2d<float> oceanNormal [[id(6)]];
texture2d<float> sc_EnvmapDiffuse [[id(7)]];
texture2d<float> sc_EnvmapSpecular [[id(8)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(17)]];
texture2d<float> sc_RayTracingReflections [[id(18)]];
texture2d<float> sc_RayTracingShadows [[id(19)]];
texture2d<float> sc_SSAOTexture [[id(20)]];
texture2d<float> sc_ScreenTexture [[id(21)]];
texture2d<float> sc_ShadowTexture [[id(22)]];
texture2d<float> screenTex [[id(24)]];
sampler bodyDepthTexSmpSC [[id(25)]];
sampler distortionTexSmpSC [[id(26)]];
sampler fluidPressureSmpSC [[id(27)]];
sampler intensityTextureSmpSC [[id(28)]];
sampler oceanHeightmapSmpSC [[id(29)]];
sampler oceanNormalSmpSC [[id(30)]];
sampler sc_EnvmapDiffuseSmpSC [[id(31)]];
sampler sc_EnvmapSpecularSmpSC [[id(32)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(34)]];
sampler sc_RayTracingReflectionsSmpSC [[id(35)]];
sampler sc_RayTracingShadowsSmpSC [[id(36)]];
sampler sc_SSAOTextureSmpSC [[id(37)]];
sampler sc_ScreenTextureSmpSC [[id(38)]];
sampler sc_ShadowTextureSmpSC [[id(39)]];
sampler screenTexSmpSC [[id(41)]];
constant userUniformsObj* UserUniforms [[id(42)]];
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
fragment main_recv_out main_recv(main_recv_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]],bool gl_FrontFacing [[front_facing]])
{
main_recv_out out={};
float3 N123_OceanAabbMin=float3(0.0);
float3 N123_OceanAabbMax=float3(0.0);
float N123_OceanSpeed=0.0;
float N123_EnableFoam=0.0;
float N123_FBMScale=0.0;
float N123_EnableInfinite=0.0;
float N123_EnableFluid=0.0;
float2 N123_pressureRange=float2(0.0);
float N123_FluidMul=0.0;
float2 N123_unpackVal=float2(0.0);
float3 N123_Normal=float3(0.0);
float3 N123_SurfacePosition=float3(0.0);
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
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexNormal_WorldSpace=normalize(in.varNormalAndMotion.xyz);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
bool l9_0=gl_FrontFacing;
Globals.gFrontFacing=float(l9_0);
Globals.SurfacePosition_WorldSpace=in.varPosAndMotion.xyz;
Globals.Surface_UVCoord0=in.varTex01.xy;
float4 l9_1=gl_FragCoord;
float2 l9_2=l9_1.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_3=l9_2;
float2 l9_4=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_5=1;
int l9_6=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6=0;
}
else
{
l9_6=in.varStereoViewID;
}
int l9_7=l9_6;
int l9_8=l9_7;
float3 l9_9=float3(l9_3,0.0);
int l9_10=l9_5;
int l9_11=l9_8;
if (l9_10==1)
{
l9_9.y=((2.0*l9_9.y)+float(l9_11))-1.0;
}
float2 l9_12=l9_9.xy;
l9_4=l9_12;
}
else
{
l9_4=l9_3;
}
float2 l9_13=l9_4;
float2 l9_14=l9_13;
Globals.gScreenCoord=l9_14;
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
float param=1.0;
ssGlobals param_1=Globals;
float l9_15=0.0;
l9_15=param_1.gFrontFacing;
param=l9_15;
ssGlobals tempGlobals;
if ((param*1.0)!=0.0)
{
ssGlobals l9_16=param_1;
tempGlobals=l9_16;
float3 l9_17=float3(0.0);
float3 l9_18=float3(0.0);
float3 l9_19=(*sc_set0.UserUniforms).oceanMin;
l9_18=l9_19;
l9_17=l9_18;
float3 l9_20=l9_17;
N123_OceanAabbMin=l9_20;
float3 l9_21=float3(0.0);
float3 l9_22=float3(0.0);
float3 l9_23=(*sc_set0.UserUniforms).oceanMax;
l9_22=l9_23;
l9_21=l9_22;
float3 l9_24=l9_21;
N123_OceanAabbMax=l9_24;
float l9_25=0.0;
float l9_26=0.0;
float l9_27=(*sc_set0.UserUniforms).speed;
l9_26=l9_27;
l9_25=l9_26;
float l9_28=l9_25;
N123_OceanSpeed=l9_28;
float l9_29=0.0;
float l9_30=0.0;
float l9_31=(*sc_set0.UserUniforms).enableFoam;
l9_30=l9_31;
l9_29=l9_30;
float l9_32=l9_29;
N123_EnableFoam=l9_32;
float l9_33=0.0;
float l9_34=0.0;
float l9_35=(*sc_set0.UserUniforms).fbmScale;
l9_34=l9_35;
l9_33=l9_34;
float l9_36=l9_33;
N123_FBMScale=l9_36;
float l9_37=0.0;
float l9_38=0.0;
float l9_39=(*sc_set0.UserUniforms).enableInfinite;
l9_38=l9_39;
l9_37=l9_38;
float l9_40=l9_37;
N123_EnableInfinite=l9_40;
float l9_41=0.0;
float l9_42=0.0;
float l9_43=(*sc_set0.UserUniforms).enableFluid;
l9_42=l9_43;
l9_41=l9_42;
float l9_44=l9_41;
N123_EnableFluid=l9_44;
float2 l9_45=float2(0.0);
float2 l9_46=float2(0.0);
float2 l9_47=(*sc_set0.UserUniforms).pressureRange;
l9_46=l9_47;
l9_45=l9_46;
float2 l9_48=l9_45;
N123_pressureRange=l9_48;
float l9_49=0.0;
float l9_50=0.0;
float l9_51=(*sc_set0.UserUniforms).fluidMul;
l9_50=l9_51;
l9_49=l9_50;
float l9_52=l9_49;
N123_FluidMul=l9_52;
float2 l9_53=float2(0.0);
float2 l9_54=float2(0.0);
float2 l9_55=(*sc_set0.UserUniforms).unpackVal;
l9_54=l9_55;
l9_53=l9_54;
float2 l9_56=l9_53;
N123_unpackVal=l9_56;
float2 l9_57=tempGlobals.Surface_UVCoord0;
float2 l9_58=l9_57;
float3 l9_59=tempGlobals.SurfacePosition_WorldSpace;
float3 l9_60=l9_59;
float2 l9_61=l9_58;
if (N123_EnableInfinite==1.0)
{
float2 l9_62=float2(N123_OceanAabbMin.x,N123_OceanAabbMin.z);
float2 l9_63=float2(N123_OceanAabbMax.x,N123_OceanAabbMax.z);
float3 l9_64=(*sc_set0.UserUniforms).sc_Camera.position;
float2 l9_65=float2(0.0)+(((l9_64.xz-l9_62)*1.0)/((l9_63-l9_62)+float2(1e-06)));
l9_65.y=1.0-l9_65.y;
l9_61=(l9_58+l9_65)-float2(0.5);
}
float2 l9_66=l9_61;
float4 l9_67=float4(0.0);
int l9_68;
if ((int(oceanHeightmapHasSwappedViews_tmp)!=0))
{
int l9_69=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_69=0;
}
else
{
l9_69=in.varStereoViewID;
}
int l9_70=l9_69;
l9_68=1-l9_70;
}
else
{
int l9_71=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_71=0;
}
else
{
l9_71=in.varStereoViewID;
}
int l9_72=l9_71;
l9_68=l9_72;
}
int l9_73=l9_68;
int l9_74=oceanHeightmapLayout_tmp;
int l9_75=l9_73;
float2 l9_76=l9_66;
bool l9_77=(int(SC_USE_UV_TRANSFORM_oceanHeightmap_tmp)!=0);
float3x3 l9_78=(*sc_set0.UserUniforms).oceanHeightmapTransform;
int2 l9_79=int2(SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap_tmp,SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap_tmp);
bool l9_80=(int(SC_USE_UV_MIN_MAX_oceanHeightmap_tmp)!=0);
float4 l9_81=(*sc_set0.UserUniforms).oceanHeightmapUvMinMax;
bool l9_82=(int(SC_USE_CLAMP_TO_BORDER_oceanHeightmap_tmp)!=0);
float4 l9_83=(*sc_set0.UserUniforms).oceanHeightmapBorderColor;
float l9_84=0.0;
bool l9_85=l9_82&&(!l9_80);
float l9_86=1.0;
float l9_87=l9_76.x;
int l9_88=l9_79.x;
if (l9_88==1)
{
l9_87=fract(l9_87);
}
else
{
if (l9_88==2)
{
float l9_89=fract(l9_87);
float l9_90=l9_87-l9_89;
float l9_91=step(0.25,fract(l9_90*0.5));
l9_87=mix(l9_89,1.0-l9_89,fast::clamp(l9_91,0.0,1.0));
}
}
l9_76.x=l9_87;
float l9_92=l9_76.y;
int l9_93=l9_79.y;
if (l9_93==1)
{
l9_92=fract(l9_92);
}
else
{
if (l9_93==2)
{
float l9_94=fract(l9_92);
float l9_95=l9_92-l9_94;
float l9_96=step(0.25,fract(l9_95*0.5));
l9_92=mix(l9_94,1.0-l9_94,fast::clamp(l9_96,0.0,1.0));
}
}
l9_76.y=l9_92;
if (l9_80)
{
bool l9_97=l9_82;
bool l9_98;
if (l9_97)
{
l9_98=l9_79.x==3;
}
else
{
l9_98=l9_97;
}
float l9_99=l9_76.x;
float l9_100=l9_81.x;
float l9_101=l9_81.z;
bool l9_102=l9_98;
float l9_103=l9_86;
float l9_104=fast::clamp(l9_99,l9_100,l9_101);
float l9_105=step(abs(l9_99-l9_104),9.9999997e-06);
l9_103*=(l9_105+((1.0-float(l9_102))*(1.0-l9_105)));
l9_99=l9_104;
l9_76.x=l9_99;
l9_86=l9_103;
bool l9_106=l9_82;
bool l9_107;
if (l9_106)
{
l9_107=l9_79.y==3;
}
else
{
l9_107=l9_106;
}
float l9_108=l9_76.y;
float l9_109=l9_81.y;
float l9_110=l9_81.w;
bool l9_111=l9_107;
float l9_112=l9_86;
float l9_113=fast::clamp(l9_108,l9_109,l9_110);
float l9_114=step(abs(l9_108-l9_113),9.9999997e-06);
l9_112*=(l9_114+((1.0-float(l9_111))*(1.0-l9_114)));
l9_108=l9_113;
l9_76.y=l9_108;
l9_86=l9_112;
}
float2 l9_115=l9_76;
bool l9_116=l9_77;
float3x3 l9_117=l9_78;
if (l9_116)
{
l9_115=float2((l9_117*float3(l9_115,1.0)).xy);
}
float2 l9_118=l9_115;
l9_76=l9_118;
float l9_119=l9_76.x;
int l9_120=l9_79.x;
bool l9_121=l9_85;
float l9_122=l9_86;
if ((l9_120==0)||(l9_120==3))
{
float l9_123=l9_119;
float l9_124=0.0;
float l9_125=1.0;
bool l9_126=l9_121;
float l9_127=l9_122;
float l9_128=fast::clamp(l9_123,l9_124,l9_125);
float l9_129=step(abs(l9_123-l9_128),9.9999997e-06);
l9_127*=(l9_129+((1.0-float(l9_126))*(1.0-l9_129)));
l9_123=l9_128;
l9_119=l9_123;
l9_122=l9_127;
}
l9_76.x=l9_119;
l9_86=l9_122;
float l9_130=l9_76.y;
int l9_131=l9_79.y;
bool l9_132=l9_85;
float l9_133=l9_86;
if ((l9_131==0)||(l9_131==3))
{
float l9_134=l9_130;
float l9_135=0.0;
float l9_136=1.0;
bool l9_137=l9_132;
float l9_138=l9_133;
float l9_139=fast::clamp(l9_134,l9_135,l9_136);
float l9_140=step(abs(l9_134-l9_139),9.9999997e-06);
l9_138*=(l9_140+((1.0-float(l9_137))*(1.0-l9_140)));
l9_134=l9_139;
l9_130=l9_134;
l9_133=l9_138;
}
l9_76.y=l9_130;
l9_86=l9_133;
float2 l9_141=l9_76;
int l9_142=l9_74;
int l9_143=l9_75;
float l9_144=l9_84;
float2 l9_145=l9_141;
int l9_146=l9_142;
int l9_147=l9_143;
float3 l9_148=float3(0.0);
if (l9_146==0)
{
l9_148=float3(l9_145,0.0);
}
else
{
if (l9_146==1)
{
l9_148=float3(l9_145.x,(l9_145.y*0.5)+(0.5-(float(l9_147)*0.5)),0.0);
}
else
{
l9_148=float3(l9_145,float(l9_147));
}
}
float3 l9_149=l9_148;
float3 l9_150=l9_149;
float4 l9_151=sc_set0.oceanHeightmap.sample(sc_set0.oceanHeightmapSmpSC,l9_150.xy,bias(l9_144));
float4 l9_152=l9_151;
if (l9_82)
{
l9_152=mix(l9_83,l9_152,float4(l9_86));
}
float4 l9_153=l9_152;
l9_67=l9_153;
float4 l9_154=l9_67;
float2 l9_155=l9_154.xy;
float l9_156=N123_unpackVal.x;
float l9_157=N123_unpackVal.y;
float l9_158=0.0;
float2 l9_159=l9_155;
float l9_160=l9_156;
float l9_161=l9_157;
float l9_162=0.99998999;
float2 l9_163=l9_159;
#if (1)
{
l9_163=floor((l9_163*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_164=dot(l9_163,float2(1.0,0.0039215689));
float l9_165=l9_164;
float l9_166=0.0;
float l9_167=l9_162;
float l9_168=l9_160;
float l9_169=l9_161;
float l9_170=l9_168+(((l9_165-l9_166)*(l9_169-l9_168))/(l9_167-l9_166));
float l9_171=l9_170;
l9_158=l9_171;
float l9_172=l9_158;
float l9_173=l9_172;
float l9_174=0.0+(((l9_173-N123_unpackVal.x)*1.0)/((N123_unpackVal.y-N123_unpackVal.x)+1e-06));
tempGlobals.N123_TatalHeightRemap=l9_174;
float l9_175=l9_173;
if (N123_EnableFluid==1.0)
{
float2 l9_176=l9_58;
float4 l9_177=float4(0.0);
int l9_178;
if ((int(fluidPressureHasSwappedViews_tmp)!=0))
{
int l9_179=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_179=0;
}
else
{
l9_179=in.varStereoViewID;
}
int l9_180=l9_179;
l9_178=1-l9_180;
}
else
{
int l9_181=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_181=0;
}
else
{
l9_181=in.varStereoViewID;
}
int l9_182=l9_181;
l9_178=l9_182;
}
int l9_183=l9_178;
int l9_184=fluidPressureLayout_tmp;
int l9_185=l9_183;
float2 l9_186=l9_176;
bool l9_187=(int(SC_USE_UV_TRANSFORM_fluidPressure_tmp)!=0);
float3x3 l9_188=(*sc_set0.UserUniforms).fluidPressureTransform;
int2 l9_189=int2(SC_SOFTWARE_WRAP_MODE_U_fluidPressure_tmp,SC_SOFTWARE_WRAP_MODE_V_fluidPressure_tmp);
bool l9_190=(int(SC_USE_UV_MIN_MAX_fluidPressure_tmp)!=0);
float4 l9_191=(*sc_set0.UserUniforms).fluidPressureUvMinMax;
bool l9_192=(int(SC_USE_CLAMP_TO_BORDER_fluidPressure_tmp)!=0);
float4 l9_193=(*sc_set0.UserUniforms).fluidPressureBorderColor;
float l9_194=0.0;
bool l9_195=l9_192&&(!l9_190);
float l9_196=1.0;
float l9_197=l9_186.x;
int l9_198=l9_189.x;
if (l9_198==1)
{
l9_197=fract(l9_197);
}
else
{
if (l9_198==2)
{
float l9_199=fract(l9_197);
float l9_200=l9_197-l9_199;
float l9_201=step(0.25,fract(l9_200*0.5));
l9_197=mix(l9_199,1.0-l9_199,fast::clamp(l9_201,0.0,1.0));
}
}
l9_186.x=l9_197;
float l9_202=l9_186.y;
int l9_203=l9_189.y;
if (l9_203==1)
{
l9_202=fract(l9_202);
}
else
{
if (l9_203==2)
{
float l9_204=fract(l9_202);
float l9_205=l9_202-l9_204;
float l9_206=step(0.25,fract(l9_205*0.5));
l9_202=mix(l9_204,1.0-l9_204,fast::clamp(l9_206,0.0,1.0));
}
}
l9_186.y=l9_202;
if (l9_190)
{
bool l9_207=l9_192;
bool l9_208;
if (l9_207)
{
l9_208=l9_189.x==3;
}
else
{
l9_208=l9_207;
}
float l9_209=l9_186.x;
float l9_210=l9_191.x;
float l9_211=l9_191.z;
bool l9_212=l9_208;
float l9_213=l9_196;
float l9_214=fast::clamp(l9_209,l9_210,l9_211);
float l9_215=step(abs(l9_209-l9_214),9.9999997e-06);
l9_213*=(l9_215+((1.0-float(l9_212))*(1.0-l9_215)));
l9_209=l9_214;
l9_186.x=l9_209;
l9_196=l9_213;
bool l9_216=l9_192;
bool l9_217;
if (l9_216)
{
l9_217=l9_189.y==3;
}
else
{
l9_217=l9_216;
}
float l9_218=l9_186.y;
float l9_219=l9_191.y;
float l9_220=l9_191.w;
bool l9_221=l9_217;
float l9_222=l9_196;
float l9_223=fast::clamp(l9_218,l9_219,l9_220);
float l9_224=step(abs(l9_218-l9_223),9.9999997e-06);
l9_222*=(l9_224+((1.0-float(l9_221))*(1.0-l9_224)));
l9_218=l9_223;
l9_186.y=l9_218;
l9_196=l9_222;
}
float2 l9_225=l9_186;
bool l9_226=l9_187;
float3x3 l9_227=l9_188;
if (l9_226)
{
l9_225=float2((l9_227*float3(l9_225,1.0)).xy);
}
float2 l9_228=l9_225;
l9_186=l9_228;
float l9_229=l9_186.x;
int l9_230=l9_189.x;
bool l9_231=l9_195;
float l9_232=l9_196;
if ((l9_230==0)||(l9_230==3))
{
float l9_233=l9_229;
float l9_234=0.0;
float l9_235=1.0;
bool l9_236=l9_231;
float l9_237=l9_232;
float l9_238=fast::clamp(l9_233,l9_234,l9_235);
float l9_239=step(abs(l9_233-l9_238),9.9999997e-06);
l9_237*=(l9_239+((1.0-float(l9_236))*(1.0-l9_239)));
l9_233=l9_238;
l9_229=l9_233;
l9_232=l9_237;
}
l9_186.x=l9_229;
l9_196=l9_232;
float l9_240=l9_186.y;
int l9_241=l9_189.y;
bool l9_242=l9_195;
float l9_243=l9_196;
if ((l9_241==0)||(l9_241==3))
{
float l9_244=l9_240;
float l9_245=0.0;
float l9_246=1.0;
bool l9_247=l9_242;
float l9_248=l9_243;
float l9_249=fast::clamp(l9_244,l9_245,l9_246);
float l9_250=step(abs(l9_244-l9_249),9.9999997e-06);
l9_248*=(l9_250+((1.0-float(l9_247))*(1.0-l9_250)));
l9_244=l9_249;
l9_240=l9_244;
l9_243=l9_248;
}
l9_186.y=l9_240;
l9_196=l9_243;
float2 l9_251=l9_186;
int l9_252=l9_184;
int l9_253=l9_185;
float l9_254=l9_194;
float2 l9_255=l9_251;
int l9_256=l9_252;
int l9_257=l9_253;
float3 l9_258=float3(0.0);
if (l9_256==0)
{
l9_258=float3(l9_255,0.0);
}
else
{
if (l9_256==1)
{
l9_258=float3(l9_255.x,(l9_255.y*0.5)+(0.5-(float(l9_257)*0.5)),0.0);
}
else
{
l9_258=float3(l9_255,float(l9_257));
}
}
float3 l9_259=l9_258;
float3 l9_260=l9_259;
float4 l9_261=sc_set0.fluidPressure.sample(sc_set0.fluidPressureSmpSC,l9_260.xy,bias(l9_254));
float4 l9_262=l9_261;
if (l9_192)
{
l9_262=mix(l9_193,l9_262,float4(l9_196));
}
float4 l9_263=l9_262;
l9_177=l9_263;
float4 l9_264=l9_177;
float2 l9_265=l9_264.xy;
float l9_266=N123_pressureRange.x;
float l9_267=N123_pressureRange.y;
float l9_268=0.0;
float2 l9_269=l9_265;
float l9_270=l9_266;
float l9_271=l9_267;
float l9_272=0.99998999;
float2 l9_273=l9_269;
#if (1)
{
l9_273=floor((l9_273*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_274=dot(l9_273,float2(1.0,0.0039215689));
float l9_275=l9_274;
float l9_276=0.0;
float l9_277=l9_272;
float l9_278=l9_270;
float l9_279=l9_271;
float l9_280=l9_278+(((l9_275-l9_276)*(l9_279-l9_278))/(l9_277-l9_276));
float l9_281=l9_280;
l9_268=l9_281;
float l9_282=l9_268;
float l9_283=l9_282;
float l9_284=l9_283*N123_FluidMul;
l9_175=l9_173+l9_284;
float l9_285=(0.0+(((fast::clamp(l9_284,N123_unpackVal.x,N123_unpackVal.y)-N123_unpackVal.x)*1.0)/((N123_unpackVal.y-N123_unpackVal.x)+1e-06)))*0.60000002;
tempGlobals.N123_TatalHeightRemap+=l9_285;
}
float2 l9_286=l9_61;
float4 l9_287=float4(0.0);
int l9_288;
if ((int(oceanNormalHasSwappedViews_tmp)!=0))
{
int l9_289=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_289=0;
}
else
{
l9_289=in.varStereoViewID;
}
int l9_290=l9_289;
l9_288=1-l9_290;
}
else
{
int l9_291=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_291=0;
}
else
{
l9_291=in.varStereoViewID;
}
int l9_292=l9_291;
l9_288=l9_292;
}
int l9_293=l9_288;
int l9_294=oceanNormalLayout_tmp;
int l9_295=l9_293;
float2 l9_296=l9_286;
bool l9_297=(int(SC_USE_UV_TRANSFORM_oceanNormal_tmp)!=0);
float3x3 l9_298=(*sc_set0.UserUniforms).oceanNormalTransform;
int2 l9_299=int2(SC_SOFTWARE_WRAP_MODE_U_oceanNormal_tmp,SC_SOFTWARE_WRAP_MODE_V_oceanNormal_tmp);
bool l9_300=(int(SC_USE_UV_MIN_MAX_oceanNormal_tmp)!=0);
float4 l9_301=(*sc_set0.UserUniforms).oceanNormalUvMinMax;
bool l9_302=(int(SC_USE_CLAMP_TO_BORDER_oceanNormal_tmp)!=0);
float4 l9_303=(*sc_set0.UserUniforms).oceanNormalBorderColor;
float l9_304=0.0;
bool l9_305=l9_302&&(!l9_300);
float l9_306=1.0;
float l9_307=l9_296.x;
int l9_308=l9_299.x;
if (l9_308==1)
{
l9_307=fract(l9_307);
}
else
{
if (l9_308==2)
{
float l9_309=fract(l9_307);
float l9_310=l9_307-l9_309;
float l9_311=step(0.25,fract(l9_310*0.5));
l9_307=mix(l9_309,1.0-l9_309,fast::clamp(l9_311,0.0,1.0));
}
}
l9_296.x=l9_307;
float l9_312=l9_296.y;
int l9_313=l9_299.y;
if (l9_313==1)
{
l9_312=fract(l9_312);
}
else
{
if (l9_313==2)
{
float l9_314=fract(l9_312);
float l9_315=l9_312-l9_314;
float l9_316=step(0.25,fract(l9_315*0.5));
l9_312=mix(l9_314,1.0-l9_314,fast::clamp(l9_316,0.0,1.0));
}
}
l9_296.y=l9_312;
if (l9_300)
{
bool l9_317=l9_302;
bool l9_318;
if (l9_317)
{
l9_318=l9_299.x==3;
}
else
{
l9_318=l9_317;
}
float l9_319=l9_296.x;
float l9_320=l9_301.x;
float l9_321=l9_301.z;
bool l9_322=l9_318;
float l9_323=l9_306;
float l9_324=fast::clamp(l9_319,l9_320,l9_321);
float l9_325=step(abs(l9_319-l9_324),9.9999997e-06);
l9_323*=(l9_325+((1.0-float(l9_322))*(1.0-l9_325)));
l9_319=l9_324;
l9_296.x=l9_319;
l9_306=l9_323;
bool l9_326=l9_302;
bool l9_327;
if (l9_326)
{
l9_327=l9_299.y==3;
}
else
{
l9_327=l9_326;
}
float l9_328=l9_296.y;
float l9_329=l9_301.y;
float l9_330=l9_301.w;
bool l9_331=l9_327;
float l9_332=l9_306;
float l9_333=fast::clamp(l9_328,l9_329,l9_330);
float l9_334=step(abs(l9_328-l9_333),9.9999997e-06);
l9_332*=(l9_334+((1.0-float(l9_331))*(1.0-l9_334)));
l9_328=l9_333;
l9_296.y=l9_328;
l9_306=l9_332;
}
float2 l9_335=l9_296;
bool l9_336=l9_297;
float3x3 l9_337=l9_298;
if (l9_336)
{
l9_335=float2((l9_337*float3(l9_335,1.0)).xy);
}
float2 l9_338=l9_335;
l9_296=l9_338;
float l9_339=l9_296.x;
int l9_340=l9_299.x;
bool l9_341=l9_305;
float l9_342=l9_306;
if ((l9_340==0)||(l9_340==3))
{
float l9_343=l9_339;
float l9_344=0.0;
float l9_345=1.0;
bool l9_346=l9_341;
float l9_347=l9_342;
float l9_348=fast::clamp(l9_343,l9_344,l9_345);
float l9_349=step(abs(l9_343-l9_348),9.9999997e-06);
l9_347*=(l9_349+((1.0-float(l9_346))*(1.0-l9_349)));
l9_343=l9_348;
l9_339=l9_343;
l9_342=l9_347;
}
l9_296.x=l9_339;
l9_306=l9_342;
float l9_350=l9_296.y;
int l9_351=l9_299.y;
bool l9_352=l9_305;
float l9_353=l9_306;
if ((l9_351==0)||(l9_351==3))
{
float l9_354=l9_350;
float l9_355=0.0;
float l9_356=1.0;
bool l9_357=l9_352;
float l9_358=l9_353;
float l9_359=fast::clamp(l9_354,l9_355,l9_356);
float l9_360=step(abs(l9_354-l9_359),9.9999997e-06);
l9_358*=(l9_360+((1.0-float(l9_357))*(1.0-l9_360)));
l9_354=l9_359;
l9_350=l9_354;
l9_353=l9_358;
}
l9_296.y=l9_350;
l9_306=l9_353;
float2 l9_361=l9_296;
int l9_362=l9_294;
int l9_363=l9_295;
float l9_364=l9_304;
float2 l9_365=l9_361;
int l9_366=l9_362;
int l9_367=l9_363;
float3 l9_368=float3(0.0);
if (l9_366==0)
{
l9_368=float3(l9_365,0.0);
}
else
{
if (l9_366==1)
{
l9_368=float3(l9_365.x,(l9_365.y*0.5)+(0.5-(float(l9_367)*0.5)),0.0);
}
else
{
l9_368=float3(l9_365,float(l9_367));
}
}
float3 l9_369=l9_368;
float3 l9_370=l9_369;
float4 l9_371=sc_set0.oceanNormal.sample(sc_set0.oceanNormalSmpSC,l9_370.xy,bias(l9_364));
float4 l9_372=l9_371;
if (l9_302)
{
l9_372=mix(l9_303,l9_372,float4(l9_306));
}
float4 l9_373=l9_372;
l9_287=l9_373;
float4 l9_374=l9_287;
float3 l9_375=(l9_374.xyz*1.9921875)-float3(1.0);
N123_Normal=l9_375;
N123_SurfacePosition=float3(0.0,l9_175,0.0)+l9_60;
tempGlobals.N123_fbm=1.0;
if (N123_EnableFoam==1.0)
{
float l9_376=tempGlobals.gTimeElapsed;
float2 l9_377=N123_SurfacePosition.zx*N123_FBMScale;
float l9_378=l9_376*N123_OceanSpeed;
float l9_379=0.0;
float2 l9_380=l9_377+float2(l9_378);
float2 l9_381=floor(l9_380);
float2 l9_382=fract(l9_380);
l9_382=(l9_382*l9_382)*(float2(3.0)-(l9_382*2.0));
float2 l9_383=l9_381;
float l9_384=fract(sin(dot(l9_383,float2(12.9898,4.1413999)))*43758.547);
float2 l9_385=l9_381+float2(1.0,0.0);
float l9_386=fract(sin(dot(l9_385,float2(12.9898,4.1413999)))*43758.547);
float2 l9_387=l9_381+float2(0.0,1.0);
float l9_388=fract(sin(dot(l9_387,float2(12.9898,4.1413999)))*43758.547);
float2 l9_389=l9_381+float2(1.0);
float l9_390=fract(sin(dot(l9_389,float2(12.9898,4.1413999)))*43758.547);
float l9_391=mix(mix(l9_384,l9_386,l9_382.x),mix(l9_388,l9_390,l9_382.x),l9_382.y);
float l9_392=l9_391*l9_391;
l9_379+=(0.5*l9_392);
l9_377=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_377)*2.02;
float2 l9_393=l9_377;
float2 l9_394=floor(l9_393);
float2 l9_395=fract(l9_393);
l9_395=(l9_395*l9_395)*(float2(3.0)-(l9_395*2.0));
float2 l9_396=l9_394;
float l9_397=fract(sin(dot(l9_396,float2(12.9898,4.1413999)))*43758.547);
float2 l9_398=l9_394+float2(1.0,0.0);
float l9_399=fract(sin(dot(l9_398,float2(12.9898,4.1413999)))*43758.547);
float2 l9_400=l9_394+float2(0.0,1.0);
float l9_401=fract(sin(dot(l9_400,float2(12.9898,4.1413999)))*43758.547);
float2 l9_402=l9_394+float2(1.0);
float l9_403=fract(sin(dot(l9_402,float2(12.9898,4.1413999)))*43758.547);
float l9_404=mix(mix(l9_397,l9_399,l9_395.x),mix(l9_401,l9_403,l9_395.x),l9_395.y);
float l9_405=l9_404*l9_404;
l9_379+=(0.03125*l9_405);
l9_377=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_377)*2.01;
float2 l9_406=l9_377;
float2 l9_407=floor(l9_406);
float2 l9_408=fract(l9_406);
l9_408=(l9_408*l9_408)*(float2(3.0)-(l9_408*2.0));
float2 l9_409=l9_407;
float l9_410=fract(sin(dot(l9_409,float2(12.9898,4.1413999)))*43758.547);
float2 l9_411=l9_407+float2(1.0,0.0);
float l9_412=fract(sin(dot(l9_411,float2(12.9898,4.1413999)))*43758.547);
float2 l9_413=l9_407+float2(0.0,1.0);
float l9_414=fract(sin(dot(l9_413,float2(12.9898,4.1413999)))*43758.547);
float2 l9_415=l9_407+float2(1.0);
float l9_416=fract(sin(dot(l9_415,float2(12.9898,4.1413999)))*43758.547);
float l9_417=mix(mix(l9_410,l9_412,l9_408.x),mix(l9_414,l9_416,l9_408.x),l9_408.y);
float l9_418=l9_417*l9_417;
l9_379+=(0.25*l9_418);
l9_377=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_377)*2.03;
float2 l9_419=l9_377;
float2 l9_420=floor(l9_419);
float2 l9_421=fract(l9_419);
l9_421=(l9_421*l9_421)*(float2(3.0)-(l9_421*2.0));
float2 l9_422=l9_420;
float l9_423=fract(sin(dot(l9_422,float2(12.9898,4.1413999)))*43758.547);
float2 l9_424=l9_420+float2(1.0,0.0);
float l9_425=fract(sin(dot(l9_424,float2(12.9898,4.1413999)))*43758.547);
float2 l9_426=l9_420+float2(0.0,1.0);
float l9_427=fract(sin(dot(l9_426,float2(12.9898,4.1413999)))*43758.547);
float2 l9_428=l9_420+float2(1.0);
float l9_429=fract(sin(dot(l9_428,float2(12.9898,4.1413999)))*43758.547);
float l9_430=mix(mix(l9_423,l9_425,l9_421.x),mix(l9_427,l9_429,l9_421.x),l9_421.y);
float l9_431=l9_430*l9_430;
l9_379+=(0.125*l9_431);
l9_377=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_377)*2.01;
float2 l9_432=l9_377;
float2 l9_433=floor(l9_432);
float2 l9_434=fract(l9_432);
l9_434=(l9_434*l9_434)*(float2(3.0)-(l9_434*2.0));
float2 l9_435=l9_433;
float l9_436=fract(sin(dot(l9_435,float2(12.9898,4.1413999)))*43758.547);
float2 l9_437=l9_433+float2(1.0,0.0);
float l9_438=fract(sin(dot(l9_437,float2(12.9898,4.1413999)))*43758.547);
float2 l9_439=l9_433+float2(0.0,1.0);
float l9_440=fract(sin(dot(l9_439,float2(12.9898,4.1413999)))*43758.547);
float2 l9_441=l9_433+float2(1.0);
float l9_442=fract(sin(dot(l9_441,float2(12.9898,4.1413999)))*43758.547);
float l9_443=mix(mix(l9_436,l9_438,l9_434.x),mix(l9_440,l9_442,l9_434.x),l9_434.y);
float l9_444=l9_443*l9_443;
l9_379+=(0.0625*l9_444);
l9_377=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_377)*2.04;
float2 l9_445=l9_377+float2(sin(l9_378));
float2 l9_446=floor(l9_445);
float2 l9_447=fract(l9_445);
l9_447=(l9_447*l9_447)*(float2(3.0)-(l9_447*2.0));
float2 l9_448=l9_446;
float l9_449=fract(sin(dot(l9_448,float2(12.9898,4.1413999)))*43758.547);
float2 l9_450=l9_446+float2(1.0,0.0);
float l9_451=fract(sin(dot(l9_450,float2(12.9898,4.1413999)))*43758.547);
float2 l9_452=l9_446+float2(0.0,1.0);
float l9_453=fract(sin(dot(l9_452,float2(12.9898,4.1413999)))*43758.547);
float2 l9_454=l9_446+float2(1.0);
float l9_455=fract(sin(dot(l9_454,float2(12.9898,4.1413999)))*43758.547);
float l9_456=mix(mix(l9_449,l9_451,l9_447.x),mix(l9_453,l9_455,l9_447.x),l9_447.y);
float l9_457=l9_456*l9_456;
l9_379+=(0.015625*l9_457);
float l9_458=l9_379/0.96875;
tempGlobals.N123_fbm=1.0-l9_458;
}
}
else
{
ssGlobals l9_459=param_1;
tempGlobals=l9_459;
float3 l9_460=float3(0.0);
float3 l9_461=float3(0.0);
float3 l9_462=(*sc_set0.UserUniforms).oceanMin;
l9_461=l9_462;
l9_460=l9_461;
float3 l9_463=l9_460;
N123_OceanAabbMin=l9_463;
float3 l9_464=float3(0.0);
float3 l9_465=float3(0.0);
float3 l9_466=(*sc_set0.UserUniforms).oceanMax;
l9_465=l9_466;
l9_464=l9_465;
float3 l9_467=l9_464;
N123_OceanAabbMax=l9_467;
float l9_468=0.0;
float l9_469=0.0;
float l9_470=(*sc_set0.UserUniforms).speed;
l9_469=l9_470;
l9_468=l9_469;
float l9_471=l9_468;
N123_OceanSpeed=l9_471;
float l9_472=0.0;
float l9_473=0.0;
float l9_474=(*sc_set0.UserUniforms).enableFoam;
l9_473=l9_474;
l9_472=l9_473;
float l9_475=l9_472;
N123_EnableFoam=l9_475;
float l9_476=0.0;
float l9_477=0.0;
float l9_478=(*sc_set0.UserUniforms).fbmScale;
l9_477=l9_478;
l9_476=l9_477;
float l9_479=l9_476;
N123_FBMScale=l9_479;
float l9_480=0.0;
float l9_481=0.0;
float l9_482=(*sc_set0.UserUniforms).enableInfinite;
l9_481=l9_482;
l9_480=l9_481;
float l9_483=l9_480;
N123_EnableInfinite=l9_483;
float l9_484=0.0;
float l9_485=0.0;
float l9_486=(*sc_set0.UserUniforms).enableFluid;
l9_485=l9_486;
l9_484=l9_485;
float l9_487=l9_484;
N123_EnableFluid=l9_487;
float2 l9_488=float2(0.0);
float2 l9_489=float2(0.0);
float2 l9_490=(*sc_set0.UserUniforms).pressureRange;
l9_489=l9_490;
l9_488=l9_489;
float2 l9_491=l9_488;
N123_pressureRange=l9_491;
float l9_492=0.0;
float l9_493=0.0;
float l9_494=(*sc_set0.UserUniforms).fluidMul;
l9_493=l9_494;
l9_492=l9_493;
float l9_495=l9_492;
N123_FluidMul=l9_495;
float2 l9_496=float2(0.0);
float2 l9_497=float2(0.0);
float2 l9_498=(*sc_set0.UserUniforms).unpackVal;
l9_497=l9_498;
l9_496=l9_497;
float2 l9_499=l9_496;
N123_unpackVal=l9_499;
float2 l9_500=tempGlobals.Surface_UVCoord0;
float2 l9_501=l9_500;
float3 l9_502=tempGlobals.SurfacePosition_WorldSpace;
float3 l9_503=l9_502;
float2 l9_504=l9_501;
if (N123_EnableInfinite==1.0)
{
float2 l9_505=float2(N123_OceanAabbMin.x,N123_OceanAabbMin.z);
float2 l9_506=float2(N123_OceanAabbMax.x,N123_OceanAabbMax.z);
float3 l9_507=(*sc_set0.UserUniforms).sc_Camera.position;
float2 l9_508=float2(0.0)+(((l9_507.xz-l9_505)*1.0)/((l9_506-l9_505)+float2(1e-06)));
l9_508.y=1.0-l9_508.y;
l9_504=(l9_501+l9_508)-float2(0.5);
}
float2 l9_509=l9_504;
float4 l9_510=float4(0.0);
int l9_511;
if ((int(oceanHeightmapHasSwappedViews_tmp)!=0))
{
int l9_512=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_512=0;
}
else
{
l9_512=in.varStereoViewID;
}
int l9_513=l9_512;
l9_511=1-l9_513;
}
else
{
int l9_514=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_514=0;
}
else
{
l9_514=in.varStereoViewID;
}
int l9_515=l9_514;
l9_511=l9_515;
}
int l9_516=l9_511;
int l9_517=oceanHeightmapLayout_tmp;
int l9_518=l9_516;
float2 l9_519=l9_509;
bool l9_520=(int(SC_USE_UV_TRANSFORM_oceanHeightmap_tmp)!=0);
float3x3 l9_521=(*sc_set0.UserUniforms).oceanHeightmapTransform;
int2 l9_522=int2(SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap_tmp,SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap_tmp);
bool l9_523=(int(SC_USE_UV_MIN_MAX_oceanHeightmap_tmp)!=0);
float4 l9_524=(*sc_set0.UserUniforms).oceanHeightmapUvMinMax;
bool l9_525=(int(SC_USE_CLAMP_TO_BORDER_oceanHeightmap_tmp)!=0);
float4 l9_526=(*sc_set0.UserUniforms).oceanHeightmapBorderColor;
float l9_527=0.0;
bool l9_528=l9_525&&(!l9_523);
float l9_529=1.0;
float l9_530=l9_519.x;
int l9_531=l9_522.x;
if (l9_531==1)
{
l9_530=fract(l9_530);
}
else
{
if (l9_531==2)
{
float l9_532=fract(l9_530);
float l9_533=l9_530-l9_532;
float l9_534=step(0.25,fract(l9_533*0.5));
l9_530=mix(l9_532,1.0-l9_532,fast::clamp(l9_534,0.0,1.0));
}
}
l9_519.x=l9_530;
float l9_535=l9_519.y;
int l9_536=l9_522.y;
if (l9_536==1)
{
l9_535=fract(l9_535);
}
else
{
if (l9_536==2)
{
float l9_537=fract(l9_535);
float l9_538=l9_535-l9_537;
float l9_539=step(0.25,fract(l9_538*0.5));
l9_535=mix(l9_537,1.0-l9_537,fast::clamp(l9_539,0.0,1.0));
}
}
l9_519.y=l9_535;
if (l9_523)
{
bool l9_540=l9_525;
bool l9_541;
if (l9_540)
{
l9_541=l9_522.x==3;
}
else
{
l9_541=l9_540;
}
float l9_542=l9_519.x;
float l9_543=l9_524.x;
float l9_544=l9_524.z;
bool l9_545=l9_541;
float l9_546=l9_529;
float l9_547=fast::clamp(l9_542,l9_543,l9_544);
float l9_548=step(abs(l9_542-l9_547),9.9999997e-06);
l9_546*=(l9_548+((1.0-float(l9_545))*(1.0-l9_548)));
l9_542=l9_547;
l9_519.x=l9_542;
l9_529=l9_546;
bool l9_549=l9_525;
bool l9_550;
if (l9_549)
{
l9_550=l9_522.y==3;
}
else
{
l9_550=l9_549;
}
float l9_551=l9_519.y;
float l9_552=l9_524.y;
float l9_553=l9_524.w;
bool l9_554=l9_550;
float l9_555=l9_529;
float l9_556=fast::clamp(l9_551,l9_552,l9_553);
float l9_557=step(abs(l9_551-l9_556),9.9999997e-06);
l9_555*=(l9_557+((1.0-float(l9_554))*(1.0-l9_557)));
l9_551=l9_556;
l9_519.y=l9_551;
l9_529=l9_555;
}
float2 l9_558=l9_519;
bool l9_559=l9_520;
float3x3 l9_560=l9_521;
if (l9_559)
{
l9_558=float2((l9_560*float3(l9_558,1.0)).xy);
}
float2 l9_561=l9_558;
l9_519=l9_561;
float l9_562=l9_519.x;
int l9_563=l9_522.x;
bool l9_564=l9_528;
float l9_565=l9_529;
if ((l9_563==0)||(l9_563==3))
{
float l9_566=l9_562;
float l9_567=0.0;
float l9_568=1.0;
bool l9_569=l9_564;
float l9_570=l9_565;
float l9_571=fast::clamp(l9_566,l9_567,l9_568);
float l9_572=step(abs(l9_566-l9_571),9.9999997e-06);
l9_570*=(l9_572+((1.0-float(l9_569))*(1.0-l9_572)));
l9_566=l9_571;
l9_562=l9_566;
l9_565=l9_570;
}
l9_519.x=l9_562;
l9_529=l9_565;
float l9_573=l9_519.y;
int l9_574=l9_522.y;
bool l9_575=l9_528;
float l9_576=l9_529;
if ((l9_574==0)||(l9_574==3))
{
float l9_577=l9_573;
float l9_578=0.0;
float l9_579=1.0;
bool l9_580=l9_575;
float l9_581=l9_576;
float l9_582=fast::clamp(l9_577,l9_578,l9_579);
float l9_583=step(abs(l9_577-l9_582),9.9999997e-06);
l9_581*=(l9_583+((1.0-float(l9_580))*(1.0-l9_583)));
l9_577=l9_582;
l9_573=l9_577;
l9_576=l9_581;
}
l9_519.y=l9_573;
l9_529=l9_576;
float2 l9_584=l9_519;
int l9_585=l9_517;
int l9_586=l9_518;
float l9_587=l9_527;
float2 l9_588=l9_584;
int l9_589=l9_585;
int l9_590=l9_586;
float3 l9_591=float3(0.0);
if (l9_589==0)
{
l9_591=float3(l9_588,0.0);
}
else
{
if (l9_589==1)
{
l9_591=float3(l9_588.x,(l9_588.y*0.5)+(0.5-(float(l9_590)*0.5)),0.0);
}
else
{
l9_591=float3(l9_588,float(l9_590));
}
}
float3 l9_592=l9_591;
float3 l9_593=l9_592;
float4 l9_594=sc_set0.oceanHeightmap.sample(sc_set0.oceanHeightmapSmpSC,l9_593.xy,bias(l9_587));
float4 l9_595=l9_594;
if (l9_525)
{
l9_595=mix(l9_526,l9_595,float4(l9_529));
}
float4 l9_596=l9_595;
l9_510=l9_596;
float4 l9_597=l9_510;
float2 l9_598=l9_597.xy;
float l9_599=N123_unpackVal.x;
float l9_600=N123_unpackVal.y;
float l9_601=0.0;
float2 l9_602=l9_598;
float l9_603=l9_599;
float l9_604=l9_600;
float l9_605=0.99998999;
float2 l9_606=l9_602;
#if (1)
{
l9_606=floor((l9_606*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_607=dot(l9_606,float2(1.0,0.0039215689));
float l9_608=l9_607;
float l9_609=0.0;
float l9_610=l9_605;
float l9_611=l9_603;
float l9_612=l9_604;
float l9_613=l9_611+(((l9_608-l9_609)*(l9_612-l9_611))/(l9_610-l9_609));
float l9_614=l9_613;
l9_601=l9_614;
float l9_615=l9_601;
float l9_616=l9_615;
float l9_617=0.0+(((l9_616-N123_unpackVal.x)*1.0)/((N123_unpackVal.y-N123_unpackVal.x)+1e-06));
tempGlobals.N123_TatalHeightRemap=l9_617;
float l9_618=l9_616;
if (N123_EnableFluid==1.0)
{
float2 l9_619=l9_501;
float4 l9_620=float4(0.0);
int l9_621;
if ((int(fluidPressureHasSwappedViews_tmp)!=0))
{
int l9_622=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_622=0;
}
else
{
l9_622=in.varStereoViewID;
}
int l9_623=l9_622;
l9_621=1-l9_623;
}
else
{
int l9_624=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_624=0;
}
else
{
l9_624=in.varStereoViewID;
}
int l9_625=l9_624;
l9_621=l9_625;
}
int l9_626=l9_621;
int l9_627=fluidPressureLayout_tmp;
int l9_628=l9_626;
float2 l9_629=l9_619;
bool l9_630=(int(SC_USE_UV_TRANSFORM_fluidPressure_tmp)!=0);
float3x3 l9_631=(*sc_set0.UserUniforms).fluidPressureTransform;
int2 l9_632=int2(SC_SOFTWARE_WRAP_MODE_U_fluidPressure_tmp,SC_SOFTWARE_WRAP_MODE_V_fluidPressure_tmp);
bool l9_633=(int(SC_USE_UV_MIN_MAX_fluidPressure_tmp)!=0);
float4 l9_634=(*sc_set0.UserUniforms).fluidPressureUvMinMax;
bool l9_635=(int(SC_USE_CLAMP_TO_BORDER_fluidPressure_tmp)!=0);
float4 l9_636=(*sc_set0.UserUniforms).fluidPressureBorderColor;
float l9_637=0.0;
bool l9_638=l9_635&&(!l9_633);
float l9_639=1.0;
float l9_640=l9_629.x;
int l9_641=l9_632.x;
if (l9_641==1)
{
l9_640=fract(l9_640);
}
else
{
if (l9_641==2)
{
float l9_642=fract(l9_640);
float l9_643=l9_640-l9_642;
float l9_644=step(0.25,fract(l9_643*0.5));
l9_640=mix(l9_642,1.0-l9_642,fast::clamp(l9_644,0.0,1.0));
}
}
l9_629.x=l9_640;
float l9_645=l9_629.y;
int l9_646=l9_632.y;
if (l9_646==1)
{
l9_645=fract(l9_645);
}
else
{
if (l9_646==2)
{
float l9_647=fract(l9_645);
float l9_648=l9_645-l9_647;
float l9_649=step(0.25,fract(l9_648*0.5));
l9_645=mix(l9_647,1.0-l9_647,fast::clamp(l9_649,0.0,1.0));
}
}
l9_629.y=l9_645;
if (l9_633)
{
bool l9_650=l9_635;
bool l9_651;
if (l9_650)
{
l9_651=l9_632.x==3;
}
else
{
l9_651=l9_650;
}
float l9_652=l9_629.x;
float l9_653=l9_634.x;
float l9_654=l9_634.z;
bool l9_655=l9_651;
float l9_656=l9_639;
float l9_657=fast::clamp(l9_652,l9_653,l9_654);
float l9_658=step(abs(l9_652-l9_657),9.9999997e-06);
l9_656*=(l9_658+((1.0-float(l9_655))*(1.0-l9_658)));
l9_652=l9_657;
l9_629.x=l9_652;
l9_639=l9_656;
bool l9_659=l9_635;
bool l9_660;
if (l9_659)
{
l9_660=l9_632.y==3;
}
else
{
l9_660=l9_659;
}
float l9_661=l9_629.y;
float l9_662=l9_634.y;
float l9_663=l9_634.w;
bool l9_664=l9_660;
float l9_665=l9_639;
float l9_666=fast::clamp(l9_661,l9_662,l9_663);
float l9_667=step(abs(l9_661-l9_666),9.9999997e-06);
l9_665*=(l9_667+((1.0-float(l9_664))*(1.0-l9_667)));
l9_661=l9_666;
l9_629.y=l9_661;
l9_639=l9_665;
}
float2 l9_668=l9_629;
bool l9_669=l9_630;
float3x3 l9_670=l9_631;
if (l9_669)
{
l9_668=float2((l9_670*float3(l9_668,1.0)).xy);
}
float2 l9_671=l9_668;
l9_629=l9_671;
float l9_672=l9_629.x;
int l9_673=l9_632.x;
bool l9_674=l9_638;
float l9_675=l9_639;
if ((l9_673==0)||(l9_673==3))
{
float l9_676=l9_672;
float l9_677=0.0;
float l9_678=1.0;
bool l9_679=l9_674;
float l9_680=l9_675;
float l9_681=fast::clamp(l9_676,l9_677,l9_678);
float l9_682=step(abs(l9_676-l9_681),9.9999997e-06);
l9_680*=(l9_682+((1.0-float(l9_679))*(1.0-l9_682)));
l9_676=l9_681;
l9_672=l9_676;
l9_675=l9_680;
}
l9_629.x=l9_672;
l9_639=l9_675;
float l9_683=l9_629.y;
int l9_684=l9_632.y;
bool l9_685=l9_638;
float l9_686=l9_639;
if ((l9_684==0)||(l9_684==3))
{
float l9_687=l9_683;
float l9_688=0.0;
float l9_689=1.0;
bool l9_690=l9_685;
float l9_691=l9_686;
float l9_692=fast::clamp(l9_687,l9_688,l9_689);
float l9_693=step(abs(l9_687-l9_692),9.9999997e-06);
l9_691*=(l9_693+((1.0-float(l9_690))*(1.0-l9_693)));
l9_687=l9_692;
l9_683=l9_687;
l9_686=l9_691;
}
l9_629.y=l9_683;
l9_639=l9_686;
float2 l9_694=l9_629;
int l9_695=l9_627;
int l9_696=l9_628;
float l9_697=l9_637;
float2 l9_698=l9_694;
int l9_699=l9_695;
int l9_700=l9_696;
float3 l9_701=float3(0.0);
if (l9_699==0)
{
l9_701=float3(l9_698,0.0);
}
else
{
if (l9_699==1)
{
l9_701=float3(l9_698.x,(l9_698.y*0.5)+(0.5-(float(l9_700)*0.5)),0.0);
}
else
{
l9_701=float3(l9_698,float(l9_700));
}
}
float3 l9_702=l9_701;
float3 l9_703=l9_702;
float4 l9_704=sc_set0.fluidPressure.sample(sc_set0.fluidPressureSmpSC,l9_703.xy,bias(l9_697));
float4 l9_705=l9_704;
if (l9_635)
{
l9_705=mix(l9_636,l9_705,float4(l9_639));
}
float4 l9_706=l9_705;
l9_620=l9_706;
float4 l9_707=l9_620;
float2 l9_708=l9_707.xy;
float l9_709=N123_pressureRange.x;
float l9_710=N123_pressureRange.y;
float l9_711=0.0;
float2 l9_712=l9_708;
float l9_713=l9_709;
float l9_714=l9_710;
float l9_715=0.99998999;
float2 l9_716=l9_712;
#if (1)
{
l9_716=floor((l9_716*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_717=dot(l9_716,float2(1.0,0.0039215689));
float l9_718=l9_717;
float l9_719=0.0;
float l9_720=l9_715;
float l9_721=l9_713;
float l9_722=l9_714;
float l9_723=l9_721+(((l9_718-l9_719)*(l9_722-l9_721))/(l9_720-l9_719));
float l9_724=l9_723;
l9_711=l9_724;
float l9_725=l9_711;
float l9_726=l9_725;
float l9_727=l9_726*N123_FluidMul;
l9_618=l9_616+l9_727;
float l9_728=(0.0+(((fast::clamp(l9_727,N123_unpackVal.x,N123_unpackVal.y)-N123_unpackVal.x)*1.0)/((N123_unpackVal.y-N123_unpackVal.x)+1e-06)))*0.60000002;
tempGlobals.N123_TatalHeightRemap+=l9_728;
}
float2 l9_729=l9_504;
float4 l9_730=float4(0.0);
int l9_731;
if ((int(oceanNormalHasSwappedViews_tmp)!=0))
{
int l9_732=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_732=0;
}
else
{
l9_732=in.varStereoViewID;
}
int l9_733=l9_732;
l9_731=1-l9_733;
}
else
{
int l9_734=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_734=0;
}
else
{
l9_734=in.varStereoViewID;
}
int l9_735=l9_734;
l9_731=l9_735;
}
int l9_736=l9_731;
int l9_737=oceanNormalLayout_tmp;
int l9_738=l9_736;
float2 l9_739=l9_729;
bool l9_740=(int(SC_USE_UV_TRANSFORM_oceanNormal_tmp)!=0);
float3x3 l9_741=(*sc_set0.UserUniforms).oceanNormalTransform;
int2 l9_742=int2(SC_SOFTWARE_WRAP_MODE_U_oceanNormal_tmp,SC_SOFTWARE_WRAP_MODE_V_oceanNormal_tmp);
bool l9_743=(int(SC_USE_UV_MIN_MAX_oceanNormal_tmp)!=0);
float4 l9_744=(*sc_set0.UserUniforms).oceanNormalUvMinMax;
bool l9_745=(int(SC_USE_CLAMP_TO_BORDER_oceanNormal_tmp)!=0);
float4 l9_746=(*sc_set0.UserUniforms).oceanNormalBorderColor;
float l9_747=0.0;
bool l9_748=l9_745&&(!l9_743);
float l9_749=1.0;
float l9_750=l9_739.x;
int l9_751=l9_742.x;
if (l9_751==1)
{
l9_750=fract(l9_750);
}
else
{
if (l9_751==2)
{
float l9_752=fract(l9_750);
float l9_753=l9_750-l9_752;
float l9_754=step(0.25,fract(l9_753*0.5));
l9_750=mix(l9_752,1.0-l9_752,fast::clamp(l9_754,0.0,1.0));
}
}
l9_739.x=l9_750;
float l9_755=l9_739.y;
int l9_756=l9_742.y;
if (l9_756==1)
{
l9_755=fract(l9_755);
}
else
{
if (l9_756==2)
{
float l9_757=fract(l9_755);
float l9_758=l9_755-l9_757;
float l9_759=step(0.25,fract(l9_758*0.5));
l9_755=mix(l9_757,1.0-l9_757,fast::clamp(l9_759,0.0,1.0));
}
}
l9_739.y=l9_755;
if (l9_743)
{
bool l9_760=l9_745;
bool l9_761;
if (l9_760)
{
l9_761=l9_742.x==3;
}
else
{
l9_761=l9_760;
}
float l9_762=l9_739.x;
float l9_763=l9_744.x;
float l9_764=l9_744.z;
bool l9_765=l9_761;
float l9_766=l9_749;
float l9_767=fast::clamp(l9_762,l9_763,l9_764);
float l9_768=step(abs(l9_762-l9_767),9.9999997e-06);
l9_766*=(l9_768+((1.0-float(l9_765))*(1.0-l9_768)));
l9_762=l9_767;
l9_739.x=l9_762;
l9_749=l9_766;
bool l9_769=l9_745;
bool l9_770;
if (l9_769)
{
l9_770=l9_742.y==3;
}
else
{
l9_770=l9_769;
}
float l9_771=l9_739.y;
float l9_772=l9_744.y;
float l9_773=l9_744.w;
bool l9_774=l9_770;
float l9_775=l9_749;
float l9_776=fast::clamp(l9_771,l9_772,l9_773);
float l9_777=step(abs(l9_771-l9_776),9.9999997e-06);
l9_775*=(l9_777+((1.0-float(l9_774))*(1.0-l9_777)));
l9_771=l9_776;
l9_739.y=l9_771;
l9_749=l9_775;
}
float2 l9_778=l9_739;
bool l9_779=l9_740;
float3x3 l9_780=l9_741;
if (l9_779)
{
l9_778=float2((l9_780*float3(l9_778,1.0)).xy);
}
float2 l9_781=l9_778;
l9_739=l9_781;
float l9_782=l9_739.x;
int l9_783=l9_742.x;
bool l9_784=l9_748;
float l9_785=l9_749;
if ((l9_783==0)||(l9_783==3))
{
float l9_786=l9_782;
float l9_787=0.0;
float l9_788=1.0;
bool l9_789=l9_784;
float l9_790=l9_785;
float l9_791=fast::clamp(l9_786,l9_787,l9_788);
float l9_792=step(abs(l9_786-l9_791),9.9999997e-06);
l9_790*=(l9_792+((1.0-float(l9_789))*(1.0-l9_792)));
l9_786=l9_791;
l9_782=l9_786;
l9_785=l9_790;
}
l9_739.x=l9_782;
l9_749=l9_785;
float l9_793=l9_739.y;
int l9_794=l9_742.y;
bool l9_795=l9_748;
float l9_796=l9_749;
if ((l9_794==0)||(l9_794==3))
{
float l9_797=l9_793;
float l9_798=0.0;
float l9_799=1.0;
bool l9_800=l9_795;
float l9_801=l9_796;
float l9_802=fast::clamp(l9_797,l9_798,l9_799);
float l9_803=step(abs(l9_797-l9_802),9.9999997e-06);
l9_801*=(l9_803+((1.0-float(l9_800))*(1.0-l9_803)));
l9_797=l9_802;
l9_793=l9_797;
l9_796=l9_801;
}
l9_739.y=l9_793;
l9_749=l9_796;
float2 l9_804=l9_739;
int l9_805=l9_737;
int l9_806=l9_738;
float l9_807=l9_747;
float2 l9_808=l9_804;
int l9_809=l9_805;
int l9_810=l9_806;
float3 l9_811=float3(0.0);
if (l9_809==0)
{
l9_811=float3(l9_808,0.0);
}
else
{
if (l9_809==1)
{
l9_811=float3(l9_808.x,(l9_808.y*0.5)+(0.5-(float(l9_810)*0.5)),0.0);
}
else
{
l9_811=float3(l9_808,float(l9_810));
}
}
float3 l9_812=l9_811;
float3 l9_813=l9_812;
float4 l9_814=sc_set0.oceanNormal.sample(sc_set0.oceanNormalSmpSC,l9_813.xy,bias(l9_807));
float4 l9_815=l9_814;
if (l9_745)
{
l9_815=mix(l9_746,l9_815,float4(l9_749));
}
float4 l9_816=l9_815;
l9_730=l9_816;
float4 l9_817=l9_730;
float3 l9_818=(l9_817.xyz*1.9921875)-float3(1.0);
N123_Normal=l9_818;
N123_SurfacePosition=float3(0.0,l9_618,0.0)+l9_503;
tempGlobals.N123_fbm=1.0;
if (N123_EnableFoam==1.0)
{
float l9_819=tempGlobals.gTimeElapsed;
float2 l9_820=N123_SurfacePosition.zx*N123_FBMScale;
float l9_821=l9_819*N123_OceanSpeed;
float l9_822=0.0;
float2 l9_823=l9_820+float2(l9_821);
float2 l9_824=floor(l9_823);
float2 l9_825=fract(l9_823);
l9_825=(l9_825*l9_825)*(float2(3.0)-(l9_825*2.0));
float2 l9_826=l9_824;
float l9_827=fract(sin(dot(l9_826,float2(12.9898,4.1413999)))*43758.547);
float2 l9_828=l9_824+float2(1.0,0.0);
float l9_829=fract(sin(dot(l9_828,float2(12.9898,4.1413999)))*43758.547);
float2 l9_830=l9_824+float2(0.0,1.0);
float l9_831=fract(sin(dot(l9_830,float2(12.9898,4.1413999)))*43758.547);
float2 l9_832=l9_824+float2(1.0);
float l9_833=fract(sin(dot(l9_832,float2(12.9898,4.1413999)))*43758.547);
float l9_834=mix(mix(l9_827,l9_829,l9_825.x),mix(l9_831,l9_833,l9_825.x),l9_825.y);
float l9_835=l9_834*l9_834;
l9_822+=(0.5*l9_835);
l9_820=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_820)*2.02;
float2 l9_836=l9_820;
float2 l9_837=floor(l9_836);
float2 l9_838=fract(l9_836);
l9_838=(l9_838*l9_838)*(float2(3.0)-(l9_838*2.0));
float2 l9_839=l9_837;
float l9_840=fract(sin(dot(l9_839,float2(12.9898,4.1413999)))*43758.547);
float2 l9_841=l9_837+float2(1.0,0.0);
float l9_842=fract(sin(dot(l9_841,float2(12.9898,4.1413999)))*43758.547);
float2 l9_843=l9_837+float2(0.0,1.0);
float l9_844=fract(sin(dot(l9_843,float2(12.9898,4.1413999)))*43758.547);
float2 l9_845=l9_837+float2(1.0);
float l9_846=fract(sin(dot(l9_845,float2(12.9898,4.1413999)))*43758.547);
float l9_847=mix(mix(l9_840,l9_842,l9_838.x),mix(l9_844,l9_846,l9_838.x),l9_838.y);
float l9_848=l9_847*l9_847;
l9_822+=(0.03125*l9_848);
l9_820=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_820)*2.01;
float2 l9_849=l9_820;
float2 l9_850=floor(l9_849);
float2 l9_851=fract(l9_849);
l9_851=(l9_851*l9_851)*(float2(3.0)-(l9_851*2.0));
float2 l9_852=l9_850;
float l9_853=fract(sin(dot(l9_852,float2(12.9898,4.1413999)))*43758.547);
float2 l9_854=l9_850+float2(1.0,0.0);
float l9_855=fract(sin(dot(l9_854,float2(12.9898,4.1413999)))*43758.547);
float2 l9_856=l9_850+float2(0.0,1.0);
float l9_857=fract(sin(dot(l9_856,float2(12.9898,4.1413999)))*43758.547);
float2 l9_858=l9_850+float2(1.0);
float l9_859=fract(sin(dot(l9_858,float2(12.9898,4.1413999)))*43758.547);
float l9_860=mix(mix(l9_853,l9_855,l9_851.x),mix(l9_857,l9_859,l9_851.x),l9_851.y);
float l9_861=l9_860*l9_860;
l9_822+=(0.25*l9_861);
l9_820=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_820)*2.03;
float2 l9_862=l9_820;
float2 l9_863=floor(l9_862);
float2 l9_864=fract(l9_862);
l9_864=(l9_864*l9_864)*(float2(3.0)-(l9_864*2.0));
float2 l9_865=l9_863;
float l9_866=fract(sin(dot(l9_865,float2(12.9898,4.1413999)))*43758.547);
float2 l9_867=l9_863+float2(1.0,0.0);
float l9_868=fract(sin(dot(l9_867,float2(12.9898,4.1413999)))*43758.547);
float2 l9_869=l9_863+float2(0.0,1.0);
float l9_870=fract(sin(dot(l9_869,float2(12.9898,4.1413999)))*43758.547);
float2 l9_871=l9_863+float2(1.0);
float l9_872=fract(sin(dot(l9_871,float2(12.9898,4.1413999)))*43758.547);
float l9_873=mix(mix(l9_866,l9_868,l9_864.x),mix(l9_870,l9_872,l9_864.x),l9_864.y);
float l9_874=l9_873*l9_873;
l9_822+=(0.125*l9_874);
l9_820=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_820)*2.01;
float2 l9_875=l9_820;
float2 l9_876=floor(l9_875);
float2 l9_877=fract(l9_875);
l9_877=(l9_877*l9_877)*(float2(3.0)-(l9_877*2.0));
float2 l9_878=l9_876;
float l9_879=fract(sin(dot(l9_878,float2(12.9898,4.1413999)))*43758.547);
float2 l9_880=l9_876+float2(1.0,0.0);
float l9_881=fract(sin(dot(l9_880,float2(12.9898,4.1413999)))*43758.547);
float2 l9_882=l9_876+float2(0.0,1.0);
float l9_883=fract(sin(dot(l9_882,float2(12.9898,4.1413999)))*43758.547);
float2 l9_884=l9_876+float2(1.0);
float l9_885=fract(sin(dot(l9_884,float2(12.9898,4.1413999)))*43758.547);
float l9_886=mix(mix(l9_879,l9_881,l9_877.x),mix(l9_883,l9_885,l9_877.x),l9_877.y);
float l9_887=l9_886*l9_886;
l9_822+=(0.0625*l9_887);
l9_820=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_820)*2.04;
float2 l9_888=l9_820+float2(sin(l9_821));
float2 l9_889=floor(l9_888);
float2 l9_890=fract(l9_888);
l9_890=(l9_890*l9_890)*(float2(3.0)-(l9_890*2.0));
float2 l9_891=l9_889;
float l9_892=fract(sin(dot(l9_891,float2(12.9898,4.1413999)))*43758.547);
float2 l9_893=l9_889+float2(1.0,0.0);
float l9_894=fract(sin(dot(l9_893,float2(12.9898,4.1413999)))*43758.547);
float2 l9_895=l9_889+float2(0.0,1.0);
float l9_896=fract(sin(dot(l9_895,float2(12.9898,4.1413999)))*43758.547);
float2 l9_897=l9_889+float2(1.0);
float l9_898=fract(sin(dot(l9_897,float2(12.9898,4.1413999)))*43758.547);
float l9_899=mix(mix(l9_892,l9_894,l9_890.x),mix(l9_896,l9_898,l9_890.x),l9_890.y);
float l9_900=l9_899*l9_899;
l9_822+=(0.015625*l9_900);
float l9_901=l9_822/0.96875;
tempGlobals.N123_fbm=1.0-l9_901;
}
}
float3 Normal_N123=float3(0.0);
ssGlobals param_3=Globals;
tempGlobals=param_3;
float3 param_2=float3(0.0);
float3 l9_902=float3(0.0);
float3 l9_903=float3(0.0);
float3 l9_904=(*sc_set0.UserUniforms).oceanMin;
l9_903=l9_904;
l9_902=l9_903;
float3 l9_905=l9_902;
N123_OceanAabbMin=l9_905;
float3 l9_906=float3(0.0);
float3 l9_907=float3(0.0);
float3 l9_908=(*sc_set0.UserUniforms).oceanMax;
l9_907=l9_908;
l9_906=l9_907;
float3 l9_909=l9_906;
N123_OceanAabbMax=l9_909;
float l9_910=0.0;
float l9_911=0.0;
float l9_912=(*sc_set0.UserUniforms).speed;
l9_911=l9_912;
l9_910=l9_911;
float l9_913=l9_910;
N123_OceanSpeed=l9_913;
float l9_914=0.0;
float l9_915=0.0;
float l9_916=(*sc_set0.UserUniforms).enableFoam;
l9_915=l9_916;
l9_914=l9_915;
float l9_917=l9_914;
N123_EnableFoam=l9_917;
float l9_918=0.0;
float l9_919=0.0;
float l9_920=(*sc_set0.UserUniforms).fbmScale;
l9_919=l9_920;
l9_918=l9_919;
float l9_921=l9_918;
N123_FBMScale=l9_921;
float l9_922=0.0;
float l9_923=0.0;
float l9_924=(*sc_set0.UserUniforms).enableInfinite;
l9_923=l9_924;
l9_922=l9_923;
float l9_925=l9_922;
N123_EnableInfinite=l9_925;
float l9_926=0.0;
float l9_927=0.0;
float l9_928=(*sc_set0.UserUniforms).enableFluid;
l9_927=l9_928;
l9_926=l9_927;
float l9_929=l9_926;
N123_EnableFluid=l9_929;
float2 l9_930=float2(0.0);
float2 l9_931=float2(0.0);
float2 l9_932=(*sc_set0.UserUniforms).pressureRange;
l9_931=l9_932;
l9_930=l9_931;
float2 l9_933=l9_930;
N123_pressureRange=l9_933;
float l9_934=0.0;
float l9_935=0.0;
float l9_936=(*sc_set0.UserUniforms).fluidMul;
l9_935=l9_936;
l9_934=l9_935;
float l9_937=l9_934;
N123_FluidMul=l9_937;
float2 l9_938=float2(0.0);
float2 l9_939=float2(0.0);
float2 l9_940=(*sc_set0.UserUniforms).unpackVal;
l9_939=l9_940;
l9_938=l9_939;
float2 l9_941=l9_938;
N123_unpackVal=l9_941;
float2 l9_942=tempGlobals.Surface_UVCoord0;
float2 l9_943=l9_942;
float3 l9_944=tempGlobals.SurfacePosition_WorldSpace;
float3 l9_945=l9_944;
float2 l9_946=l9_943;
if (N123_EnableInfinite==1.0)
{
float2 l9_947=float2(N123_OceanAabbMin.x,N123_OceanAabbMin.z);
float2 l9_948=float2(N123_OceanAabbMax.x,N123_OceanAabbMax.z);
float3 l9_949=(*sc_set0.UserUniforms).sc_Camera.position;
float2 l9_950=float2(0.0)+(((l9_949.xz-l9_947)*1.0)/((l9_948-l9_947)+float2(1e-06)));
l9_950.y=1.0-l9_950.y;
l9_946=(l9_943+l9_950)-float2(0.5);
}
float2 l9_951=l9_946;
float4 l9_952=float4(0.0);
int l9_953;
if ((int(oceanHeightmapHasSwappedViews_tmp)!=0))
{
int l9_954=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_954=0;
}
else
{
l9_954=in.varStereoViewID;
}
int l9_955=l9_954;
l9_953=1-l9_955;
}
else
{
int l9_956=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_956=0;
}
else
{
l9_956=in.varStereoViewID;
}
int l9_957=l9_956;
l9_953=l9_957;
}
int l9_958=l9_953;
int l9_959=oceanHeightmapLayout_tmp;
int l9_960=l9_958;
float2 l9_961=l9_951;
bool l9_962=(int(SC_USE_UV_TRANSFORM_oceanHeightmap_tmp)!=0);
float3x3 l9_963=(*sc_set0.UserUniforms).oceanHeightmapTransform;
int2 l9_964=int2(SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap_tmp,SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap_tmp);
bool l9_965=(int(SC_USE_UV_MIN_MAX_oceanHeightmap_tmp)!=0);
float4 l9_966=(*sc_set0.UserUniforms).oceanHeightmapUvMinMax;
bool l9_967=(int(SC_USE_CLAMP_TO_BORDER_oceanHeightmap_tmp)!=0);
float4 l9_968=(*sc_set0.UserUniforms).oceanHeightmapBorderColor;
float l9_969=0.0;
bool l9_970=l9_967&&(!l9_965);
float l9_971=1.0;
float l9_972=l9_961.x;
int l9_973=l9_964.x;
if (l9_973==1)
{
l9_972=fract(l9_972);
}
else
{
if (l9_973==2)
{
float l9_974=fract(l9_972);
float l9_975=l9_972-l9_974;
float l9_976=step(0.25,fract(l9_975*0.5));
l9_972=mix(l9_974,1.0-l9_974,fast::clamp(l9_976,0.0,1.0));
}
}
l9_961.x=l9_972;
float l9_977=l9_961.y;
int l9_978=l9_964.y;
if (l9_978==1)
{
l9_977=fract(l9_977);
}
else
{
if (l9_978==2)
{
float l9_979=fract(l9_977);
float l9_980=l9_977-l9_979;
float l9_981=step(0.25,fract(l9_980*0.5));
l9_977=mix(l9_979,1.0-l9_979,fast::clamp(l9_981,0.0,1.0));
}
}
l9_961.y=l9_977;
if (l9_965)
{
bool l9_982=l9_967;
bool l9_983;
if (l9_982)
{
l9_983=l9_964.x==3;
}
else
{
l9_983=l9_982;
}
float l9_984=l9_961.x;
float l9_985=l9_966.x;
float l9_986=l9_966.z;
bool l9_987=l9_983;
float l9_988=l9_971;
float l9_989=fast::clamp(l9_984,l9_985,l9_986);
float l9_990=step(abs(l9_984-l9_989),9.9999997e-06);
l9_988*=(l9_990+((1.0-float(l9_987))*(1.0-l9_990)));
l9_984=l9_989;
l9_961.x=l9_984;
l9_971=l9_988;
bool l9_991=l9_967;
bool l9_992;
if (l9_991)
{
l9_992=l9_964.y==3;
}
else
{
l9_992=l9_991;
}
float l9_993=l9_961.y;
float l9_994=l9_966.y;
float l9_995=l9_966.w;
bool l9_996=l9_992;
float l9_997=l9_971;
float l9_998=fast::clamp(l9_993,l9_994,l9_995);
float l9_999=step(abs(l9_993-l9_998),9.9999997e-06);
l9_997*=(l9_999+((1.0-float(l9_996))*(1.0-l9_999)));
l9_993=l9_998;
l9_961.y=l9_993;
l9_971=l9_997;
}
float2 l9_1000=l9_961;
bool l9_1001=l9_962;
float3x3 l9_1002=l9_963;
if (l9_1001)
{
l9_1000=float2((l9_1002*float3(l9_1000,1.0)).xy);
}
float2 l9_1003=l9_1000;
l9_961=l9_1003;
float l9_1004=l9_961.x;
int l9_1005=l9_964.x;
bool l9_1006=l9_970;
float l9_1007=l9_971;
if ((l9_1005==0)||(l9_1005==3))
{
float l9_1008=l9_1004;
float l9_1009=0.0;
float l9_1010=1.0;
bool l9_1011=l9_1006;
float l9_1012=l9_1007;
float l9_1013=fast::clamp(l9_1008,l9_1009,l9_1010);
float l9_1014=step(abs(l9_1008-l9_1013),9.9999997e-06);
l9_1012*=(l9_1014+((1.0-float(l9_1011))*(1.0-l9_1014)));
l9_1008=l9_1013;
l9_1004=l9_1008;
l9_1007=l9_1012;
}
l9_961.x=l9_1004;
l9_971=l9_1007;
float l9_1015=l9_961.y;
int l9_1016=l9_964.y;
bool l9_1017=l9_970;
float l9_1018=l9_971;
if ((l9_1016==0)||(l9_1016==3))
{
float l9_1019=l9_1015;
float l9_1020=0.0;
float l9_1021=1.0;
bool l9_1022=l9_1017;
float l9_1023=l9_1018;
float l9_1024=fast::clamp(l9_1019,l9_1020,l9_1021);
float l9_1025=step(abs(l9_1019-l9_1024),9.9999997e-06);
l9_1023*=(l9_1025+((1.0-float(l9_1022))*(1.0-l9_1025)));
l9_1019=l9_1024;
l9_1015=l9_1019;
l9_1018=l9_1023;
}
l9_961.y=l9_1015;
l9_971=l9_1018;
float2 l9_1026=l9_961;
int l9_1027=l9_959;
int l9_1028=l9_960;
float l9_1029=l9_969;
float2 l9_1030=l9_1026;
int l9_1031=l9_1027;
int l9_1032=l9_1028;
float3 l9_1033=float3(0.0);
if (l9_1031==0)
{
l9_1033=float3(l9_1030,0.0);
}
else
{
if (l9_1031==1)
{
l9_1033=float3(l9_1030.x,(l9_1030.y*0.5)+(0.5-(float(l9_1032)*0.5)),0.0);
}
else
{
l9_1033=float3(l9_1030,float(l9_1032));
}
}
float3 l9_1034=l9_1033;
float3 l9_1035=l9_1034;
float4 l9_1036=sc_set0.oceanHeightmap.sample(sc_set0.oceanHeightmapSmpSC,l9_1035.xy,bias(l9_1029));
float4 l9_1037=l9_1036;
if (l9_967)
{
l9_1037=mix(l9_968,l9_1037,float4(l9_971));
}
float4 l9_1038=l9_1037;
l9_952=l9_1038;
float4 l9_1039=l9_952;
float2 l9_1040=l9_1039.xy;
float l9_1041=N123_unpackVal.x;
float l9_1042=N123_unpackVal.y;
float l9_1043=0.0;
float2 l9_1044=l9_1040;
float l9_1045=l9_1041;
float l9_1046=l9_1042;
float l9_1047=0.99998999;
float2 l9_1048=l9_1044;
#if (1)
{
l9_1048=floor((l9_1048*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_1049=dot(l9_1048,float2(1.0,0.0039215689));
float l9_1050=l9_1049;
float l9_1051=0.0;
float l9_1052=l9_1047;
float l9_1053=l9_1045;
float l9_1054=l9_1046;
float l9_1055=l9_1053+(((l9_1050-l9_1051)*(l9_1054-l9_1053))/(l9_1052-l9_1051));
float l9_1056=l9_1055;
l9_1043=l9_1056;
float l9_1057=l9_1043;
float l9_1058=l9_1057;
float l9_1059=0.0+(((l9_1058-N123_unpackVal.x)*1.0)/((N123_unpackVal.y-N123_unpackVal.x)+1e-06));
tempGlobals.N123_TatalHeightRemap=l9_1059;
float l9_1060=l9_1058;
if (N123_EnableFluid==1.0)
{
float2 l9_1061=l9_943;
float4 l9_1062=float4(0.0);
int l9_1063;
if ((int(fluidPressureHasSwappedViews_tmp)!=0))
{
int l9_1064=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1064=0;
}
else
{
l9_1064=in.varStereoViewID;
}
int l9_1065=l9_1064;
l9_1063=1-l9_1065;
}
else
{
int l9_1066=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1066=0;
}
else
{
l9_1066=in.varStereoViewID;
}
int l9_1067=l9_1066;
l9_1063=l9_1067;
}
int l9_1068=l9_1063;
int l9_1069=fluidPressureLayout_tmp;
int l9_1070=l9_1068;
float2 l9_1071=l9_1061;
bool l9_1072=(int(SC_USE_UV_TRANSFORM_fluidPressure_tmp)!=0);
float3x3 l9_1073=(*sc_set0.UserUniforms).fluidPressureTransform;
int2 l9_1074=int2(SC_SOFTWARE_WRAP_MODE_U_fluidPressure_tmp,SC_SOFTWARE_WRAP_MODE_V_fluidPressure_tmp);
bool l9_1075=(int(SC_USE_UV_MIN_MAX_fluidPressure_tmp)!=0);
float4 l9_1076=(*sc_set0.UserUniforms).fluidPressureUvMinMax;
bool l9_1077=(int(SC_USE_CLAMP_TO_BORDER_fluidPressure_tmp)!=0);
float4 l9_1078=(*sc_set0.UserUniforms).fluidPressureBorderColor;
float l9_1079=0.0;
bool l9_1080=l9_1077&&(!l9_1075);
float l9_1081=1.0;
float l9_1082=l9_1071.x;
int l9_1083=l9_1074.x;
if (l9_1083==1)
{
l9_1082=fract(l9_1082);
}
else
{
if (l9_1083==2)
{
float l9_1084=fract(l9_1082);
float l9_1085=l9_1082-l9_1084;
float l9_1086=step(0.25,fract(l9_1085*0.5));
l9_1082=mix(l9_1084,1.0-l9_1084,fast::clamp(l9_1086,0.0,1.0));
}
}
l9_1071.x=l9_1082;
float l9_1087=l9_1071.y;
int l9_1088=l9_1074.y;
if (l9_1088==1)
{
l9_1087=fract(l9_1087);
}
else
{
if (l9_1088==2)
{
float l9_1089=fract(l9_1087);
float l9_1090=l9_1087-l9_1089;
float l9_1091=step(0.25,fract(l9_1090*0.5));
l9_1087=mix(l9_1089,1.0-l9_1089,fast::clamp(l9_1091,0.0,1.0));
}
}
l9_1071.y=l9_1087;
if (l9_1075)
{
bool l9_1092=l9_1077;
bool l9_1093;
if (l9_1092)
{
l9_1093=l9_1074.x==3;
}
else
{
l9_1093=l9_1092;
}
float l9_1094=l9_1071.x;
float l9_1095=l9_1076.x;
float l9_1096=l9_1076.z;
bool l9_1097=l9_1093;
float l9_1098=l9_1081;
float l9_1099=fast::clamp(l9_1094,l9_1095,l9_1096);
float l9_1100=step(abs(l9_1094-l9_1099),9.9999997e-06);
l9_1098*=(l9_1100+((1.0-float(l9_1097))*(1.0-l9_1100)));
l9_1094=l9_1099;
l9_1071.x=l9_1094;
l9_1081=l9_1098;
bool l9_1101=l9_1077;
bool l9_1102;
if (l9_1101)
{
l9_1102=l9_1074.y==3;
}
else
{
l9_1102=l9_1101;
}
float l9_1103=l9_1071.y;
float l9_1104=l9_1076.y;
float l9_1105=l9_1076.w;
bool l9_1106=l9_1102;
float l9_1107=l9_1081;
float l9_1108=fast::clamp(l9_1103,l9_1104,l9_1105);
float l9_1109=step(abs(l9_1103-l9_1108),9.9999997e-06);
l9_1107*=(l9_1109+((1.0-float(l9_1106))*(1.0-l9_1109)));
l9_1103=l9_1108;
l9_1071.y=l9_1103;
l9_1081=l9_1107;
}
float2 l9_1110=l9_1071;
bool l9_1111=l9_1072;
float3x3 l9_1112=l9_1073;
if (l9_1111)
{
l9_1110=float2((l9_1112*float3(l9_1110,1.0)).xy);
}
float2 l9_1113=l9_1110;
l9_1071=l9_1113;
float l9_1114=l9_1071.x;
int l9_1115=l9_1074.x;
bool l9_1116=l9_1080;
float l9_1117=l9_1081;
if ((l9_1115==0)||(l9_1115==3))
{
float l9_1118=l9_1114;
float l9_1119=0.0;
float l9_1120=1.0;
bool l9_1121=l9_1116;
float l9_1122=l9_1117;
float l9_1123=fast::clamp(l9_1118,l9_1119,l9_1120);
float l9_1124=step(abs(l9_1118-l9_1123),9.9999997e-06);
l9_1122*=(l9_1124+((1.0-float(l9_1121))*(1.0-l9_1124)));
l9_1118=l9_1123;
l9_1114=l9_1118;
l9_1117=l9_1122;
}
l9_1071.x=l9_1114;
l9_1081=l9_1117;
float l9_1125=l9_1071.y;
int l9_1126=l9_1074.y;
bool l9_1127=l9_1080;
float l9_1128=l9_1081;
if ((l9_1126==0)||(l9_1126==3))
{
float l9_1129=l9_1125;
float l9_1130=0.0;
float l9_1131=1.0;
bool l9_1132=l9_1127;
float l9_1133=l9_1128;
float l9_1134=fast::clamp(l9_1129,l9_1130,l9_1131);
float l9_1135=step(abs(l9_1129-l9_1134),9.9999997e-06);
l9_1133*=(l9_1135+((1.0-float(l9_1132))*(1.0-l9_1135)));
l9_1129=l9_1134;
l9_1125=l9_1129;
l9_1128=l9_1133;
}
l9_1071.y=l9_1125;
l9_1081=l9_1128;
float2 l9_1136=l9_1071;
int l9_1137=l9_1069;
int l9_1138=l9_1070;
float l9_1139=l9_1079;
float2 l9_1140=l9_1136;
int l9_1141=l9_1137;
int l9_1142=l9_1138;
float3 l9_1143=float3(0.0);
if (l9_1141==0)
{
l9_1143=float3(l9_1140,0.0);
}
else
{
if (l9_1141==1)
{
l9_1143=float3(l9_1140.x,(l9_1140.y*0.5)+(0.5-(float(l9_1142)*0.5)),0.0);
}
else
{
l9_1143=float3(l9_1140,float(l9_1142));
}
}
float3 l9_1144=l9_1143;
float3 l9_1145=l9_1144;
float4 l9_1146=sc_set0.fluidPressure.sample(sc_set0.fluidPressureSmpSC,l9_1145.xy,bias(l9_1139));
float4 l9_1147=l9_1146;
if (l9_1077)
{
l9_1147=mix(l9_1078,l9_1147,float4(l9_1081));
}
float4 l9_1148=l9_1147;
l9_1062=l9_1148;
float4 l9_1149=l9_1062;
float2 l9_1150=l9_1149.xy;
float l9_1151=N123_pressureRange.x;
float l9_1152=N123_pressureRange.y;
float l9_1153=0.0;
float2 l9_1154=l9_1150;
float l9_1155=l9_1151;
float l9_1156=l9_1152;
float l9_1157=0.99998999;
float2 l9_1158=l9_1154;
#if (1)
{
l9_1158=floor((l9_1158*255.0)+float2(0.5))/float2(255.0);
}
#endif
float l9_1159=dot(l9_1158,float2(1.0,0.0039215689));
float l9_1160=l9_1159;
float l9_1161=0.0;
float l9_1162=l9_1157;
float l9_1163=l9_1155;
float l9_1164=l9_1156;
float l9_1165=l9_1163+(((l9_1160-l9_1161)*(l9_1164-l9_1163))/(l9_1162-l9_1161));
float l9_1166=l9_1165;
l9_1153=l9_1166;
float l9_1167=l9_1153;
float l9_1168=l9_1167;
float l9_1169=l9_1168*N123_FluidMul;
l9_1060=l9_1058+l9_1169;
float l9_1170=(0.0+(((fast::clamp(l9_1169,N123_unpackVal.x,N123_unpackVal.y)-N123_unpackVal.x)*1.0)/((N123_unpackVal.y-N123_unpackVal.x)+1e-06)))*0.60000002;
tempGlobals.N123_TatalHeightRemap+=l9_1170;
}
float2 l9_1171=l9_946;
float4 l9_1172=float4(0.0);
int l9_1173;
if ((int(oceanNormalHasSwappedViews_tmp)!=0))
{
int l9_1174=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1174=0;
}
else
{
l9_1174=in.varStereoViewID;
}
int l9_1175=l9_1174;
l9_1173=1-l9_1175;
}
else
{
int l9_1176=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1176=0;
}
else
{
l9_1176=in.varStereoViewID;
}
int l9_1177=l9_1176;
l9_1173=l9_1177;
}
int l9_1178=l9_1173;
int l9_1179=oceanNormalLayout_tmp;
int l9_1180=l9_1178;
float2 l9_1181=l9_1171;
bool l9_1182=(int(SC_USE_UV_TRANSFORM_oceanNormal_tmp)!=0);
float3x3 l9_1183=(*sc_set0.UserUniforms).oceanNormalTransform;
int2 l9_1184=int2(SC_SOFTWARE_WRAP_MODE_U_oceanNormal_tmp,SC_SOFTWARE_WRAP_MODE_V_oceanNormal_tmp);
bool l9_1185=(int(SC_USE_UV_MIN_MAX_oceanNormal_tmp)!=0);
float4 l9_1186=(*sc_set0.UserUniforms).oceanNormalUvMinMax;
bool l9_1187=(int(SC_USE_CLAMP_TO_BORDER_oceanNormal_tmp)!=0);
float4 l9_1188=(*sc_set0.UserUniforms).oceanNormalBorderColor;
float l9_1189=0.0;
bool l9_1190=l9_1187&&(!l9_1185);
float l9_1191=1.0;
float l9_1192=l9_1181.x;
int l9_1193=l9_1184.x;
if (l9_1193==1)
{
l9_1192=fract(l9_1192);
}
else
{
if (l9_1193==2)
{
float l9_1194=fract(l9_1192);
float l9_1195=l9_1192-l9_1194;
float l9_1196=step(0.25,fract(l9_1195*0.5));
l9_1192=mix(l9_1194,1.0-l9_1194,fast::clamp(l9_1196,0.0,1.0));
}
}
l9_1181.x=l9_1192;
float l9_1197=l9_1181.y;
int l9_1198=l9_1184.y;
if (l9_1198==1)
{
l9_1197=fract(l9_1197);
}
else
{
if (l9_1198==2)
{
float l9_1199=fract(l9_1197);
float l9_1200=l9_1197-l9_1199;
float l9_1201=step(0.25,fract(l9_1200*0.5));
l9_1197=mix(l9_1199,1.0-l9_1199,fast::clamp(l9_1201,0.0,1.0));
}
}
l9_1181.y=l9_1197;
if (l9_1185)
{
bool l9_1202=l9_1187;
bool l9_1203;
if (l9_1202)
{
l9_1203=l9_1184.x==3;
}
else
{
l9_1203=l9_1202;
}
float l9_1204=l9_1181.x;
float l9_1205=l9_1186.x;
float l9_1206=l9_1186.z;
bool l9_1207=l9_1203;
float l9_1208=l9_1191;
float l9_1209=fast::clamp(l9_1204,l9_1205,l9_1206);
float l9_1210=step(abs(l9_1204-l9_1209),9.9999997e-06);
l9_1208*=(l9_1210+((1.0-float(l9_1207))*(1.0-l9_1210)));
l9_1204=l9_1209;
l9_1181.x=l9_1204;
l9_1191=l9_1208;
bool l9_1211=l9_1187;
bool l9_1212;
if (l9_1211)
{
l9_1212=l9_1184.y==3;
}
else
{
l9_1212=l9_1211;
}
float l9_1213=l9_1181.y;
float l9_1214=l9_1186.y;
float l9_1215=l9_1186.w;
bool l9_1216=l9_1212;
float l9_1217=l9_1191;
float l9_1218=fast::clamp(l9_1213,l9_1214,l9_1215);
float l9_1219=step(abs(l9_1213-l9_1218),9.9999997e-06);
l9_1217*=(l9_1219+((1.0-float(l9_1216))*(1.0-l9_1219)));
l9_1213=l9_1218;
l9_1181.y=l9_1213;
l9_1191=l9_1217;
}
float2 l9_1220=l9_1181;
bool l9_1221=l9_1182;
float3x3 l9_1222=l9_1183;
if (l9_1221)
{
l9_1220=float2((l9_1222*float3(l9_1220,1.0)).xy);
}
float2 l9_1223=l9_1220;
l9_1181=l9_1223;
float l9_1224=l9_1181.x;
int l9_1225=l9_1184.x;
bool l9_1226=l9_1190;
float l9_1227=l9_1191;
if ((l9_1225==0)||(l9_1225==3))
{
float l9_1228=l9_1224;
float l9_1229=0.0;
float l9_1230=1.0;
bool l9_1231=l9_1226;
float l9_1232=l9_1227;
float l9_1233=fast::clamp(l9_1228,l9_1229,l9_1230);
float l9_1234=step(abs(l9_1228-l9_1233),9.9999997e-06);
l9_1232*=(l9_1234+((1.0-float(l9_1231))*(1.0-l9_1234)));
l9_1228=l9_1233;
l9_1224=l9_1228;
l9_1227=l9_1232;
}
l9_1181.x=l9_1224;
l9_1191=l9_1227;
float l9_1235=l9_1181.y;
int l9_1236=l9_1184.y;
bool l9_1237=l9_1190;
float l9_1238=l9_1191;
if ((l9_1236==0)||(l9_1236==3))
{
float l9_1239=l9_1235;
float l9_1240=0.0;
float l9_1241=1.0;
bool l9_1242=l9_1237;
float l9_1243=l9_1238;
float l9_1244=fast::clamp(l9_1239,l9_1240,l9_1241);
float l9_1245=step(abs(l9_1239-l9_1244),9.9999997e-06);
l9_1243*=(l9_1245+((1.0-float(l9_1242))*(1.0-l9_1245)));
l9_1239=l9_1244;
l9_1235=l9_1239;
l9_1238=l9_1243;
}
l9_1181.y=l9_1235;
l9_1191=l9_1238;
float2 l9_1246=l9_1181;
int l9_1247=l9_1179;
int l9_1248=l9_1180;
float l9_1249=l9_1189;
float2 l9_1250=l9_1246;
int l9_1251=l9_1247;
int l9_1252=l9_1248;
float3 l9_1253=float3(0.0);
if (l9_1251==0)
{
l9_1253=float3(l9_1250,0.0);
}
else
{
if (l9_1251==1)
{
l9_1253=float3(l9_1250.x,(l9_1250.y*0.5)+(0.5-(float(l9_1252)*0.5)),0.0);
}
else
{
l9_1253=float3(l9_1250,float(l9_1252));
}
}
float3 l9_1254=l9_1253;
float3 l9_1255=l9_1254;
float4 l9_1256=sc_set0.oceanNormal.sample(sc_set0.oceanNormalSmpSC,l9_1255.xy,bias(l9_1249));
float4 l9_1257=l9_1256;
if (l9_1187)
{
l9_1257=mix(l9_1188,l9_1257,float4(l9_1191));
}
float4 l9_1258=l9_1257;
l9_1172=l9_1258;
float4 l9_1259=l9_1172;
float3 l9_1260=(l9_1259.xyz*1.9921875)-float3(1.0);
N123_Normal=l9_1260;
N123_SurfacePosition=float3(0.0,l9_1060,0.0)+l9_945;
tempGlobals.N123_fbm=1.0;
if (N123_EnableFoam==1.0)
{
float l9_1261=tempGlobals.gTimeElapsed;
float2 l9_1262=N123_SurfacePosition.zx*N123_FBMScale;
float l9_1263=l9_1261*N123_OceanSpeed;
float l9_1264=0.0;
float2 l9_1265=l9_1262+float2(l9_1263);
float2 l9_1266=floor(l9_1265);
float2 l9_1267=fract(l9_1265);
l9_1267=(l9_1267*l9_1267)*(float2(3.0)-(l9_1267*2.0));
float2 l9_1268=l9_1266;
float l9_1269=fract(sin(dot(l9_1268,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1270=l9_1266+float2(1.0,0.0);
float l9_1271=fract(sin(dot(l9_1270,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1272=l9_1266+float2(0.0,1.0);
float l9_1273=fract(sin(dot(l9_1272,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1274=l9_1266+float2(1.0);
float l9_1275=fract(sin(dot(l9_1274,float2(12.9898,4.1413999)))*43758.547);
float l9_1276=mix(mix(l9_1269,l9_1271,l9_1267.x),mix(l9_1273,l9_1275,l9_1267.x),l9_1267.y);
float l9_1277=l9_1276*l9_1276;
l9_1264+=(0.5*l9_1277);
l9_1262=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_1262)*2.02;
float2 l9_1278=l9_1262;
float2 l9_1279=floor(l9_1278);
float2 l9_1280=fract(l9_1278);
l9_1280=(l9_1280*l9_1280)*(float2(3.0)-(l9_1280*2.0));
float2 l9_1281=l9_1279;
float l9_1282=fract(sin(dot(l9_1281,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1283=l9_1279+float2(1.0,0.0);
float l9_1284=fract(sin(dot(l9_1283,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1285=l9_1279+float2(0.0,1.0);
float l9_1286=fract(sin(dot(l9_1285,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1287=l9_1279+float2(1.0);
float l9_1288=fract(sin(dot(l9_1287,float2(12.9898,4.1413999)))*43758.547);
float l9_1289=mix(mix(l9_1282,l9_1284,l9_1280.x),mix(l9_1286,l9_1288,l9_1280.x),l9_1280.y);
float l9_1290=l9_1289*l9_1289;
l9_1264+=(0.03125*l9_1290);
l9_1262=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_1262)*2.01;
float2 l9_1291=l9_1262;
float2 l9_1292=floor(l9_1291);
float2 l9_1293=fract(l9_1291);
l9_1293=(l9_1293*l9_1293)*(float2(3.0)-(l9_1293*2.0));
float2 l9_1294=l9_1292;
float l9_1295=fract(sin(dot(l9_1294,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1296=l9_1292+float2(1.0,0.0);
float l9_1297=fract(sin(dot(l9_1296,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1298=l9_1292+float2(0.0,1.0);
float l9_1299=fract(sin(dot(l9_1298,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1300=l9_1292+float2(1.0);
float l9_1301=fract(sin(dot(l9_1300,float2(12.9898,4.1413999)))*43758.547);
float l9_1302=mix(mix(l9_1295,l9_1297,l9_1293.x),mix(l9_1299,l9_1301,l9_1293.x),l9_1293.y);
float l9_1303=l9_1302*l9_1302;
l9_1264+=(0.25*l9_1303);
l9_1262=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_1262)*2.03;
float2 l9_1304=l9_1262;
float2 l9_1305=floor(l9_1304);
float2 l9_1306=fract(l9_1304);
l9_1306=(l9_1306*l9_1306)*(float2(3.0)-(l9_1306*2.0));
float2 l9_1307=l9_1305;
float l9_1308=fract(sin(dot(l9_1307,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1309=l9_1305+float2(1.0,0.0);
float l9_1310=fract(sin(dot(l9_1309,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1311=l9_1305+float2(0.0,1.0);
float l9_1312=fract(sin(dot(l9_1311,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1313=l9_1305+float2(1.0);
float l9_1314=fract(sin(dot(l9_1313,float2(12.9898,4.1413999)))*43758.547);
float l9_1315=mix(mix(l9_1308,l9_1310,l9_1306.x),mix(l9_1312,l9_1314,l9_1306.x),l9_1306.y);
float l9_1316=l9_1315*l9_1315;
l9_1264+=(0.125*l9_1316);
l9_1262=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_1262)*2.01;
float2 l9_1317=l9_1262;
float2 l9_1318=floor(l9_1317);
float2 l9_1319=fract(l9_1317);
l9_1319=(l9_1319*l9_1319)*(float2(3.0)-(l9_1319*2.0));
float2 l9_1320=l9_1318;
float l9_1321=fract(sin(dot(l9_1320,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1322=l9_1318+float2(1.0,0.0);
float l9_1323=fract(sin(dot(l9_1322,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1324=l9_1318+float2(0.0,1.0);
float l9_1325=fract(sin(dot(l9_1324,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1326=l9_1318+float2(1.0);
float l9_1327=fract(sin(dot(l9_1326,float2(12.9898,4.1413999)))*43758.547);
float l9_1328=mix(mix(l9_1321,l9_1323,l9_1319.x),mix(l9_1325,l9_1327,l9_1319.x),l9_1319.y);
float l9_1329=l9_1328*l9_1328;
l9_1264+=(0.0625*l9_1329);
l9_1262=(float2x2(float2(0.80000001,0.60000002),float2(-0.60000002,0.80000001))*l9_1262)*2.04;
float2 l9_1330=l9_1262+float2(sin(l9_1263));
float2 l9_1331=floor(l9_1330);
float2 l9_1332=fract(l9_1330);
l9_1332=(l9_1332*l9_1332)*(float2(3.0)-(l9_1332*2.0));
float2 l9_1333=l9_1331;
float l9_1334=fract(sin(dot(l9_1333,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1335=l9_1331+float2(1.0,0.0);
float l9_1336=fract(sin(dot(l9_1335,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1337=l9_1331+float2(0.0,1.0);
float l9_1338=fract(sin(dot(l9_1337,float2(12.9898,4.1413999)))*43758.547);
float2 l9_1339=l9_1331+float2(1.0);
float l9_1340=fract(sin(dot(l9_1339,float2(12.9898,4.1413999)))*43758.547);
float l9_1341=mix(mix(l9_1334,l9_1336,l9_1332.x),mix(l9_1338,l9_1340,l9_1332.x),l9_1332.y);
float l9_1342=l9_1341*l9_1341;
l9_1264+=(0.015625*l9_1342);
float l9_1343=l9_1264/0.96875;
tempGlobals.N123_fbm=1.0-l9_1343;
}
param_2=N123_Normal;
Normal_N123=param_2;
float param_4=(*sc_set0.UserUniforms).Port_Opacity_N013;
float3 param_5=Normal_N123;
float param_6=(*sc_set0.UserUniforms).Port_Roughness_N013;
ssGlobals param_7=Globals;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_7.BumpedNormal=float3x3(float3(param_7.VertexTangent_WorldSpace),float3(param_7.VertexBinormal_WorldSpace),float3(param_7.VertexNormal_WorldSpace))*param_5;
}
float l9_1344=param_4;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_1344<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_1345=gl_FragCoord;
float2 l9_1346=floor(mod(l9_1345.xy,float2(4.0)));
float l9_1347=(mod(dot(l9_1346,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_1344<l9_1347)
{
discard_fragment();
}
}
float3 l9_1348=param_7.PositionWS;
float3 l9_1349=param_7.BumpedNormal;
float l9_1350=param_6;
float3 l9_1351=l9_1348;
float3 l9_1352=l9_1349;
float l9_1353=l9_1350;
uint l9_1354=0u;
uint3 l9_1355=uint3(round((l9_1351-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_1355.x,l9_1355.y,l9_1355.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_1356=l9_1352;
float l9_1357=dot(abs(l9_1356),float3(1.0));
l9_1356/=float3(l9_1357);
float2 l9_1358=float2(fast::clamp(-l9_1356.z,0.0,1.0));
float2 l9_1359=l9_1356.xy+mix(-l9_1358,l9_1358,step(float2(0.0),l9_1356.xy));
uint l9_1360=as_type<uint>(half2(l9_1359));
uint2 l9_1361=uint2(l9_1360&65535u,l9_1360>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_1361.x,l9_1361.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_1354;
uint l9_1362=uint(fast::clamp(l9_1353,0.0,1.0)*1000.0);
l9_1362 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_1362;
ssGlobals param_8=Globals;
tempGlobals=param_8;
return out;
}
} // RECEIVER MODE SHADER
