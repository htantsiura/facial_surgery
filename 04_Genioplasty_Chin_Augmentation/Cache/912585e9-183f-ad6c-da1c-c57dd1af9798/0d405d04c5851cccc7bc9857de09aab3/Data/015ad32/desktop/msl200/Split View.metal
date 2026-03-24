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
//sampler sampler depthTargetSmpSC 0:20
//sampler sampler fluidPressureSmpSC 0:21
//sampler sampler intensityTextureSmpSC 0:22
//sampler sampler oceanHeightmapSmpSC 0:23
//sampler sampler sc_ScreenTextureSmpSC 0:28
//sampler sampler screenTexSmpSC 0:31
//texture texture2D depthTarget 0:1:0:20
//texture texture2D fluidPressure 0:2:0:21
//texture texture2D intensityTexture 0:3:0:22
//texture texture2D oceanHeightmap 0:4:0:23
//texture texture2D sc_ScreenTexture 0:16:0:28
//texture texture2D screenTex 0:19:0:31
//ubo float sc_BonesUBO 0:0:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:32:5088 {
//float4 sc_Time 1376
//float4 sc_UniformConstants 1392
//float4x4 sc_ViewProjectionMatrixArray 1680:[2]:64
//float4x4 sc_ModelViewMatrixArray 1936:[2]:64
//float4x4 sc_ProjectionMatrixArray 2384:[2]:64
//float4x4 sc_ProjectionMatrixInverseArray 2512:[2]:64
//float4x4 sc_ViewMatrixArray 2640:[2]:64
//float4x4 sc_ViewMatrixInverseArray 2768:[2]:64
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
//float4 voxelization_params_0 3824
//float4 voxelization_params_frustum_lrbt 3840
//float4 voxelization_params_frustum_nf 3856
//float3 voxelization_params_camera_pos 3872
//float4x4 sc_ModelMatrixVoxelization 3888
//float correctedIntensity 3952
//float3x3 intensityTextureTransform 4016
//float4 intensityTextureUvMinMax 4064
//float4 intensityTextureBorderColor 4080
//int PreviewEnabled 4244
//float alphaTestThreshold 4252
//float3x3 depthTargetTransform 4304
//float4 depthTargetUvMinMax 4352
//float4 depthTargetBorderColor 4368
//float4 depthTargetProjectionMatrixTerms 4384
//float3 oceanPos 4400
//float3 oceanMin 4416
//float3 oceanMax 4432
//float3x3 oceanHeightmapTransform 4496
//float4 oceanHeightmapUvMinMax 4544
//float4 oceanHeightmapBorderColor 4560
//float2 unpackVal 4576
//float enableFluid 4584
//float2 pressureRange 4592
//float3x3 fluidPressureTransform 4656
//float4 fluidPressureUvMinMax 4704
//float4 fluidPressureBorderColor 4720
//float fluidMul 4736
//float4 screenTexSize 4752
//float3x3 screenTexTransform 4800
//float4 screenTexUvMinMax 4848
//float4 screenTexBorderColor 4864
//float blurFactor 4880
//float3 underwaterTint 4896
//float enableLine 4912
//float3 lineTint 4928
//float meniscusThickness 4944
//float2 Port_Input0_N228 4952
//float Port_Input1_N233 4968
//float Port_Input1_N235 4972
//float Port_Value3_N237 4980
//float Port_Input1_N050 4996
//float2 Port_Item0_N064 5008
//float2 Port_Item1_N064 5016
//float2 Port_Item2_N064 5024
//float2 Port_Item3_N064 5032
//float2 Port_Item4_N064 5040
//float2 Port_Item5_N064 5048
//float2 Port_Item6_N064 5056
//float2 Port_Item7_N064 5064
//float Port_Input2_N069 5072
//float Port_Depth_N004 5076
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
//spec_const bool SC_USE_CLAMP_TO_BORDER_depthTarget 31 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_fluidPressure 32 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 33 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_oceanHeightmap 34 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_screenTex 35 0
//spec_const bool SC_USE_UV_MIN_MAX_depthTarget 36 0
//spec_const bool SC_USE_UV_MIN_MAX_fluidPressure 37 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 38 0
//spec_const bool SC_USE_UV_MIN_MAX_oceanHeightmap 39 0
//spec_const bool SC_USE_UV_MIN_MAX_screenTex 40 0
//spec_const bool SC_USE_UV_TRANSFORM_depthTarget 41 0
//spec_const bool SC_USE_UV_TRANSFORM_fluidPressure 42 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 43 0
//spec_const bool SC_USE_UV_TRANSFORM_oceanHeightmap 44 0
//spec_const bool SC_USE_UV_TRANSFORM_screenTex 45 0
//spec_const bool UseViewSpaceDepthVariant 46 1
//spec_const bool depthTargetHasSwappedViews 47 0
//spec_const bool fluidPressureHasSwappedViews 48 0
//spec_const bool intensityTextureHasSwappedViews 49 0
//spec_const bool oceanHeightmapHasSwappedViews 50 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 51 0
//spec_const bool sc_BlendMode_Add 52 0
//spec_const bool sc_BlendMode_AlphaTest 53 0
//spec_const bool sc_BlendMode_AlphaToCoverage 54 0
//spec_const bool sc_BlendMode_ColoredGlass 55 0
//spec_const bool sc_BlendMode_Custom 56 0
//spec_const bool sc_BlendMode_Max 57 0
//spec_const bool sc_BlendMode_Min 58 0
//spec_const bool sc_BlendMode_MultiplyOriginal 59 0
//spec_const bool sc_BlendMode_Multiply 60 0
//spec_const bool sc_BlendMode_Normal 61 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 62 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 63 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 64 0
//spec_const bool sc_BlendMode_Screen 65 0
//spec_const bool sc_DepthOnly 66 0
//spec_const bool sc_FramebufferFetch 67 0
//spec_const bool sc_MotionVectorsPass 68 0
//spec_const bool sc_OITCompositingPass 69 0
//spec_const bool sc_OITDepthBoundsPass 70 0
//spec_const bool sc_OITDepthGatherPass 71 0
//spec_const bool sc_OutputBounds 72 0
//spec_const bool sc_ProjectiveShadowsCaster 73 0
//spec_const bool sc_ProjectiveShadowsReceiver 74 0
//spec_const bool sc_RenderAlphaToColor 75 0
//spec_const bool sc_ScreenTextureHasSwappedViews 76 0
//spec_const bool sc_TAAEnabled 77 0
//spec_const bool sc_VertexBlendingUseNormals 78 0
//spec_const bool sc_VertexBlending 79 0
//spec_const bool sc_Voxelization 80 0
//spec_const bool screenTexHasSwappedViews 81 0
//spec_const int SC_SOFTWARE_WRAP_MODE_U_depthTarget 82 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_fluidPressure 83 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 84 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap 85 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_screenTex 86 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_depthTarget 87 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_fluidPressure 88 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 89 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap 90 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_screenTex 91 -1
//spec_const int depthTargetLayout 92 0
//spec_const int fluidPressureLayout 93 0
//spec_const int intensityTextureLayout 94 0
//spec_const int oceanHeightmapLayout 95 0
//spec_const int sc_DepthBufferMode 96 0
//spec_const int sc_RenderingSpace 97 -1
//spec_const int sc_ScreenTextureLayout 98 0
//spec_const int sc_ShaderCacheConstant 99 0
//spec_const int sc_SkinBonesCount 100 0
//spec_const int sc_StereoRenderingMode 101 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 102 0
//spec_const int screenTexLayout 103 0
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
constant bool SC_USE_CLAMP_TO_BORDER_depthTarget [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_depthTarget_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_depthTarget) ? SC_USE_CLAMP_TO_BORDER_depthTarget : false;
constant bool SC_USE_CLAMP_TO_BORDER_fluidPressure [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_fluidPressure_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_fluidPressure) ? SC_USE_CLAMP_TO_BORDER_fluidPressure : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(33)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_oceanHeightmap [[function_constant(34)]];
constant bool SC_USE_CLAMP_TO_BORDER_oceanHeightmap_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_oceanHeightmap) ? SC_USE_CLAMP_TO_BORDER_oceanHeightmap : false;
constant bool SC_USE_CLAMP_TO_BORDER_screenTex [[function_constant(35)]];
constant bool SC_USE_CLAMP_TO_BORDER_screenTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_screenTex) ? SC_USE_CLAMP_TO_BORDER_screenTex : false;
constant bool SC_USE_UV_MIN_MAX_depthTarget [[function_constant(36)]];
constant bool SC_USE_UV_MIN_MAX_depthTarget_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_depthTarget) ? SC_USE_UV_MIN_MAX_depthTarget : false;
constant bool SC_USE_UV_MIN_MAX_fluidPressure [[function_constant(37)]];
constant bool SC_USE_UV_MIN_MAX_fluidPressure_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_fluidPressure) ? SC_USE_UV_MIN_MAX_fluidPressure : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(38)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_oceanHeightmap [[function_constant(39)]];
constant bool SC_USE_UV_MIN_MAX_oceanHeightmap_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_oceanHeightmap) ? SC_USE_UV_MIN_MAX_oceanHeightmap : false;
constant bool SC_USE_UV_MIN_MAX_screenTex [[function_constant(40)]];
constant bool SC_USE_UV_MIN_MAX_screenTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_screenTex) ? SC_USE_UV_MIN_MAX_screenTex : false;
constant bool SC_USE_UV_TRANSFORM_depthTarget [[function_constant(41)]];
constant bool SC_USE_UV_TRANSFORM_depthTarget_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_depthTarget) ? SC_USE_UV_TRANSFORM_depthTarget : false;
constant bool SC_USE_UV_TRANSFORM_fluidPressure [[function_constant(42)]];
constant bool SC_USE_UV_TRANSFORM_fluidPressure_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_fluidPressure) ? SC_USE_UV_TRANSFORM_fluidPressure : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(43)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_oceanHeightmap [[function_constant(44)]];
constant bool SC_USE_UV_TRANSFORM_oceanHeightmap_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_oceanHeightmap) ? SC_USE_UV_TRANSFORM_oceanHeightmap : false;
constant bool SC_USE_UV_TRANSFORM_screenTex [[function_constant(45)]];
constant bool SC_USE_UV_TRANSFORM_screenTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_screenTex) ? SC_USE_UV_TRANSFORM_screenTex : false;
constant bool UseViewSpaceDepthVariant [[function_constant(46)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool depthTargetHasSwappedViews [[function_constant(47)]];
constant bool depthTargetHasSwappedViews_tmp = is_function_constant_defined(depthTargetHasSwappedViews) ? depthTargetHasSwappedViews : false;
constant bool fluidPressureHasSwappedViews [[function_constant(48)]];
constant bool fluidPressureHasSwappedViews_tmp = is_function_constant_defined(fluidPressureHasSwappedViews) ? fluidPressureHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(49)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool oceanHeightmapHasSwappedViews [[function_constant(50)]];
constant bool oceanHeightmapHasSwappedViews_tmp = is_function_constant_defined(oceanHeightmapHasSwappedViews) ? oceanHeightmapHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(51)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(52)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(53)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(54)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(55)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(56)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(57)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(58)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(59)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(60)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(61)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(62)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(63)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(64)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(65)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(66)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_FramebufferFetch [[function_constant(67)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_MotionVectorsPass [[function_constant(68)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(69)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(70)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(71)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(72)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(73)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(74)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RenderAlphaToColor [[function_constant(75)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(76)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(77)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(78)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(79)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(80)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant bool screenTexHasSwappedViews [[function_constant(81)]];
constant bool screenTexHasSwappedViews_tmp = is_function_constant_defined(screenTexHasSwappedViews) ? screenTexHasSwappedViews : false;
constant int SC_SOFTWARE_WRAP_MODE_U_depthTarget [[function_constant(82)]];
constant int SC_SOFTWARE_WRAP_MODE_U_depthTarget_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_depthTarget) ? SC_SOFTWARE_WRAP_MODE_U_depthTarget : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_fluidPressure [[function_constant(83)]];
constant int SC_SOFTWARE_WRAP_MODE_U_fluidPressure_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_fluidPressure) ? SC_SOFTWARE_WRAP_MODE_U_fluidPressure : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(84)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap [[function_constant(85)]];
constant int SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap) ? SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_screenTex [[function_constant(86)]];
constant int SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_screenTex) ? SC_SOFTWARE_WRAP_MODE_U_screenTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_depthTarget [[function_constant(87)]];
constant int SC_SOFTWARE_WRAP_MODE_V_depthTarget_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_depthTarget) ? SC_SOFTWARE_WRAP_MODE_V_depthTarget : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_fluidPressure [[function_constant(88)]];
constant int SC_SOFTWARE_WRAP_MODE_V_fluidPressure_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_fluidPressure) ? SC_SOFTWARE_WRAP_MODE_V_fluidPressure : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(89)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap [[function_constant(90)]];
constant int SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap) ? SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_screenTex [[function_constant(91)]];
constant int SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_screenTex) ? SC_SOFTWARE_WRAP_MODE_V_screenTex : -1;
constant int depthTargetLayout [[function_constant(92)]];
constant int depthTargetLayout_tmp = is_function_constant_defined(depthTargetLayout) ? depthTargetLayout : 0;
constant int fluidPressureLayout [[function_constant(93)]];
constant int fluidPressureLayout_tmp = is_function_constant_defined(fluidPressureLayout) ? fluidPressureLayout : 0;
constant int intensityTextureLayout [[function_constant(94)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int oceanHeightmapLayout [[function_constant(95)]];
constant int oceanHeightmapLayout_tmp = is_function_constant_defined(oceanHeightmapLayout) ? oceanHeightmapLayout : 0;
constant int sc_DepthBufferMode [[function_constant(96)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_RenderingSpace [[function_constant(97)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(98)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(99)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(100)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(101)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(102)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;
constant int screenTexLayout [[function_constant(103)]];
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
float4 depthTargetSize;
float4 depthTargetDims;
float4 depthTargetView;
float3x3 depthTargetTransform;
float4 depthTargetUvMinMax;
float4 depthTargetBorderColor;
float4 depthTargetProjectionMatrixTerms;
float3 oceanPos;
float3 oceanMin;
float3 oceanMax;
float4 oceanHeightmapSize;
float4 oceanHeightmapDims;
float4 oceanHeightmapView;
float3x3 oceanHeightmapTransform;
float4 oceanHeightmapUvMinMax;
float4 oceanHeightmapBorderColor;
float2 unpackVal;
float enableFluid;
float2 pressureRange;
float4 fluidPressureSize;
float4 fluidPressureDims;
float4 fluidPressureView;
float3x3 fluidPressureTransform;
float4 fluidPressureUvMinMax;
float4 fluidPressureBorderColor;
float fluidMul;
float4 screenTexSize;
float4 screenTexDims;
float4 screenTexView;
float3x3 screenTexTransform;
float4 screenTexUvMinMax;
float4 screenTexBorderColor;
float blurFactor;
float3 underwaterTint;
float enableLine;
float3 lineTint;
float meniscusThickness;
float2 Port_Input0_N228;
float2 Port_Import_N227;
float Port_Input1_N233;
float Port_Input1_N235;
float Port_Import_N225;
float Port_Value3_N237;
float2 Port_Import_N039;
float Port_Import_N040;
float Port_Input1_N050;
float2 Port_Import_N055;
float2 Port_Item0_N064;
float2 Port_Item1_N064;
float2 Port_Item2_N064;
float2 Port_Item3_N064;
float2 Port_Item4_N064;
float2 Port_Item5_N064;
float2 Port_Item6_N064;
float2 Port_Item7_N064;
float Port_Input2_N069;
float Port_Depth_N004;
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
texture2d<float> depthTarget [[id(1)]];
texture2d<float> fluidPressure [[id(2)]];
texture2d<float> intensityTexture [[id(3)]];
texture2d<float> oceanHeightmap [[id(4)]];
texture2d<float> sc_ScreenTexture [[id(16)]];
texture2d<float> screenTex [[id(19)]];
sampler depthTargetSmpSC [[id(20)]];
sampler fluidPressureSmpSC [[id(21)]];
sampler intensityTextureSmpSC [[id(22)]];
sampler oceanHeightmapSmpSC [[id(23)]];
sampler sc_ScreenTextureSmpSC [[id(28)]];
sampler screenTexSmpSC [[id(31)]];
constant userUniformsObj* UserUniforms [[id(32)]];
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
float3 WorldPosition=out.varPosAndMotion.xyz;
float3 WorldNormal=out.varNormalAndMotion.xyz;
float3 WorldTangent=out.varTangent.xyz;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPosAndMotion.xyz;
WorldNormal=out.varNormalAndMotion.xyz;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_1=v;
float3 param_2=WorldPosition;
float3 param_3=WorldNormal;
float3 param_4=WorldTangent;
float4 param_5=v.position;
out.varPosAndMotion=float4(param_2.x,param_2.y,param_2.z,out.varPosAndMotion.w);
float3 l9_122=normalize(param_3);
out.varNormalAndMotion=float4(l9_122.x,l9_122.y,l9_122.z,out.varNormalAndMotion.w);
float3 l9_123=normalize(param_4);
out.varTangent=float4(l9_123.x,l9_123.y,l9_123.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_124=param_1.position;
float4 l9_125=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_126=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_126=0;
}
else
{
l9_126=gl_InstanceIndex%2;
}
int l9_127=l9_126;
l9_125=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_127]*l9_124;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_128=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_128=0;
}
else
{
l9_128=gl_InstanceIndex%2;
}
int l9_129=l9_128;
l9_125=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_129]*l9_124;
}
else
{
if (sc_RenderingSpace_tmp==1)
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
l9_125=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_131]*l9_124;
}
else
{
l9_125=l9_124;
}
}
}
float4 l9_132=l9_125;
out.varViewSpaceDepth=-l9_132.z;
}
float4 l9_133=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_133=param_5;
}
else
{
if (sc_RenderingSpace_tmp==4)
{
int l9_134=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_134=0;
}
else
{
l9_134=gl_InstanceIndex%2;
}
int l9_135=l9_134;
l9_133=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_135]*param_1.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_136=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_136=0;
}
else
{
l9_136=gl_InstanceIndex%2;
}
int l9_137=l9_136;
l9_133=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_137]*float4(out.varPosAndMotion.xyz,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_138=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_138=0;
}
else
{
l9_138=gl_InstanceIndex%2;
}
int l9_139=l9_138;
l9_133=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_139]*float4(out.varPosAndMotion.xyz,1.0);
}
}
}
}
out.varTex01=float4(param_1.texture0,param_1.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_140=param_1.position;
float4 l9_141=l9_140;
if (sc_RenderingSpace_tmp==1)
{
l9_141=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_140;
}
float4 l9_142=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_141;
float2 l9_143=((l9_142.xy/float2(l9_142.w))*0.5)+float2(0.5);
out.varShadowTex=l9_143;
}
float4 l9_144=l9_133;
if (sc_DepthBufferMode_tmp==1)
{
int l9_145=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_145=0;
}
else
{
l9_145=gl_InstanceIndex%2;
}
int l9_146=l9_145;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_146][2].w!=0.0)
{
float l9_147=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_144.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_144.w))*l9_147)-1.0)*l9_144.w;
}
}
float4 l9_148=l9_144;
l9_133=l9_148;
float4 l9_149=l9_133;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_150=l9_149.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_149.w);
l9_149=float4(l9_150.x,l9_150.y,l9_149.z,l9_149.w);
}
float4 l9_151=l9_149;
l9_133=l9_151;
float4 l9_152=l9_133;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_152.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_153=l9_152;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_154=dot(l9_153,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_155=l9_154;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_155;
}
}
float4 l9_156=float4(l9_152.x,-l9_152.y,(l9_152.z*0.5)+(l9_152.w*0.5),l9_152.w);
out.gl_Position=l9_156;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_158=param_1;
sc_Vertex_t l9_159=l9_158;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_160=l9_159;
float3 l9_161=in.blendShape0Pos;
float3 l9_162=in.blendShape0Normal;
float l9_163=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_164=l9_160;
float3 l9_165=l9_161;
float l9_166=l9_163;
float3 l9_167=l9_164.position.xyz+(l9_165*l9_166);
l9_164.position=float4(l9_167.x,l9_167.y,l9_167.z,l9_164.position.w);
l9_160=l9_164;
l9_160.normal+=(l9_162*l9_163);
l9_159=l9_160;
sc_Vertex_t l9_168=l9_159;
float3 l9_169=in.blendShape1Pos;
float3 l9_170=in.blendShape1Normal;
float l9_171=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_172=l9_168;
float3 l9_173=l9_169;
float l9_174=l9_171;
float3 l9_175=l9_172.position.xyz+(l9_173*l9_174);
l9_172.position=float4(l9_175.x,l9_175.y,l9_175.z,l9_172.position.w);
l9_168=l9_172;
l9_168.normal+=(l9_170*l9_171);
l9_159=l9_168;
sc_Vertex_t l9_176=l9_159;
float3 l9_177=in.blendShape2Pos;
float3 l9_178=in.blendShape2Normal;
float l9_179=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_180=l9_176;
float3 l9_181=l9_177;
float l9_182=l9_179;
float3 l9_183=l9_180.position.xyz+(l9_181*l9_182);
l9_180.position=float4(l9_183.x,l9_183.y,l9_183.z,l9_180.position.w);
l9_176=l9_180;
l9_176.normal+=(l9_178*l9_179);
l9_159=l9_176;
}
else
{
sc_Vertex_t l9_184=l9_159;
float3 l9_185=in.blendShape0Pos;
float l9_186=(*sc_set0.UserUniforms).weights0.x;
float3 l9_187=l9_184.position.xyz+(l9_185*l9_186);
l9_184.position=float4(l9_187.x,l9_187.y,l9_187.z,l9_184.position.w);
l9_159=l9_184;
sc_Vertex_t l9_188=l9_159;
float3 l9_189=in.blendShape1Pos;
float l9_190=(*sc_set0.UserUniforms).weights0.y;
float3 l9_191=l9_188.position.xyz+(l9_189*l9_190);
l9_188.position=float4(l9_191.x,l9_191.y,l9_191.z,l9_188.position.w);
l9_159=l9_188;
sc_Vertex_t l9_192=l9_159;
float3 l9_193=in.blendShape2Pos;
float l9_194=(*sc_set0.UserUniforms).weights0.z;
float3 l9_195=l9_192.position.xyz+(l9_193*l9_194);
l9_192.position=float4(l9_195.x,l9_195.y,l9_195.z,l9_192.position.w);
l9_159=l9_192;
sc_Vertex_t l9_196=l9_159;
float3 l9_197=in.blendShape3Pos;
float l9_198=(*sc_set0.UserUniforms).weights0.w;
float3 l9_199=l9_196.position.xyz+(l9_197*l9_198);
l9_196.position=float4(l9_199.x,l9_199.y,l9_199.z,l9_196.position.w);
l9_159=l9_196;
sc_Vertex_t l9_200=l9_159;
float3 l9_201=in.blendShape4Pos;
float l9_202=(*sc_set0.UserUniforms).weights1.x;
float3 l9_203=l9_200.position.xyz+(l9_201*l9_202);
l9_200.position=float4(l9_203.x,l9_203.y,l9_203.z,l9_200.position.w);
l9_159=l9_200;
sc_Vertex_t l9_204=l9_159;
float3 l9_205=in.blendShape5Pos;
float l9_206=(*sc_set0.UserUniforms).weights1.y;
float3 l9_207=l9_204.position.xyz+(l9_205*l9_206);
l9_204.position=float4(l9_207.x,l9_207.y,l9_207.z,l9_204.position.w);
l9_159=l9_204;
}
}
l9_158=l9_159;
sc_Vertex_t l9_208=l9_158;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_209=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_209=float4(1.0,fract(in.boneData.yzw));
l9_209.x-=dot(l9_209.yzw,float3(1.0));
}
float4 l9_210=l9_209;
float4 l9_211=l9_210;
int l9_212=int(in.boneData.x);
int l9_213=int(in.boneData.y);
int l9_214=int(in.boneData.z);
int l9_215=int(in.boneData.w);
int l9_216=l9_212;
float4 l9_217=l9_208.position;
float3 l9_218=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_219=l9_216;
float4 l9_220=(*sc_set0.sc_BonesUBO).sc_Bones[l9_219].boneMatrix[0];
float4 l9_221=(*sc_set0.sc_BonesUBO).sc_Bones[l9_219].boneMatrix[1];
float4 l9_222=(*sc_set0.sc_BonesUBO).sc_Bones[l9_219].boneMatrix[2];
float4 l9_223[3];
l9_223[0]=l9_220;
l9_223[1]=l9_221;
l9_223[2]=l9_222;
l9_218=float3(dot(l9_217,l9_223[0]),dot(l9_217,l9_223[1]),dot(l9_217,l9_223[2]));
}
else
{
l9_218=l9_217.xyz;
}
float3 l9_224=l9_218;
float3 l9_225=l9_224;
float l9_226=l9_211.x;
int l9_227=l9_213;
float4 l9_228=l9_208.position;
float3 l9_229=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_230=l9_227;
float4 l9_231=(*sc_set0.sc_BonesUBO).sc_Bones[l9_230].boneMatrix[0];
float4 l9_232=(*sc_set0.sc_BonesUBO).sc_Bones[l9_230].boneMatrix[1];
float4 l9_233=(*sc_set0.sc_BonesUBO).sc_Bones[l9_230].boneMatrix[2];
float4 l9_234[3];
l9_234[0]=l9_231;
l9_234[1]=l9_232;
l9_234[2]=l9_233;
l9_229=float3(dot(l9_228,l9_234[0]),dot(l9_228,l9_234[1]),dot(l9_228,l9_234[2]));
}
else
{
l9_229=l9_228.xyz;
}
float3 l9_235=l9_229;
float3 l9_236=l9_235;
float l9_237=l9_211.y;
int l9_238=l9_214;
float4 l9_239=l9_208.position;
float3 l9_240=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_241=l9_238;
float4 l9_242=(*sc_set0.sc_BonesUBO).sc_Bones[l9_241].boneMatrix[0];
float4 l9_243=(*sc_set0.sc_BonesUBO).sc_Bones[l9_241].boneMatrix[1];
float4 l9_244=(*sc_set0.sc_BonesUBO).sc_Bones[l9_241].boneMatrix[2];
float4 l9_245[3];
l9_245[0]=l9_242;
l9_245[1]=l9_243;
l9_245[2]=l9_244;
l9_240=float3(dot(l9_239,l9_245[0]),dot(l9_239,l9_245[1]),dot(l9_239,l9_245[2]));
}
else
{
l9_240=l9_239.xyz;
}
float3 l9_246=l9_240;
float3 l9_247=l9_246;
float l9_248=l9_211.z;
int l9_249=l9_215;
float4 l9_250=l9_208.position;
float3 l9_251=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_252=l9_249;
float4 l9_253=(*sc_set0.sc_BonesUBO).sc_Bones[l9_252].boneMatrix[0];
float4 l9_254=(*sc_set0.sc_BonesUBO).sc_Bones[l9_252].boneMatrix[1];
float4 l9_255=(*sc_set0.sc_BonesUBO).sc_Bones[l9_252].boneMatrix[2];
float4 l9_256[3];
l9_256[0]=l9_253;
l9_256[1]=l9_254;
l9_256[2]=l9_255;
l9_251=float3(dot(l9_250,l9_256[0]),dot(l9_250,l9_256[1]),dot(l9_250,l9_256[2]));
}
else
{
l9_251=l9_250.xyz;
}
float3 l9_257=l9_251;
float3 l9_258=(((l9_225*l9_226)+(l9_236*l9_237))+(l9_247*l9_248))+(l9_257*l9_211.w);
l9_208.position=float4(l9_258.x,l9_258.y,l9_258.z,l9_208.position.w);
int l9_259=l9_212;
float3x3 l9_260=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_259].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_259].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_259].normalMatrix[2].xyz));
float3x3 l9_261=l9_260;
float3x3 l9_262=l9_261;
int l9_263=l9_213;
float3x3 l9_264=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_263].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_263].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_263].normalMatrix[2].xyz));
float3x3 l9_265=l9_264;
float3x3 l9_266=l9_265;
int l9_267=l9_214;
float3x3 l9_268=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_267].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_267].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_267].normalMatrix[2].xyz));
float3x3 l9_269=l9_268;
float3x3 l9_270=l9_269;
int l9_271=l9_215;
float3x3 l9_272=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_271].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_271].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_271].normalMatrix[2].xyz));
float3x3 l9_273=l9_272;
float3x3 l9_274=l9_273;
l9_208.normal=((((l9_262*l9_208.normal)*l9_211.x)+((l9_266*l9_208.normal)*l9_211.y))+((l9_270*l9_208.normal)*l9_211.z))+((l9_274*l9_208.normal)*l9_211.w);
l9_208.tangent=((((l9_262*l9_208.tangent)*l9_211.x)+((l9_266*l9_208.tangent)*l9_211.y))+((l9_270*l9_208.tangent)*l9_211.z))+((l9_274*l9_208.tangent)*l9_211.w);
}
l9_158=l9_208;
float l9_275=(*sc_set0.UserUniforms).voxelization_params_0.y;
float l9_276=(*sc_set0.UserUniforms).voxelization_params_0.z;
float l9_277=(*sc_set0.UserUniforms).voxelization_params_0.w;
float l9_278=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_279=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_280=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_281=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_282=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_283=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float3 l9_284=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float l9_285=l9_275/l9_276;
int l9_286=gl_InstanceIndex;
int l9_287=l9_286;
l9_158.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_158.position;
float3 l9_288=l9_158.position.xyz;
float3 l9_289=float3(float(l9_287%int(l9_277))*l9_275,float(l9_287/int(l9_277))*l9_275,(float(l9_287)*l9_285)+l9_282);
float3 l9_290=l9_288+l9_289;
float4 l9_291=float4(l9_290-l9_284,1.0);
float l9_292=l9_278;
float l9_293=l9_279;
float l9_294=l9_280;
float l9_295=l9_281;
float l9_296=l9_282;
float l9_297=l9_283;
float4x4 l9_298=float4x4(float4(2.0/(l9_293-l9_292),0.0,0.0,(-(l9_293+l9_292))/(l9_293-l9_292)),float4(0.0,2.0/(l9_295-l9_294),0.0,(-(l9_295+l9_294))/(l9_295-l9_294)),float4(0.0,0.0,(-2.0)/(l9_297-l9_296),(-(l9_297+l9_296))/(l9_297-l9_296)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_299=l9_298;
float4 l9_300=l9_299*l9_291;
l9_300.w=1.0;
out.varScreenPos=l9_300;
float4 l9_301=l9_300*1.0;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_301.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_302=l9_301;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_303=dot(l9_302,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_304=l9_303;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_304;
}
}
float4 l9_305=float4(l9_301.x,-l9_301.y,(l9_301.z*0.5)+(l9_301.w*0.5),l9_301.w);
out.gl_Position=l9_305;
param_1=l9_158;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
sc_Vertex_t l9_306=param_1;
sc_Vertex_t l9_307=l9_306;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_308=l9_307;
float3 l9_309=in.blendShape0Pos;
float3 l9_310=in.blendShape0Normal;
float l9_311=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_312=l9_308;
float3 l9_313=l9_309;
float l9_314=l9_311;
float3 l9_315=l9_312.position.xyz+(l9_313*l9_314);
l9_312.position=float4(l9_315.x,l9_315.y,l9_315.z,l9_312.position.w);
l9_308=l9_312;
l9_308.normal+=(l9_310*l9_311);
l9_307=l9_308;
sc_Vertex_t l9_316=l9_307;
float3 l9_317=in.blendShape1Pos;
float3 l9_318=in.blendShape1Normal;
float l9_319=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_320=l9_316;
float3 l9_321=l9_317;
float l9_322=l9_319;
float3 l9_323=l9_320.position.xyz+(l9_321*l9_322);
l9_320.position=float4(l9_323.x,l9_323.y,l9_323.z,l9_320.position.w);
l9_316=l9_320;
l9_316.normal+=(l9_318*l9_319);
l9_307=l9_316;
sc_Vertex_t l9_324=l9_307;
float3 l9_325=in.blendShape2Pos;
float3 l9_326=in.blendShape2Normal;
float l9_327=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_328=l9_324;
float3 l9_329=l9_325;
float l9_330=l9_327;
float3 l9_331=l9_328.position.xyz+(l9_329*l9_330);
l9_328.position=float4(l9_331.x,l9_331.y,l9_331.z,l9_328.position.w);
l9_324=l9_328;
l9_324.normal+=(l9_326*l9_327);
l9_307=l9_324;
}
else
{
sc_Vertex_t l9_332=l9_307;
float3 l9_333=in.blendShape0Pos;
float l9_334=(*sc_set0.UserUniforms).weights0.x;
float3 l9_335=l9_332.position.xyz+(l9_333*l9_334);
l9_332.position=float4(l9_335.x,l9_335.y,l9_335.z,l9_332.position.w);
l9_307=l9_332;
sc_Vertex_t l9_336=l9_307;
float3 l9_337=in.blendShape1Pos;
float l9_338=(*sc_set0.UserUniforms).weights0.y;
float3 l9_339=l9_336.position.xyz+(l9_337*l9_338);
l9_336.position=float4(l9_339.x,l9_339.y,l9_339.z,l9_336.position.w);
l9_307=l9_336;
sc_Vertex_t l9_340=l9_307;
float3 l9_341=in.blendShape2Pos;
float l9_342=(*sc_set0.UserUniforms).weights0.z;
float3 l9_343=l9_340.position.xyz+(l9_341*l9_342);
l9_340.position=float4(l9_343.x,l9_343.y,l9_343.z,l9_340.position.w);
l9_307=l9_340;
sc_Vertex_t l9_344=l9_307;
float3 l9_345=in.blendShape3Pos;
float l9_346=(*sc_set0.UserUniforms).weights0.w;
float3 l9_347=l9_344.position.xyz+(l9_345*l9_346);
l9_344.position=float4(l9_347.x,l9_347.y,l9_347.z,l9_344.position.w);
l9_307=l9_344;
sc_Vertex_t l9_348=l9_307;
float3 l9_349=in.blendShape4Pos;
float l9_350=(*sc_set0.UserUniforms).weights1.x;
float3 l9_351=l9_348.position.xyz+(l9_349*l9_350);
l9_348.position=float4(l9_351.x,l9_351.y,l9_351.z,l9_348.position.w);
l9_307=l9_348;
sc_Vertex_t l9_352=l9_307;
float3 l9_353=in.blendShape5Pos;
float l9_354=(*sc_set0.UserUniforms).weights1.y;
float3 l9_355=l9_352.position.xyz+(l9_353*l9_354);
l9_352.position=float4(l9_355.x,l9_355.y,l9_355.z,l9_352.position.w);
l9_307=l9_352;
}
}
l9_306=l9_307;
sc_Vertex_t l9_356=l9_306;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_357=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_357=float4(1.0,fract(in.boneData.yzw));
l9_357.x-=dot(l9_357.yzw,float3(1.0));
}
float4 l9_358=l9_357;
float4 l9_359=l9_358;
int l9_360=int(in.boneData.x);
int l9_361=int(in.boneData.y);
int l9_362=int(in.boneData.z);
int l9_363=int(in.boneData.w);
int l9_364=l9_360;
float4 l9_365=l9_356.position;
float3 l9_366=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_367=l9_364;
float4 l9_368=(*sc_set0.sc_BonesUBO).sc_Bones[l9_367].boneMatrix[0];
float4 l9_369=(*sc_set0.sc_BonesUBO).sc_Bones[l9_367].boneMatrix[1];
float4 l9_370=(*sc_set0.sc_BonesUBO).sc_Bones[l9_367].boneMatrix[2];
float4 l9_371[3];
l9_371[0]=l9_368;
l9_371[1]=l9_369;
l9_371[2]=l9_370;
l9_366=float3(dot(l9_365,l9_371[0]),dot(l9_365,l9_371[1]),dot(l9_365,l9_371[2]));
}
else
{
l9_366=l9_365.xyz;
}
float3 l9_372=l9_366;
float3 l9_373=l9_372;
float l9_374=l9_359.x;
int l9_375=l9_361;
float4 l9_376=l9_356.position;
float3 l9_377=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_378=l9_375;
float4 l9_379=(*sc_set0.sc_BonesUBO).sc_Bones[l9_378].boneMatrix[0];
float4 l9_380=(*sc_set0.sc_BonesUBO).sc_Bones[l9_378].boneMatrix[1];
float4 l9_381=(*sc_set0.sc_BonesUBO).sc_Bones[l9_378].boneMatrix[2];
float4 l9_382[3];
l9_382[0]=l9_379;
l9_382[1]=l9_380;
l9_382[2]=l9_381;
l9_377=float3(dot(l9_376,l9_382[0]),dot(l9_376,l9_382[1]),dot(l9_376,l9_382[2]));
}
else
{
l9_377=l9_376.xyz;
}
float3 l9_383=l9_377;
float3 l9_384=l9_383;
float l9_385=l9_359.y;
int l9_386=l9_362;
float4 l9_387=l9_356.position;
float3 l9_388=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_389=l9_386;
float4 l9_390=(*sc_set0.sc_BonesUBO).sc_Bones[l9_389].boneMatrix[0];
float4 l9_391=(*sc_set0.sc_BonesUBO).sc_Bones[l9_389].boneMatrix[1];
float4 l9_392=(*sc_set0.sc_BonesUBO).sc_Bones[l9_389].boneMatrix[2];
float4 l9_393[3];
l9_393[0]=l9_390;
l9_393[1]=l9_391;
l9_393[2]=l9_392;
l9_388=float3(dot(l9_387,l9_393[0]),dot(l9_387,l9_393[1]),dot(l9_387,l9_393[2]));
}
else
{
l9_388=l9_387.xyz;
}
float3 l9_394=l9_388;
float3 l9_395=l9_394;
float l9_396=l9_359.z;
int l9_397=l9_363;
float4 l9_398=l9_356.position;
float3 l9_399=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_400=l9_397;
float4 l9_401=(*sc_set0.sc_BonesUBO).sc_Bones[l9_400].boneMatrix[0];
float4 l9_402=(*sc_set0.sc_BonesUBO).sc_Bones[l9_400].boneMatrix[1];
float4 l9_403=(*sc_set0.sc_BonesUBO).sc_Bones[l9_400].boneMatrix[2];
float4 l9_404[3];
l9_404[0]=l9_401;
l9_404[1]=l9_402;
l9_404[2]=l9_403;
l9_399=float3(dot(l9_398,l9_404[0]),dot(l9_398,l9_404[1]),dot(l9_398,l9_404[2]));
}
else
{
l9_399=l9_398.xyz;
}
float3 l9_405=l9_399;
float3 l9_406=(((l9_373*l9_374)+(l9_384*l9_385))+(l9_395*l9_396))+(l9_405*l9_359.w);
l9_356.position=float4(l9_406.x,l9_406.y,l9_406.z,l9_356.position.w);
int l9_407=l9_360;
float3x3 l9_408=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_407].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_407].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_407].normalMatrix[2].xyz));
float3x3 l9_409=l9_408;
float3x3 l9_410=l9_409;
int l9_411=l9_361;
float3x3 l9_412=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_411].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_411].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_411].normalMatrix[2].xyz));
float3x3 l9_413=l9_412;
float3x3 l9_414=l9_413;
int l9_415=l9_362;
float3x3 l9_416=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_415].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_415].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_415].normalMatrix[2].xyz));
float3x3 l9_417=l9_416;
float3x3 l9_418=l9_417;
int l9_419=l9_363;
float3x3 l9_420=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_419].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_419].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_419].normalMatrix[2].xyz));
float3x3 l9_421=l9_420;
float3x3 l9_422=l9_421;
l9_356.normal=((((l9_410*l9_356.normal)*l9_359.x)+((l9_414*l9_356.normal)*l9_359.y))+((l9_418*l9_356.normal)*l9_359.z))+((l9_422*l9_356.normal)*l9_359.w);
l9_356.tangent=((((l9_410*l9_356.tangent)*l9_359.x)+((l9_414*l9_356.tangent)*l9_359.y))+((l9_418*l9_356.tangent)*l9_359.z))+((l9_422*l9_356.tangent)*l9_359.w);
}
l9_306=l9_356;
float3 l9_423=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float2 l9_424=((l9_306.position.xy/float2(l9_306.position.w))*0.5)+float2(0.5);
out.varTex01=float4(l9_424.x,l9_424.y,out.varTex01.z,out.varTex01.w);
l9_306.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_306.position;
float3 l9_425=l9_306.position.xyz-l9_423;
l9_306.position=float4(l9_425.x,l9_425.y,l9_425.z,l9_306.position.w);
out.varPosAndMotion=float4(l9_306.position.xyz.x,l9_306.position.xyz.y,l9_306.position.xyz.z,out.varPosAndMotion.w);
float3 l9_426=normalize(l9_306.normal);
out.varNormalAndMotion=float4(l9_426.x,l9_426.y,l9_426.z,out.varNormalAndMotion.w);
float l9_427=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_428=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_429=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_430=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_431=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_432=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float l9_433=l9_427;
float l9_434=l9_428;
float l9_435=l9_429;
float l9_436=l9_430;
float l9_437=l9_431;
float l9_438=l9_432;
float4x4 l9_439=float4x4(float4(2.0/(l9_434-l9_433),0.0,0.0,(-(l9_434+l9_433))/(l9_434-l9_433)),float4(0.0,2.0/(l9_436-l9_435),0.0,(-(l9_436+l9_435))/(l9_436-l9_435)),float4(0.0,0.0,(-2.0)/(l9_438-l9_437),(-(l9_438+l9_437))/(l9_438-l9_437)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_440=l9_439;
float4 l9_441=float4(0.0);
float3 l9_442=(l9_440*l9_306.position).xyz;
l9_441=float4(l9_442.x,l9_442.y,l9_442.z,l9_441.w);
l9_441.w=1.0;
out.varScreenPos=l9_441;
float4 l9_443=l9_441*1.0;
float4 l9_444=l9_443;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_444.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_445=l9_444;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_446=dot(l9_445,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_447=l9_446;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_447;
}
}
float4 l9_448=float4(l9_444.x,-l9_444.y,(l9_444.z*0.5)+(l9_444.w*0.5),l9_444.w);
out.gl_Position=l9_448;
param_1=l9_306;
}
}
v=param_1;
float3 param_6=out.varPosAndMotion.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float4 l9_449=((*sc_set0.UserUniforms).sc_PrevFrameModelMatrix*(*sc_set0.UserUniforms).sc_ModelMatrixInverse)*float4(param_6,1.0);
float3 l9_450=param_6;
float3 l9_451=l9_449.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
int l9_452=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_452=0;
}
else
{
l9_452=gl_InstanceIndex%2;
}
int l9_453=l9_452;
float4 l9_454=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_453]*float4(l9_450,1.0);
float2 l9_455=l9_454.xy/float2(l9_454.w);
l9_454=float4(l9_455.x,l9_455.y,l9_454.z,l9_454.w);
int l9_456=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_456=0;
}
else
{
l9_456=gl_InstanceIndex%2;
}
int l9_457=l9_456;
float4 l9_458=(*sc_set0.UserUniforms).sc_PrevFrameViewProjectionMatrixArray[l9_457]*float4(l9_451,1.0);
float2 l9_459=l9_458.xy/float2(l9_458.w);
l9_458=float4(l9_459.x,l9_459.y,l9_458.z,l9_458.w);
float2 l9_460=(l9_454.xy-l9_458.xy)*0.5;
out.varPosAndMotion.w=l9_460.x;
out.varNormalAndMotion.w=l9_460.y;
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
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float2 Surface_UVCoord0;
float2 gScreenCoord;
float CameraFOV;
float Loop_Index_ID0;
float Loop_Ratio_ID0;
float Loop_Count_ID0;
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
float4 depthTargetSize;
float4 depthTargetDims;
float4 depthTargetView;
float3x3 depthTargetTransform;
float4 depthTargetUvMinMax;
float4 depthTargetBorderColor;
float4 depthTargetProjectionMatrixTerms;
float3 oceanPos;
float3 oceanMin;
float3 oceanMax;
float4 oceanHeightmapSize;
float4 oceanHeightmapDims;
float4 oceanHeightmapView;
float3x3 oceanHeightmapTransform;
float4 oceanHeightmapUvMinMax;
float4 oceanHeightmapBorderColor;
float2 unpackVal;
float enableFluid;
float2 pressureRange;
float4 fluidPressureSize;
float4 fluidPressureDims;
float4 fluidPressureView;
float3x3 fluidPressureTransform;
float4 fluidPressureUvMinMax;
float4 fluidPressureBorderColor;
float fluidMul;
float4 screenTexSize;
float4 screenTexDims;
float4 screenTexView;
float3x3 screenTexTransform;
float4 screenTexUvMinMax;
float4 screenTexBorderColor;
float blurFactor;
float3 underwaterTint;
float enableLine;
float3 lineTint;
float meniscusThickness;
float2 Port_Input0_N228;
float2 Port_Import_N227;
float Port_Input1_N233;
float Port_Input1_N235;
float Port_Import_N225;
float Port_Value3_N237;
float2 Port_Import_N039;
float Port_Import_N040;
float Port_Input1_N050;
float2 Port_Import_N055;
float2 Port_Item0_N064;
float2 Port_Item1_N064;
float2 Port_Item2_N064;
float2 Port_Item3_N064;
float2 Port_Item4_N064;
float2 Port_Item5_N064;
float2 Port_Item6_N064;
float2 Port_Item7_N064;
float Port_Input2_N069;
float Port_Depth_N004;
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
texture2d<float> depthTarget [[id(1)]];
texture2d<float> fluidPressure [[id(2)]];
texture2d<float> intensityTexture [[id(3)]];
texture2d<float> oceanHeightmap [[id(4)]];
texture2d<float> sc_ScreenTexture [[id(16)]];
texture2d<float> screenTex [[id(19)]];
sampler depthTargetSmpSC [[id(20)]];
sampler fluidPressureSmpSC [[id(21)]];
sampler intensityTextureSmpSC [[id(22)]];
sampler oceanHeightmapSmpSC [[id(23)]];
sampler sc_ScreenTextureSmpSC [[id(28)]];
sampler screenTexSmpSC [[id(31)]];
constant userUniformsObj* UserUniforms [[id(32)]];
};
struct main_frag_out
{
float4 sc_FragData0 [[color(0)]];
float gl_FragDepth [[depth(any)]];
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
// Implementation of the GLSL radians() function
template<typename T>
T radians(T d)
{
return d*T(0.01745329251);
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
bool N5_EnableLine=false;
float3 N5_OceanSurfacePos=float3(0.0);
float3 N5_OceanWorldTransform=float3(0.0);
float3 N5_OceanAabbMin=float3(0.0);
float3 N5_OceanAabbMax=float3(0.0);
float2 N5_unpackVal=float2(0.0);
float N5_EnableFluid=0.0;
float2 N5_pressureRange=float2(0.0);
float N5_FluidMul=0.0;
float3 N5_Underwater=float3(0.0);
float3 N5_LineColor=float3(0.0);
float N5_Thickness=0.0;
float4 N5_Result=float4(0.0);
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
float4 FinalColor=float4(1.0);
float Depth=(*sc_set0.UserUniforms).Port_Depth_N004;
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
Globals.Surface_UVCoord0=in.varTex01.xy;
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
int l9_14=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_14=0;
}
else
{
l9_14=in.varStereoViewID;
}
int l9_15=l9_14;
Globals.CameraFOV=(atan(1.0/(*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_15][1].y)*2.0)*57.29578;
Globals.Loop_Index_ID0=0.0;
Globals.Loop_Ratio_ID0=0.0;
Globals.Loop_Count_ID0=0.0;
float4x4 Matrix_N224=float4x4(float4(0.0),float4(0.0),float4(0.0),float4(0.0));
int l9_16=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_16=0;
}
else
{
l9_16=in.varStereoViewID;
}
int l9_17=l9_16;
Matrix_N224=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_17];
float2 ScreenCoord_N14=float2(0.0);
ScreenCoord_N14=Globals.gScreenCoord;
float2 Value_N227=float2(0.0);
Value_N227=ScreenCoord_N14;
float2 Output_N228=float2(0.0);
Output_N228=(*sc_set0.UserUniforms).Port_Input0_N228-Value_N227;
float Camera_Aspect_N229=0.0;
Camera_Aspect_N229=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 Output_N230=float2(0.0);
Output_N230=float2(Camera_Aspect_N229,1.0);
float Camera_FOV_N231=0.0;
Camera_FOV_N231=Globals.CameraFOV;
float Output_N232=0.0;
Output_N232=radians(Camera_FOV_N231);
float Output_N233=0.0;
Output_N233=Output_N232*(*sc_set0.UserUniforms).Port_Input1_N233;
float Output_N234=0.0;
Output_N234=tan(Output_N233);
float Output_N235=0.0;
Output_N235=Output_N234*(*sc_set0.UserUniforms).Port_Input1_N235;
float Depth_N10=0.0;
int l9_18;
if ((int(depthTargetHasSwappedViews_tmp)!=0))
{
int l9_19=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_19=0;
}
else
{
l9_19=in.varStereoViewID;
}
int l9_20=l9_19;
l9_18=1-l9_20;
}
else
{
int l9_21=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_21=0;
}
else
{
l9_21=in.varStereoViewID;
}
int l9_22=l9_21;
l9_18=l9_22;
}
int l9_23=l9_18;
int param=depthTargetLayout_tmp;
int param_1=l9_23;
float2 param_2=Globals.Surface_UVCoord0;
bool param_3=(int(SC_USE_UV_TRANSFORM_depthTarget_tmp)!=0);
float3x3 param_4=(*sc_set0.UserUniforms).depthTargetTransform;
int2 param_5=int2(SC_SOFTWARE_WRAP_MODE_U_depthTarget_tmp,SC_SOFTWARE_WRAP_MODE_V_depthTarget_tmp);
bool param_6=(int(SC_USE_UV_MIN_MAX_depthTarget_tmp)!=0);
float4 param_7=(*sc_set0.UserUniforms).depthTargetUvMinMax;
bool param_8=(int(SC_USE_CLAMP_TO_BORDER_depthTarget_tmp)!=0);
float4 param_9=(*sc_set0.UserUniforms).depthTargetBorderColor;
float param_10=0.0;
bool l9_24=param_8&&(!param_6);
float l9_25=1.0;
float l9_26=param_2.x;
int l9_27=param_5.x;
if (l9_27==1)
{
l9_26=fract(l9_26);
}
else
{
if (l9_27==2)
{
float l9_28=fract(l9_26);
float l9_29=l9_26-l9_28;
float l9_30=step(0.25,fract(l9_29*0.5));
l9_26=mix(l9_28,1.0-l9_28,fast::clamp(l9_30,0.0,1.0));
}
}
param_2.x=l9_26;
float l9_31=param_2.y;
int l9_32=param_5.y;
if (l9_32==1)
{
l9_31=fract(l9_31);
}
else
{
if (l9_32==2)
{
float l9_33=fract(l9_31);
float l9_34=l9_31-l9_33;
float l9_35=step(0.25,fract(l9_34*0.5));
l9_31=mix(l9_33,1.0-l9_33,fast::clamp(l9_35,0.0,1.0));
}
}
param_2.y=l9_31;
if (param_6)
{
bool l9_36=param_8;
bool l9_37;
if (l9_36)
{
l9_37=param_5.x==3;
}
else
{
l9_37=l9_36;
}
float l9_38=param_2.x;
float l9_39=param_7.x;
float l9_40=param_7.z;
bool l9_41=l9_37;
float l9_42=l9_25;
float l9_43=fast::clamp(l9_38,l9_39,l9_40);
float l9_44=step(abs(l9_38-l9_43),9.9999997e-06);
l9_42*=(l9_44+((1.0-float(l9_41))*(1.0-l9_44)));
l9_38=l9_43;
param_2.x=l9_38;
l9_25=l9_42;
bool l9_45=param_8;
bool l9_46;
if (l9_45)
{
l9_46=param_5.y==3;
}
else
{
l9_46=l9_45;
}
float l9_47=param_2.y;
float l9_48=param_7.y;
float l9_49=param_7.w;
bool l9_50=l9_46;
float l9_51=l9_25;
float l9_52=fast::clamp(l9_47,l9_48,l9_49);
float l9_53=step(abs(l9_47-l9_52),9.9999997e-06);
l9_51*=(l9_53+((1.0-float(l9_50))*(1.0-l9_53)));
l9_47=l9_52;
param_2.y=l9_47;
l9_25=l9_51;
}
float2 l9_54=param_2;
bool l9_55=param_3;
float3x3 l9_56=param_4;
if (l9_55)
{
l9_54=float2((l9_56*float3(l9_54,1.0)).xy);
}
float2 l9_57=l9_54;
param_2=l9_57;
float l9_58=param_2.x;
int l9_59=param_5.x;
bool l9_60=l9_24;
float l9_61=l9_25;
if ((l9_59==0)||(l9_59==3))
{
float l9_62=l9_58;
float l9_63=0.0;
float l9_64=1.0;
bool l9_65=l9_60;
float l9_66=l9_61;
float l9_67=fast::clamp(l9_62,l9_63,l9_64);
float l9_68=step(abs(l9_62-l9_67),9.9999997e-06);
l9_66*=(l9_68+((1.0-float(l9_65))*(1.0-l9_68)));
l9_62=l9_67;
l9_58=l9_62;
l9_61=l9_66;
}
param_2.x=l9_58;
l9_25=l9_61;
float l9_69=param_2.y;
int l9_70=param_5.y;
bool l9_71=l9_24;
float l9_72=l9_25;
if ((l9_70==0)||(l9_70==3))
{
float l9_73=l9_69;
float l9_74=0.0;
float l9_75=1.0;
bool l9_76=l9_71;
float l9_77=l9_72;
float l9_78=fast::clamp(l9_73,l9_74,l9_75);
float l9_79=step(abs(l9_73-l9_78),9.9999997e-06);
l9_77*=(l9_79+((1.0-float(l9_76))*(1.0-l9_79)));
l9_73=l9_78;
l9_69=l9_73;
l9_72=l9_77;
}
param_2.y=l9_69;
l9_25=l9_72;
float2 l9_80=param_2;
int l9_81=param;
int l9_82=param_1;
float l9_83=param_10;
float2 l9_84=l9_80;
int l9_85=l9_81;
int l9_86=l9_82;
float3 l9_87=float3(0.0);
if (l9_85==0)
{
l9_87=float3(l9_84,0.0);
}
else
{
if (l9_85==1)
{
l9_87=float3(l9_84.x,(l9_84.y*0.5)+(0.5-(float(l9_86)*0.5)),0.0);
}
else
{
l9_87=float3(l9_84,float(l9_86));
}
}
float3 l9_88=l9_87;
float3 l9_89=l9_88;
float4 l9_90=sc_set0.depthTarget.sample(sc_set0.depthTargetSmpSC,l9_89.xy,bias(l9_83));
float4 l9_91=l9_90;
if (param_8)
{
l9_91=mix(param_9,l9_91,float4(l9_25));
}
float4 l9_92=l9_91;
float param_11=l9_92.x;
float4 param_12=(*sc_set0.UserUniforms).depthTargetProjectionMatrixTerms;
float l9_93=param_12.x;
float l9_94=param_12.y;
bool l9_95=param_12.z==0.0;
param_11=(param_11*2.0)-1.0;
float l9_96;
if (l9_95)
{
l9_96=(param_11-l9_94)/l9_93;
}
else
{
l9_96=l9_94/((-param_11)-l9_93);
}
float l9_97=l9_96;
Depth_N10=l9_97;
float Value_N225=0.0;
Value_N225=Depth_N10;
float2 Output_N236=float2(0.0);
Output_N236=((Output_N228*Output_N230)*float2(Output_N235))*float2(Value_N225);
float4 Value_N237=float4(0.0);
Value_N237=float4(Output_N236.x,Output_N236.y,Value_N237.z,Value_N237.w);
Value_N237.z=Value_N225;
Value_N237.w=(*sc_set0.UserUniforms).Port_Value3_N237;
float4 Output_N238=float4(0.0);
Output_N238=Matrix_N224*Value_N237;
float3 Export_N239=float3(0.0);
Export_N239=Output_N238.xyz;
float3 Output_N1=float3(0.0);
float3 param_13=(*sc_set0.UserUniforms).oceanPos;
Output_N1=param_13;
float3 Output_N6=float3(0.0);
float3 param_14=(*sc_set0.UserUniforms).oceanMin;
Output_N6=param_14;
float3 Output_N9=float3(0.0);
float3 param_15=(*sc_set0.UserUniforms).oceanMax;
Output_N9=param_15;
float2 Output_N7=float2(0.0);
float2 param_16=(*sc_set0.UserUniforms).unpackVal;
Output_N7=param_16;
float Output_N18=0.0;
float param_17=(*sc_set0.UserUniforms).enableFluid;
Output_N18=param_17;
float2 Output_N32=float2(0.0);
float2 param_18=(*sc_set0.UserUniforms).pressureRange;
Output_N32=param_18;
float Output_N22=0.0;
float param_19=(*sc_set0.UserUniforms).fluidMul;
Output_N22=param_19;
float2 ScreenCoord_N0=float2(0.0);
ScreenCoord_N0=Globals.gScreenCoord;
float2 Value_N39=float2(0.0);
Value_N39=ScreenCoord_N0;
float Output_N48=0.0;
float param_20=(*sc_set0.UserUniforms).blurFactor;
Output_N48=param_20;
float Value_N40=0.0;
Value_N40=Output_N48;
float Output_N50=0.0;
Output_N50=Value_N40+(*sc_set0.UserUniforms).Port_Input1_N050;
float4 Color_N54=float4(0.0);
int l9_98;
if ((int(screenTexHasSwappedViews_tmp)!=0))
{
int l9_99=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_99=0;
}
else
{
l9_99=in.varStereoViewID;
}
int l9_100=l9_99;
l9_98=1-l9_100;
}
else
{
int l9_101=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_101=0;
}
else
{
l9_101=in.varStereoViewID;
}
int l9_102=l9_101;
l9_98=l9_102;
}
int l9_103=l9_98;
int param_21=screenTexLayout_tmp;
int param_22=l9_103;
float2 param_23=Value_N39;
bool param_24=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 param_25=(*sc_set0.UserUniforms).screenTexTransform;
int2 param_26=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool param_27=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 param_28=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool param_29=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 param_30=(*sc_set0.UserUniforms).screenTexBorderColor;
float param_31=Output_N50;
bool l9_104=param_29&&(!param_27);
float l9_105=1.0;
float l9_106=param_23.x;
int l9_107=param_26.x;
if (l9_107==1)
{
l9_106=fract(l9_106);
}
else
{
if (l9_107==2)
{
float l9_108=fract(l9_106);
float l9_109=l9_106-l9_108;
float l9_110=step(0.25,fract(l9_109*0.5));
l9_106=mix(l9_108,1.0-l9_108,fast::clamp(l9_110,0.0,1.0));
}
}
param_23.x=l9_106;
float l9_111=param_23.y;
int l9_112=param_26.y;
if (l9_112==1)
{
l9_111=fract(l9_111);
}
else
{
if (l9_112==2)
{
float l9_113=fract(l9_111);
float l9_114=l9_111-l9_113;
float l9_115=step(0.25,fract(l9_114*0.5));
l9_111=mix(l9_113,1.0-l9_113,fast::clamp(l9_115,0.0,1.0));
}
}
param_23.y=l9_111;
if (param_27)
{
bool l9_116=param_29;
bool l9_117;
if (l9_116)
{
l9_117=param_26.x==3;
}
else
{
l9_117=l9_116;
}
float l9_118=param_23.x;
float l9_119=param_28.x;
float l9_120=param_28.z;
bool l9_121=l9_117;
float l9_122=l9_105;
float l9_123=fast::clamp(l9_118,l9_119,l9_120);
float l9_124=step(abs(l9_118-l9_123),9.9999997e-06);
l9_122*=(l9_124+((1.0-float(l9_121))*(1.0-l9_124)));
l9_118=l9_123;
param_23.x=l9_118;
l9_105=l9_122;
bool l9_125=param_29;
bool l9_126;
if (l9_125)
{
l9_126=param_26.y==3;
}
else
{
l9_126=l9_125;
}
float l9_127=param_23.y;
float l9_128=param_28.y;
float l9_129=param_28.w;
bool l9_130=l9_126;
float l9_131=l9_105;
float l9_132=fast::clamp(l9_127,l9_128,l9_129);
float l9_133=step(abs(l9_127-l9_132),9.9999997e-06);
l9_131*=(l9_133+((1.0-float(l9_130))*(1.0-l9_133)));
l9_127=l9_132;
param_23.y=l9_127;
l9_105=l9_131;
}
float2 l9_134=param_23;
bool l9_135=param_24;
float3x3 l9_136=param_25;
if (l9_135)
{
l9_134=float2((l9_136*float3(l9_134,1.0)).xy);
}
float2 l9_137=l9_134;
param_23=l9_137;
float l9_138=param_23.x;
int l9_139=param_26.x;
bool l9_140=l9_104;
float l9_141=l9_105;
if ((l9_139==0)||(l9_139==3))
{
float l9_142=l9_138;
float l9_143=0.0;
float l9_144=1.0;
bool l9_145=l9_140;
float l9_146=l9_141;
float l9_147=fast::clamp(l9_142,l9_143,l9_144);
float l9_148=step(abs(l9_142-l9_147),9.9999997e-06);
l9_146*=(l9_148+((1.0-float(l9_145))*(1.0-l9_148)));
l9_142=l9_147;
l9_138=l9_142;
l9_141=l9_146;
}
param_23.x=l9_138;
l9_105=l9_141;
float l9_149=param_23.y;
int l9_150=param_26.y;
bool l9_151=l9_104;
float l9_152=l9_105;
if ((l9_150==0)||(l9_150==3))
{
float l9_153=l9_149;
float l9_154=0.0;
float l9_155=1.0;
bool l9_156=l9_151;
float l9_157=l9_152;
float l9_158=fast::clamp(l9_153,l9_154,l9_155);
float l9_159=step(abs(l9_153-l9_158),9.9999997e-06);
l9_157*=(l9_159+((1.0-float(l9_156))*(1.0-l9_159)));
l9_153=l9_158;
l9_149=l9_153;
l9_152=l9_157;
}
param_23.y=l9_149;
l9_105=l9_152;
float2 l9_160=param_23;
int l9_161=param_21;
int l9_162=param_22;
float l9_163=param_31;
float2 l9_164=l9_160;
int l9_165=l9_161;
int l9_166=l9_162;
float3 l9_167=float3(0.0);
if (l9_165==0)
{
l9_167=float3(l9_164,0.0);
}
else
{
if (l9_165==1)
{
l9_167=float3(l9_164.x,(l9_164.y*0.5)+(0.5-(float(l9_166)*0.5)),0.0);
}
else
{
l9_167=float3(l9_164,float(l9_166));
}
}
float3 l9_168=l9_167;
float3 l9_169=l9_168;
float4 l9_170=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_169.xy,level(l9_163));
float4 l9_171=l9_170;
if (param_29)
{
l9_171=mix(param_30,l9_171,float4(l9_105));
}
float4 l9_172=l9_171;
Color_N54=l9_172;
float4 Output_N68=float4(0.0);
ssGlobals param_33=Globals;
float4 param_32=float4(0.0);
param_33.Loop_Count_ID0=8.0;
float4 l9_173=param_32;
ssGlobals l9_174=param_33;
float4 l9_175=float4(0.0);
l9_174.Loop_Index_ID0=0.0;
l9_174.Loop_Ratio_ID0=0.0;
float2 l9_176=float2(0.0);
float2 l9_177=(*sc_set0.UserUniforms).screenTexSize.zw;
l9_176=l9_177;
float2 l9_178=float2(0.0);
l9_178=l9_174.gScreenCoord;
float2 l9_179=float2(0.0);
l9_179=l9_178;
float2 l9_180=float2(0.0);
l9_180=l9_176;
float l9_181=0.0;
float l9_182=(*sc_set0.UserUniforms).blurFactor;
l9_181=l9_182;
float l9_183=0.0;
l9_183=l9_181;
float l9_184=0.0;
l9_184=exp2(l9_183);
float l9_185=0.0;
l9_185=l9_174.Loop_Index_ID0;
float2 l9_186=float2(0.0);
float l9_187=l9_185;
float2 l9_188=(*sc_set0.UserUniforms).Port_Item0_N064;
float2 l9_189=(*sc_set0.UserUniforms).Port_Item1_N064;
float2 l9_190=(*sc_set0.UserUniforms).Port_Item2_N064;
float2 l9_191=(*sc_set0.UserUniforms).Port_Item3_N064;
float2 l9_192=(*sc_set0.UserUniforms).Port_Item4_N064;
float2 l9_193=(*sc_set0.UserUniforms).Port_Item5_N064;
float2 l9_194=(*sc_set0.UserUniforms).Port_Item6_N064;
float2 l9_195=(*sc_set0.UserUniforms).Port_Item7_N064;
float2 l9_196[8];
l9_196[0]=l9_188;
l9_196[1]=l9_189;
l9_196[2]=l9_190;
l9_196[3]=l9_191;
l9_196[4]=l9_192;
l9_196[5]=l9_193;
l9_196[6]=l9_194;
l9_196[7]=l9_195;
int l9_197=int(fast::clamp(l9_187+9.9999997e-05,0.0,7.0));
float2 l9_198=l9_196[l9_197];
l9_186=l9_198;
float2 l9_199=float2(0.0);
l9_199=(l9_180*float2(l9_184))*l9_186;
float2 l9_200=float2(0.0);
l9_200=l9_179+l9_199;
float l9_201=0.0;
l9_201=l9_183+(*sc_set0.UserUniforms).Port_Input1_N050;
float4 l9_202=float4(0.0);
int l9_203;
if ((int(screenTexHasSwappedViews_tmp)!=0))
{
int l9_204=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_204=0;
}
else
{
l9_204=in.varStereoViewID;
}
int l9_205=l9_204;
l9_203=1-l9_205;
}
else
{
int l9_206=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_206=0;
}
else
{
l9_206=in.varStereoViewID;
}
int l9_207=l9_206;
l9_203=l9_207;
}
int l9_208=l9_203;
int l9_209=screenTexLayout_tmp;
int l9_210=l9_208;
float2 l9_211=l9_200;
bool l9_212=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 l9_213=(*sc_set0.UserUniforms).screenTexTransform;
int2 l9_214=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool l9_215=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 l9_216=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool l9_217=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 l9_218=(*sc_set0.UserUniforms).screenTexBorderColor;
float l9_219=l9_201;
bool l9_220=l9_217&&(!l9_215);
float l9_221=1.0;
float l9_222=l9_211.x;
int l9_223=l9_214.x;
if (l9_223==1)
{
l9_222=fract(l9_222);
}
else
{
if (l9_223==2)
{
float l9_224=fract(l9_222);
float l9_225=l9_222-l9_224;
float l9_226=step(0.25,fract(l9_225*0.5));
l9_222=mix(l9_224,1.0-l9_224,fast::clamp(l9_226,0.0,1.0));
}
}
l9_211.x=l9_222;
float l9_227=l9_211.y;
int l9_228=l9_214.y;
if (l9_228==1)
{
l9_227=fract(l9_227);
}
else
{
if (l9_228==2)
{
float l9_229=fract(l9_227);
float l9_230=l9_227-l9_229;
float l9_231=step(0.25,fract(l9_230*0.5));
l9_227=mix(l9_229,1.0-l9_229,fast::clamp(l9_231,0.0,1.0));
}
}
l9_211.y=l9_227;
if (l9_215)
{
bool l9_232=l9_217;
bool l9_233;
if (l9_232)
{
l9_233=l9_214.x==3;
}
else
{
l9_233=l9_232;
}
float l9_234=l9_211.x;
float l9_235=l9_216.x;
float l9_236=l9_216.z;
bool l9_237=l9_233;
float l9_238=l9_221;
float l9_239=fast::clamp(l9_234,l9_235,l9_236);
float l9_240=step(abs(l9_234-l9_239),9.9999997e-06);
l9_238*=(l9_240+((1.0-float(l9_237))*(1.0-l9_240)));
l9_234=l9_239;
l9_211.x=l9_234;
l9_221=l9_238;
bool l9_241=l9_217;
bool l9_242;
if (l9_241)
{
l9_242=l9_214.y==3;
}
else
{
l9_242=l9_241;
}
float l9_243=l9_211.y;
float l9_244=l9_216.y;
float l9_245=l9_216.w;
bool l9_246=l9_242;
float l9_247=l9_221;
float l9_248=fast::clamp(l9_243,l9_244,l9_245);
float l9_249=step(abs(l9_243-l9_248),9.9999997e-06);
l9_247*=(l9_249+((1.0-float(l9_246))*(1.0-l9_249)));
l9_243=l9_248;
l9_211.y=l9_243;
l9_221=l9_247;
}
float2 l9_250=l9_211;
bool l9_251=l9_212;
float3x3 l9_252=l9_213;
if (l9_251)
{
l9_250=float2((l9_252*float3(l9_250,1.0)).xy);
}
float2 l9_253=l9_250;
l9_211=l9_253;
float l9_254=l9_211.x;
int l9_255=l9_214.x;
bool l9_256=l9_220;
float l9_257=l9_221;
if ((l9_255==0)||(l9_255==3))
{
float l9_258=l9_254;
float l9_259=0.0;
float l9_260=1.0;
bool l9_261=l9_256;
float l9_262=l9_257;
float l9_263=fast::clamp(l9_258,l9_259,l9_260);
float l9_264=step(abs(l9_258-l9_263),9.9999997e-06);
l9_262*=(l9_264+((1.0-float(l9_261))*(1.0-l9_264)));
l9_258=l9_263;
l9_254=l9_258;
l9_257=l9_262;
}
l9_211.x=l9_254;
l9_221=l9_257;
float l9_265=l9_211.y;
int l9_266=l9_214.y;
bool l9_267=l9_220;
float l9_268=l9_221;
if ((l9_266==0)||(l9_266==3))
{
float l9_269=l9_265;
float l9_270=0.0;
float l9_271=1.0;
bool l9_272=l9_267;
float l9_273=l9_268;
float l9_274=fast::clamp(l9_269,l9_270,l9_271);
float l9_275=step(abs(l9_269-l9_274),9.9999997e-06);
l9_273*=(l9_275+((1.0-float(l9_272))*(1.0-l9_275)));
l9_269=l9_274;
l9_265=l9_269;
l9_268=l9_273;
}
l9_211.y=l9_265;
l9_221=l9_268;
float2 l9_276=l9_211;
int l9_277=l9_209;
int l9_278=l9_210;
float l9_279=l9_219;
float2 l9_280=l9_276;
int l9_281=l9_277;
int l9_282=l9_278;
float3 l9_283=float3(0.0);
if (l9_281==0)
{
l9_283=float3(l9_280,0.0);
}
else
{
if (l9_281==1)
{
l9_283=float3(l9_280.x,(l9_280.y*0.5)+(0.5-(float(l9_282)*0.5)),0.0);
}
else
{
l9_283=float3(l9_280,float(l9_282));
}
}
float3 l9_284=l9_283;
float3 l9_285=l9_284;
float4 l9_286=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_285.xy,level(l9_279));
float4 l9_287=l9_286;
if (l9_217)
{
l9_287=mix(l9_218,l9_287,float4(l9_221));
}
float4 l9_288=l9_287;
l9_202=l9_288;
l9_175=l9_202;
l9_173+=l9_175;
param_32=l9_173;
float4 l9_289=param_32;
ssGlobals l9_290=param_33;
float4 l9_291=float4(0.0);
l9_290.Loop_Index_ID0=1.0;
l9_290.Loop_Ratio_ID0=0.142857;
float2 l9_292=float2(0.0);
float2 l9_293=(*sc_set0.UserUniforms).screenTexSize.zw;
l9_292=l9_293;
float2 l9_294=float2(0.0);
l9_294=l9_290.gScreenCoord;
float2 l9_295=float2(0.0);
l9_295=l9_294;
float2 l9_296=float2(0.0);
l9_296=l9_292;
float l9_297=0.0;
float l9_298=(*sc_set0.UserUniforms).blurFactor;
l9_297=l9_298;
float l9_299=0.0;
l9_299=l9_297;
float l9_300=0.0;
l9_300=exp2(l9_299);
float l9_301=0.0;
l9_301=l9_290.Loop_Index_ID0;
float2 l9_302=float2(0.0);
float l9_303=l9_301;
float2 l9_304=(*sc_set0.UserUniforms).Port_Item0_N064;
float2 l9_305=(*sc_set0.UserUniforms).Port_Item1_N064;
float2 l9_306=(*sc_set0.UserUniforms).Port_Item2_N064;
float2 l9_307=(*sc_set0.UserUniforms).Port_Item3_N064;
float2 l9_308=(*sc_set0.UserUniforms).Port_Item4_N064;
float2 l9_309=(*sc_set0.UserUniforms).Port_Item5_N064;
float2 l9_310=(*sc_set0.UserUniforms).Port_Item6_N064;
float2 l9_311=(*sc_set0.UserUniforms).Port_Item7_N064;
float2 l9_312[8];
l9_312[0]=l9_304;
l9_312[1]=l9_305;
l9_312[2]=l9_306;
l9_312[3]=l9_307;
l9_312[4]=l9_308;
l9_312[5]=l9_309;
l9_312[6]=l9_310;
l9_312[7]=l9_311;
int l9_313=int(fast::clamp(l9_303+9.9999997e-05,0.0,7.0));
float2 l9_314=l9_312[l9_313];
l9_302=l9_314;
float2 l9_315=float2(0.0);
l9_315=(l9_296*float2(l9_300))*l9_302;
float2 l9_316=float2(0.0);
l9_316=l9_295+l9_315;
float l9_317=0.0;
l9_317=l9_299+(*sc_set0.UserUniforms).Port_Input1_N050;
float4 l9_318=float4(0.0);
int l9_319;
if ((int(screenTexHasSwappedViews_tmp)!=0))
{
int l9_320=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_320=0;
}
else
{
l9_320=in.varStereoViewID;
}
int l9_321=l9_320;
l9_319=1-l9_321;
}
else
{
int l9_322=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_322=0;
}
else
{
l9_322=in.varStereoViewID;
}
int l9_323=l9_322;
l9_319=l9_323;
}
int l9_324=l9_319;
int l9_325=screenTexLayout_tmp;
int l9_326=l9_324;
float2 l9_327=l9_316;
bool l9_328=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 l9_329=(*sc_set0.UserUniforms).screenTexTransform;
int2 l9_330=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool l9_331=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 l9_332=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool l9_333=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 l9_334=(*sc_set0.UserUniforms).screenTexBorderColor;
float l9_335=l9_317;
bool l9_336=l9_333&&(!l9_331);
float l9_337=1.0;
float l9_338=l9_327.x;
int l9_339=l9_330.x;
if (l9_339==1)
{
l9_338=fract(l9_338);
}
else
{
if (l9_339==2)
{
float l9_340=fract(l9_338);
float l9_341=l9_338-l9_340;
float l9_342=step(0.25,fract(l9_341*0.5));
l9_338=mix(l9_340,1.0-l9_340,fast::clamp(l9_342,0.0,1.0));
}
}
l9_327.x=l9_338;
float l9_343=l9_327.y;
int l9_344=l9_330.y;
if (l9_344==1)
{
l9_343=fract(l9_343);
}
else
{
if (l9_344==2)
{
float l9_345=fract(l9_343);
float l9_346=l9_343-l9_345;
float l9_347=step(0.25,fract(l9_346*0.5));
l9_343=mix(l9_345,1.0-l9_345,fast::clamp(l9_347,0.0,1.0));
}
}
l9_327.y=l9_343;
if (l9_331)
{
bool l9_348=l9_333;
bool l9_349;
if (l9_348)
{
l9_349=l9_330.x==3;
}
else
{
l9_349=l9_348;
}
float l9_350=l9_327.x;
float l9_351=l9_332.x;
float l9_352=l9_332.z;
bool l9_353=l9_349;
float l9_354=l9_337;
float l9_355=fast::clamp(l9_350,l9_351,l9_352);
float l9_356=step(abs(l9_350-l9_355),9.9999997e-06);
l9_354*=(l9_356+((1.0-float(l9_353))*(1.0-l9_356)));
l9_350=l9_355;
l9_327.x=l9_350;
l9_337=l9_354;
bool l9_357=l9_333;
bool l9_358;
if (l9_357)
{
l9_358=l9_330.y==3;
}
else
{
l9_358=l9_357;
}
float l9_359=l9_327.y;
float l9_360=l9_332.y;
float l9_361=l9_332.w;
bool l9_362=l9_358;
float l9_363=l9_337;
float l9_364=fast::clamp(l9_359,l9_360,l9_361);
float l9_365=step(abs(l9_359-l9_364),9.9999997e-06);
l9_363*=(l9_365+((1.0-float(l9_362))*(1.0-l9_365)));
l9_359=l9_364;
l9_327.y=l9_359;
l9_337=l9_363;
}
float2 l9_366=l9_327;
bool l9_367=l9_328;
float3x3 l9_368=l9_329;
if (l9_367)
{
l9_366=float2((l9_368*float3(l9_366,1.0)).xy);
}
float2 l9_369=l9_366;
l9_327=l9_369;
float l9_370=l9_327.x;
int l9_371=l9_330.x;
bool l9_372=l9_336;
float l9_373=l9_337;
if ((l9_371==0)||(l9_371==3))
{
float l9_374=l9_370;
float l9_375=0.0;
float l9_376=1.0;
bool l9_377=l9_372;
float l9_378=l9_373;
float l9_379=fast::clamp(l9_374,l9_375,l9_376);
float l9_380=step(abs(l9_374-l9_379),9.9999997e-06);
l9_378*=(l9_380+((1.0-float(l9_377))*(1.0-l9_380)));
l9_374=l9_379;
l9_370=l9_374;
l9_373=l9_378;
}
l9_327.x=l9_370;
l9_337=l9_373;
float l9_381=l9_327.y;
int l9_382=l9_330.y;
bool l9_383=l9_336;
float l9_384=l9_337;
if ((l9_382==0)||(l9_382==3))
{
float l9_385=l9_381;
float l9_386=0.0;
float l9_387=1.0;
bool l9_388=l9_383;
float l9_389=l9_384;
float l9_390=fast::clamp(l9_385,l9_386,l9_387);
float l9_391=step(abs(l9_385-l9_390),9.9999997e-06);
l9_389*=(l9_391+((1.0-float(l9_388))*(1.0-l9_391)));
l9_385=l9_390;
l9_381=l9_385;
l9_384=l9_389;
}
l9_327.y=l9_381;
l9_337=l9_384;
float2 l9_392=l9_327;
int l9_393=l9_325;
int l9_394=l9_326;
float l9_395=l9_335;
float2 l9_396=l9_392;
int l9_397=l9_393;
int l9_398=l9_394;
float3 l9_399=float3(0.0);
if (l9_397==0)
{
l9_399=float3(l9_396,0.0);
}
else
{
if (l9_397==1)
{
l9_399=float3(l9_396.x,(l9_396.y*0.5)+(0.5-(float(l9_398)*0.5)),0.0);
}
else
{
l9_399=float3(l9_396,float(l9_398));
}
}
float3 l9_400=l9_399;
float3 l9_401=l9_400;
float4 l9_402=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_401.xy,level(l9_395));
float4 l9_403=l9_402;
if (l9_333)
{
l9_403=mix(l9_334,l9_403,float4(l9_337));
}
float4 l9_404=l9_403;
l9_318=l9_404;
l9_291=l9_318;
l9_289+=l9_291;
param_32=l9_289;
float4 l9_405=param_32;
ssGlobals l9_406=param_33;
float4 l9_407=float4(0.0);
l9_406.Loop_Index_ID0=2.0;
l9_406.Loop_Ratio_ID0=0.285714;
float2 l9_408=float2(0.0);
float2 l9_409=(*sc_set0.UserUniforms).screenTexSize.zw;
l9_408=l9_409;
float2 l9_410=float2(0.0);
l9_410=l9_406.gScreenCoord;
float2 l9_411=float2(0.0);
l9_411=l9_410;
float2 l9_412=float2(0.0);
l9_412=l9_408;
float l9_413=0.0;
float l9_414=(*sc_set0.UserUniforms).blurFactor;
l9_413=l9_414;
float l9_415=0.0;
l9_415=l9_413;
float l9_416=0.0;
l9_416=exp2(l9_415);
float l9_417=0.0;
l9_417=l9_406.Loop_Index_ID0;
float2 l9_418=float2(0.0);
float l9_419=l9_417;
float2 l9_420=(*sc_set0.UserUniforms).Port_Item0_N064;
float2 l9_421=(*sc_set0.UserUniforms).Port_Item1_N064;
float2 l9_422=(*sc_set0.UserUniforms).Port_Item2_N064;
float2 l9_423=(*sc_set0.UserUniforms).Port_Item3_N064;
float2 l9_424=(*sc_set0.UserUniforms).Port_Item4_N064;
float2 l9_425=(*sc_set0.UserUniforms).Port_Item5_N064;
float2 l9_426=(*sc_set0.UserUniforms).Port_Item6_N064;
float2 l9_427=(*sc_set0.UserUniforms).Port_Item7_N064;
float2 l9_428[8];
l9_428[0]=l9_420;
l9_428[1]=l9_421;
l9_428[2]=l9_422;
l9_428[3]=l9_423;
l9_428[4]=l9_424;
l9_428[5]=l9_425;
l9_428[6]=l9_426;
l9_428[7]=l9_427;
int l9_429=int(fast::clamp(l9_419+9.9999997e-05,0.0,7.0));
float2 l9_430=l9_428[l9_429];
l9_418=l9_430;
float2 l9_431=float2(0.0);
l9_431=(l9_412*float2(l9_416))*l9_418;
float2 l9_432=float2(0.0);
l9_432=l9_411+l9_431;
float l9_433=0.0;
l9_433=l9_415+(*sc_set0.UserUniforms).Port_Input1_N050;
float4 l9_434=float4(0.0);
int l9_435;
if ((int(screenTexHasSwappedViews_tmp)!=0))
{
int l9_436=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_436=0;
}
else
{
l9_436=in.varStereoViewID;
}
int l9_437=l9_436;
l9_435=1-l9_437;
}
else
{
int l9_438=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_438=0;
}
else
{
l9_438=in.varStereoViewID;
}
int l9_439=l9_438;
l9_435=l9_439;
}
int l9_440=l9_435;
int l9_441=screenTexLayout_tmp;
int l9_442=l9_440;
float2 l9_443=l9_432;
bool l9_444=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 l9_445=(*sc_set0.UserUniforms).screenTexTransform;
int2 l9_446=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool l9_447=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 l9_448=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool l9_449=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 l9_450=(*sc_set0.UserUniforms).screenTexBorderColor;
float l9_451=l9_433;
bool l9_452=l9_449&&(!l9_447);
float l9_453=1.0;
float l9_454=l9_443.x;
int l9_455=l9_446.x;
if (l9_455==1)
{
l9_454=fract(l9_454);
}
else
{
if (l9_455==2)
{
float l9_456=fract(l9_454);
float l9_457=l9_454-l9_456;
float l9_458=step(0.25,fract(l9_457*0.5));
l9_454=mix(l9_456,1.0-l9_456,fast::clamp(l9_458,0.0,1.0));
}
}
l9_443.x=l9_454;
float l9_459=l9_443.y;
int l9_460=l9_446.y;
if (l9_460==1)
{
l9_459=fract(l9_459);
}
else
{
if (l9_460==2)
{
float l9_461=fract(l9_459);
float l9_462=l9_459-l9_461;
float l9_463=step(0.25,fract(l9_462*0.5));
l9_459=mix(l9_461,1.0-l9_461,fast::clamp(l9_463,0.0,1.0));
}
}
l9_443.y=l9_459;
if (l9_447)
{
bool l9_464=l9_449;
bool l9_465;
if (l9_464)
{
l9_465=l9_446.x==3;
}
else
{
l9_465=l9_464;
}
float l9_466=l9_443.x;
float l9_467=l9_448.x;
float l9_468=l9_448.z;
bool l9_469=l9_465;
float l9_470=l9_453;
float l9_471=fast::clamp(l9_466,l9_467,l9_468);
float l9_472=step(abs(l9_466-l9_471),9.9999997e-06);
l9_470*=(l9_472+((1.0-float(l9_469))*(1.0-l9_472)));
l9_466=l9_471;
l9_443.x=l9_466;
l9_453=l9_470;
bool l9_473=l9_449;
bool l9_474;
if (l9_473)
{
l9_474=l9_446.y==3;
}
else
{
l9_474=l9_473;
}
float l9_475=l9_443.y;
float l9_476=l9_448.y;
float l9_477=l9_448.w;
bool l9_478=l9_474;
float l9_479=l9_453;
float l9_480=fast::clamp(l9_475,l9_476,l9_477);
float l9_481=step(abs(l9_475-l9_480),9.9999997e-06);
l9_479*=(l9_481+((1.0-float(l9_478))*(1.0-l9_481)));
l9_475=l9_480;
l9_443.y=l9_475;
l9_453=l9_479;
}
float2 l9_482=l9_443;
bool l9_483=l9_444;
float3x3 l9_484=l9_445;
if (l9_483)
{
l9_482=float2((l9_484*float3(l9_482,1.0)).xy);
}
float2 l9_485=l9_482;
l9_443=l9_485;
float l9_486=l9_443.x;
int l9_487=l9_446.x;
bool l9_488=l9_452;
float l9_489=l9_453;
if ((l9_487==0)||(l9_487==3))
{
float l9_490=l9_486;
float l9_491=0.0;
float l9_492=1.0;
bool l9_493=l9_488;
float l9_494=l9_489;
float l9_495=fast::clamp(l9_490,l9_491,l9_492);
float l9_496=step(abs(l9_490-l9_495),9.9999997e-06);
l9_494*=(l9_496+((1.0-float(l9_493))*(1.0-l9_496)));
l9_490=l9_495;
l9_486=l9_490;
l9_489=l9_494;
}
l9_443.x=l9_486;
l9_453=l9_489;
float l9_497=l9_443.y;
int l9_498=l9_446.y;
bool l9_499=l9_452;
float l9_500=l9_453;
if ((l9_498==0)||(l9_498==3))
{
float l9_501=l9_497;
float l9_502=0.0;
float l9_503=1.0;
bool l9_504=l9_499;
float l9_505=l9_500;
float l9_506=fast::clamp(l9_501,l9_502,l9_503);
float l9_507=step(abs(l9_501-l9_506),9.9999997e-06);
l9_505*=(l9_507+((1.0-float(l9_504))*(1.0-l9_507)));
l9_501=l9_506;
l9_497=l9_501;
l9_500=l9_505;
}
l9_443.y=l9_497;
l9_453=l9_500;
float2 l9_508=l9_443;
int l9_509=l9_441;
int l9_510=l9_442;
float l9_511=l9_451;
float2 l9_512=l9_508;
int l9_513=l9_509;
int l9_514=l9_510;
float3 l9_515=float3(0.0);
if (l9_513==0)
{
l9_515=float3(l9_512,0.0);
}
else
{
if (l9_513==1)
{
l9_515=float3(l9_512.x,(l9_512.y*0.5)+(0.5-(float(l9_514)*0.5)),0.0);
}
else
{
l9_515=float3(l9_512,float(l9_514));
}
}
float3 l9_516=l9_515;
float3 l9_517=l9_516;
float4 l9_518=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_517.xy,level(l9_511));
float4 l9_519=l9_518;
if (l9_449)
{
l9_519=mix(l9_450,l9_519,float4(l9_453));
}
float4 l9_520=l9_519;
l9_434=l9_520;
l9_407=l9_434;
l9_405+=l9_407;
param_32=l9_405;
float4 l9_521=param_32;
ssGlobals l9_522=param_33;
float4 l9_523=float4(0.0);
l9_522.Loop_Index_ID0=3.0;
l9_522.Loop_Ratio_ID0=0.42857099;
float2 l9_524=float2(0.0);
float2 l9_525=(*sc_set0.UserUniforms).screenTexSize.zw;
l9_524=l9_525;
float2 l9_526=float2(0.0);
l9_526=l9_522.gScreenCoord;
float2 l9_527=float2(0.0);
l9_527=l9_526;
float2 l9_528=float2(0.0);
l9_528=l9_524;
float l9_529=0.0;
float l9_530=(*sc_set0.UserUniforms).blurFactor;
l9_529=l9_530;
float l9_531=0.0;
l9_531=l9_529;
float l9_532=0.0;
l9_532=exp2(l9_531);
float l9_533=0.0;
l9_533=l9_522.Loop_Index_ID0;
float2 l9_534=float2(0.0);
float l9_535=l9_533;
float2 l9_536=(*sc_set0.UserUniforms).Port_Item0_N064;
float2 l9_537=(*sc_set0.UserUniforms).Port_Item1_N064;
float2 l9_538=(*sc_set0.UserUniforms).Port_Item2_N064;
float2 l9_539=(*sc_set0.UserUniforms).Port_Item3_N064;
float2 l9_540=(*sc_set0.UserUniforms).Port_Item4_N064;
float2 l9_541=(*sc_set0.UserUniforms).Port_Item5_N064;
float2 l9_542=(*sc_set0.UserUniforms).Port_Item6_N064;
float2 l9_543=(*sc_set0.UserUniforms).Port_Item7_N064;
float2 l9_544[8];
l9_544[0]=l9_536;
l9_544[1]=l9_537;
l9_544[2]=l9_538;
l9_544[3]=l9_539;
l9_544[4]=l9_540;
l9_544[5]=l9_541;
l9_544[6]=l9_542;
l9_544[7]=l9_543;
int l9_545=int(fast::clamp(l9_535+9.9999997e-05,0.0,7.0));
float2 l9_546=l9_544[l9_545];
l9_534=l9_546;
float2 l9_547=float2(0.0);
l9_547=(l9_528*float2(l9_532))*l9_534;
float2 l9_548=float2(0.0);
l9_548=l9_527+l9_547;
float l9_549=0.0;
l9_549=l9_531+(*sc_set0.UserUniforms).Port_Input1_N050;
float4 l9_550=float4(0.0);
int l9_551;
if ((int(screenTexHasSwappedViews_tmp)!=0))
{
int l9_552=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_552=0;
}
else
{
l9_552=in.varStereoViewID;
}
int l9_553=l9_552;
l9_551=1-l9_553;
}
else
{
int l9_554=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_554=0;
}
else
{
l9_554=in.varStereoViewID;
}
int l9_555=l9_554;
l9_551=l9_555;
}
int l9_556=l9_551;
int l9_557=screenTexLayout_tmp;
int l9_558=l9_556;
float2 l9_559=l9_548;
bool l9_560=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 l9_561=(*sc_set0.UserUniforms).screenTexTransform;
int2 l9_562=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool l9_563=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 l9_564=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool l9_565=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 l9_566=(*sc_set0.UserUniforms).screenTexBorderColor;
float l9_567=l9_549;
bool l9_568=l9_565&&(!l9_563);
float l9_569=1.0;
float l9_570=l9_559.x;
int l9_571=l9_562.x;
if (l9_571==1)
{
l9_570=fract(l9_570);
}
else
{
if (l9_571==2)
{
float l9_572=fract(l9_570);
float l9_573=l9_570-l9_572;
float l9_574=step(0.25,fract(l9_573*0.5));
l9_570=mix(l9_572,1.0-l9_572,fast::clamp(l9_574,0.0,1.0));
}
}
l9_559.x=l9_570;
float l9_575=l9_559.y;
int l9_576=l9_562.y;
if (l9_576==1)
{
l9_575=fract(l9_575);
}
else
{
if (l9_576==2)
{
float l9_577=fract(l9_575);
float l9_578=l9_575-l9_577;
float l9_579=step(0.25,fract(l9_578*0.5));
l9_575=mix(l9_577,1.0-l9_577,fast::clamp(l9_579,0.0,1.0));
}
}
l9_559.y=l9_575;
if (l9_563)
{
bool l9_580=l9_565;
bool l9_581;
if (l9_580)
{
l9_581=l9_562.x==3;
}
else
{
l9_581=l9_580;
}
float l9_582=l9_559.x;
float l9_583=l9_564.x;
float l9_584=l9_564.z;
bool l9_585=l9_581;
float l9_586=l9_569;
float l9_587=fast::clamp(l9_582,l9_583,l9_584);
float l9_588=step(abs(l9_582-l9_587),9.9999997e-06);
l9_586*=(l9_588+((1.0-float(l9_585))*(1.0-l9_588)));
l9_582=l9_587;
l9_559.x=l9_582;
l9_569=l9_586;
bool l9_589=l9_565;
bool l9_590;
if (l9_589)
{
l9_590=l9_562.y==3;
}
else
{
l9_590=l9_589;
}
float l9_591=l9_559.y;
float l9_592=l9_564.y;
float l9_593=l9_564.w;
bool l9_594=l9_590;
float l9_595=l9_569;
float l9_596=fast::clamp(l9_591,l9_592,l9_593);
float l9_597=step(abs(l9_591-l9_596),9.9999997e-06);
l9_595*=(l9_597+((1.0-float(l9_594))*(1.0-l9_597)));
l9_591=l9_596;
l9_559.y=l9_591;
l9_569=l9_595;
}
float2 l9_598=l9_559;
bool l9_599=l9_560;
float3x3 l9_600=l9_561;
if (l9_599)
{
l9_598=float2((l9_600*float3(l9_598,1.0)).xy);
}
float2 l9_601=l9_598;
l9_559=l9_601;
float l9_602=l9_559.x;
int l9_603=l9_562.x;
bool l9_604=l9_568;
float l9_605=l9_569;
if ((l9_603==0)||(l9_603==3))
{
float l9_606=l9_602;
float l9_607=0.0;
float l9_608=1.0;
bool l9_609=l9_604;
float l9_610=l9_605;
float l9_611=fast::clamp(l9_606,l9_607,l9_608);
float l9_612=step(abs(l9_606-l9_611),9.9999997e-06);
l9_610*=(l9_612+((1.0-float(l9_609))*(1.0-l9_612)));
l9_606=l9_611;
l9_602=l9_606;
l9_605=l9_610;
}
l9_559.x=l9_602;
l9_569=l9_605;
float l9_613=l9_559.y;
int l9_614=l9_562.y;
bool l9_615=l9_568;
float l9_616=l9_569;
if ((l9_614==0)||(l9_614==3))
{
float l9_617=l9_613;
float l9_618=0.0;
float l9_619=1.0;
bool l9_620=l9_615;
float l9_621=l9_616;
float l9_622=fast::clamp(l9_617,l9_618,l9_619);
float l9_623=step(abs(l9_617-l9_622),9.9999997e-06);
l9_621*=(l9_623+((1.0-float(l9_620))*(1.0-l9_623)));
l9_617=l9_622;
l9_613=l9_617;
l9_616=l9_621;
}
l9_559.y=l9_613;
l9_569=l9_616;
float2 l9_624=l9_559;
int l9_625=l9_557;
int l9_626=l9_558;
float l9_627=l9_567;
float2 l9_628=l9_624;
int l9_629=l9_625;
int l9_630=l9_626;
float3 l9_631=float3(0.0);
if (l9_629==0)
{
l9_631=float3(l9_628,0.0);
}
else
{
if (l9_629==1)
{
l9_631=float3(l9_628.x,(l9_628.y*0.5)+(0.5-(float(l9_630)*0.5)),0.0);
}
else
{
l9_631=float3(l9_628,float(l9_630));
}
}
float3 l9_632=l9_631;
float3 l9_633=l9_632;
float4 l9_634=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_633.xy,level(l9_627));
float4 l9_635=l9_634;
if (l9_565)
{
l9_635=mix(l9_566,l9_635,float4(l9_569));
}
float4 l9_636=l9_635;
l9_550=l9_636;
l9_523=l9_550;
l9_521+=l9_523;
param_32=l9_521;
float4 l9_637=param_32;
ssGlobals l9_638=param_33;
float4 l9_639=float4(0.0);
l9_638.Loop_Index_ID0=4.0;
l9_638.Loop_Ratio_ID0=0.57142901;
float2 l9_640=float2(0.0);
float2 l9_641=(*sc_set0.UserUniforms).screenTexSize.zw;
l9_640=l9_641;
float2 l9_642=float2(0.0);
l9_642=l9_638.gScreenCoord;
float2 l9_643=float2(0.0);
l9_643=l9_642;
float2 l9_644=float2(0.0);
l9_644=l9_640;
float l9_645=0.0;
float l9_646=(*sc_set0.UserUniforms).blurFactor;
l9_645=l9_646;
float l9_647=0.0;
l9_647=l9_645;
float l9_648=0.0;
l9_648=exp2(l9_647);
float l9_649=0.0;
l9_649=l9_638.Loop_Index_ID0;
float2 l9_650=float2(0.0);
float l9_651=l9_649;
float2 l9_652=(*sc_set0.UserUniforms).Port_Item0_N064;
float2 l9_653=(*sc_set0.UserUniforms).Port_Item1_N064;
float2 l9_654=(*sc_set0.UserUniforms).Port_Item2_N064;
float2 l9_655=(*sc_set0.UserUniforms).Port_Item3_N064;
float2 l9_656=(*sc_set0.UserUniforms).Port_Item4_N064;
float2 l9_657=(*sc_set0.UserUniforms).Port_Item5_N064;
float2 l9_658=(*sc_set0.UserUniforms).Port_Item6_N064;
float2 l9_659=(*sc_set0.UserUniforms).Port_Item7_N064;
float2 l9_660[8];
l9_660[0]=l9_652;
l9_660[1]=l9_653;
l9_660[2]=l9_654;
l9_660[3]=l9_655;
l9_660[4]=l9_656;
l9_660[5]=l9_657;
l9_660[6]=l9_658;
l9_660[7]=l9_659;
int l9_661=int(fast::clamp(l9_651+9.9999997e-05,0.0,7.0));
float2 l9_662=l9_660[l9_661];
l9_650=l9_662;
float2 l9_663=float2(0.0);
l9_663=(l9_644*float2(l9_648))*l9_650;
float2 l9_664=float2(0.0);
l9_664=l9_643+l9_663;
float l9_665=0.0;
l9_665=l9_647+(*sc_set0.UserUniforms).Port_Input1_N050;
float4 l9_666=float4(0.0);
int l9_667;
if ((int(screenTexHasSwappedViews_tmp)!=0))
{
int l9_668=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_668=0;
}
else
{
l9_668=in.varStereoViewID;
}
int l9_669=l9_668;
l9_667=1-l9_669;
}
else
{
int l9_670=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_670=0;
}
else
{
l9_670=in.varStereoViewID;
}
int l9_671=l9_670;
l9_667=l9_671;
}
int l9_672=l9_667;
int l9_673=screenTexLayout_tmp;
int l9_674=l9_672;
float2 l9_675=l9_664;
bool l9_676=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 l9_677=(*sc_set0.UserUniforms).screenTexTransform;
int2 l9_678=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool l9_679=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 l9_680=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool l9_681=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 l9_682=(*sc_set0.UserUniforms).screenTexBorderColor;
float l9_683=l9_665;
bool l9_684=l9_681&&(!l9_679);
float l9_685=1.0;
float l9_686=l9_675.x;
int l9_687=l9_678.x;
if (l9_687==1)
{
l9_686=fract(l9_686);
}
else
{
if (l9_687==2)
{
float l9_688=fract(l9_686);
float l9_689=l9_686-l9_688;
float l9_690=step(0.25,fract(l9_689*0.5));
l9_686=mix(l9_688,1.0-l9_688,fast::clamp(l9_690,0.0,1.0));
}
}
l9_675.x=l9_686;
float l9_691=l9_675.y;
int l9_692=l9_678.y;
if (l9_692==1)
{
l9_691=fract(l9_691);
}
else
{
if (l9_692==2)
{
float l9_693=fract(l9_691);
float l9_694=l9_691-l9_693;
float l9_695=step(0.25,fract(l9_694*0.5));
l9_691=mix(l9_693,1.0-l9_693,fast::clamp(l9_695,0.0,1.0));
}
}
l9_675.y=l9_691;
if (l9_679)
{
bool l9_696=l9_681;
bool l9_697;
if (l9_696)
{
l9_697=l9_678.x==3;
}
else
{
l9_697=l9_696;
}
float l9_698=l9_675.x;
float l9_699=l9_680.x;
float l9_700=l9_680.z;
bool l9_701=l9_697;
float l9_702=l9_685;
float l9_703=fast::clamp(l9_698,l9_699,l9_700);
float l9_704=step(abs(l9_698-l9_703),9.9999997e-06);
l9_702*=(l9_704+((1.0-float(l9_701))*(1.0-l9_704)));
l9_698=l9_703;
l9_675.x=l9_698;
l9_685=l9_702;
bool l9_705=l9_681;
bool l9_706;
if (l9_705)
{
l9_706=l9_678.y==3;
}
else
{
l9_706=l9_705;
}
float l9_707=l9_675.y;
float l9_708=l9_680.y;
float l9_709=l9_680.w;
bool l9_710=l9_706;
float l9_711=l9_685;
float l9_712=fast::clamp(l9_707,l9_708,l9_709);
float l9_713=step(abs(l9_707-l9_712),9.9999997e-06);
l9_711*=(l9_713+((1.0-float(l9_710))*(1.0-l9_713)));
l9_707=l9_712;
l9_675.y=l9_707;
l9_685=l9_711;
}
float2 l9_714=l9_675;
bool l9_715=l9_676;
float3x3 l9_716=l9_677;
if (l9_715)
{
l9_714=float2((l9_716*float3(l9_714,1.0)).xy);
}
float2 l9_717=l9_714;
l9_675=l9_717;
float l9_718=l9_675.x;
int l9_719=l9_678.x;
bool l9_720=l9_684;
float l9_721=l9_685;
if ((l9_719==0)||(l9_719==3))
{
float l9_722=l9_718;
float l9_723=0.0;
float l9_724=1.0;
bool l9_725=l9_720;
float l9_726=l9_721;
float l9_727=fast::clamp(l9_722,l9_723,l9_724);
float l9_728=step(abs(l9_722-l9_727),9.9999997e-06);
l9_726*=(l9_728+((1.0-float(l9_725))*(1.0-l9_728)));
l9_722=l9_727;
l9_718=l9_722;
l9_721=l9_726;
}
l9_675.x=l9_718;
l9_685=l9_721;
float l9_729=l9_675.y;
int l9_730=l9_678.y;
bool l9_731=l9_684;
float l9_732=l9_685;
if ((l9_730==0)||(l9_730==3))
{
float l9_733=l9_729;
float l9_734=0.0;
float l9_735=1.0;
bool l9_736=l9_731;
float l9_737=l9_732;
float l9_738=fast::clamp(l9_733,l9_734,l9_735);
float l9_739=step(abs(l9_733-l9_738),9.9999997e-06);
l9_737*=(l9_739+((1.0-float(l9_736))*(1.0-l9_739)));
l9_733=l9_738;
l9_729=l9_733;
l9_732=l9_737;
}
l9_675.y=l9_729;
l9_685=l9_732;
float2 l9_740=l9_675;
int l9_741=l9_673;
int l9_742=l9_674;
float l9_743=l9_683;
float2 l9_744=l9_740;
int l9_745=l9_741;
int l9_746=l9_742;
float3 l9_747=float3(0.0);
if (l9_745==0)
{
l9_747=float3(l9_744,0.0);
}
else
{
if (l9_745==1)
{
l9_747=float3(l9_744.x,(l9_744.y*0.5)+(0.5-(float(l9_746)*0.5)),0.0);
}
else
{
l9_747=float3(l9_744,float(l9_746));
}
}
float3 l9_748=l9_747;
float3 l9_749=l9_748;
float4 l9_750=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_749.xy,level(l9_743));
float4 l9_751=l9_750;
if (l9_681)
{
l9_751=mix(l9_682,l9_751,float4(l9_685));
}
float4 l9_752=l9_751;
l9_666=l9_752;
l9_639=l9_666;
l9_637+=l9_639;
param_32=l9_637;
float4 l9_753=param_32;
ssGlobals l9_754=param_33;
float4 l9_755=float4(0.0);
l9_754.Loop_Index_ID0=5.0;
l9_754.Loop_Ratio_ID0=0.71428603;
float2 l9_756=float2(0.0);
float2 l9_757=(*sc_set0.UserUniforms).screenTexSize.zw;
l9_756=l9_757;
float2 l9_758=float2(0.0);
l9_758=l9_754.gScreenCoord;
float2 l9_759=float2(0.0);
l9_759=l9_758;
float2 l9_760=float2(0.0);
l9_760=l9_756;
float l9_761=0.0;
float l9_762=(*sc_set0.UserUniforms).blurFactor;
l9_761=l9_762;
float l9_763=0.0;
l9_763=l9_761;
float l9_764=0.0;
l9_764=exp2(l9_763);
float l9_765=0.0;
l9_765=l9_754.Loop_Index_ID0;
float2 l9_766=float2(0.0);
float l9_767=l9_765;
float2 l9_768=(*sc_set0.UserUniforms).Port_Item0_N064;
float2 l9_769=(*sc_set0.UserUniforms).Port_Item1_N064;
float2 l9_770=(*sc_set0.UserUniforms).Port_Item2_N064;
float2 l9_771=(*sc_set0.UserUniforms).Port_Item3_N064;
float2 l9_772=(*sc_set0.UserUniforms).Port_Item4_N064;
float2 l9_773=(*sc_set0.UserUniforms).Port_Item5_N064;
float2 l9_774=(*sc_set0.UserUniforms).Port_Item6_N064;
float2 l9_775=(*sc_set0.UserUniforms).Port_Item7_N064;
float2 l9_776[8];
l9_776[0]=l9_768;
l9_776[1]=l9_769;
l9_776[2]=l9_770;
l9_776[3]=l9_771;
l9_776[4]=l9_772;
l9_776[5]=l9_773;
l9_776[6]=l9_774;
l9_776[7]=l9_775;
int l9_777=int(fast::clamp(l9_767+9.9999997e-05,0.0,7.0));
float2 l9_778=l9_776[l9_777];
l9_766=l9_778;
float2 l9_779=float2(0.0);
l9_779=(l9_760*float2(l9_764))*l9_766;
float2 l9_780=float2(0.0);
l9_780=l9_759+l9_779;
float l9_781=0.0;
l9_781=l9_763+(*sc_set0.UserUniforms).Port_Input1_N050;
float4 l9_782=float4(0.0);
int l9_783;
if ((int(screenTexHasSwappedViews_tmp)!=0))
{
int l9_784=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_784=0;
}
else
{
l9_784=in.varStereoViewID;
}
int l9_785=l9_784;
l9_783=1-l9_785;
}
else
{
int l9_786=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_786=0;
}
else
{
l9_786=in.varStereoViewID;
}
int l9_787=l9_786;
l9_783=l9_787;
}
int l9_788=l9_783;
int l9_789=screenTexLayout_tmp;
int l9_790=l9_788;
float2 l9_791=l9_780;
bool l9_792=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 l9_793=(*sc_set0.UserUniforms).screenTexTransform;
int2 l9_794=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool l9_795=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 l9_796=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool l9_797=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 l9_798=(*sc_set0.UserUniforms).screenTexBorderColor;
float l9_799=l9_781;
bool l9_800=l9_797&&(!l9_795);
float l9_801=1.0;
float l9_802=l9_791.x;
int l9_803=l9_794.x;
if (l9_803==1)
{
l9_802=fract(l9_802);
}
else
{
if (l9_803==2)
{
float l9_804=fract(l9_802);
float l9_805=l9_802-l9_804;
float l9_806=step(0.25,fract(l9_805*0.5));
l9_802=mix(l9_804,1.0-l9_804,fast::clamp(l9_806,0.0,1.0));
}
}
l9_791.x=l9_802;
float l9_807=l9_791.y;
int l9_808=l9_794.y;
if (l9_808==1)
{
l9_807=fract(l9_807);
}
else
{
if (l9_808==2)
{
float l9_809=fract(l9_807);
float l9_810=l9_807-l9_809;
float l9_811=step(0.25,fract(l9_810*0.5));
l9_807=mix(l9_809,1.0-l9_809,fast::clamp(l9_811,0.0,1.0));
}
}
l9_791.y=l9_807;
if (l9_795)
{
bool l9_812=l9_797;
bool l9_813;
if (l9_812)
{
l9_813=l9_794.x==3;
}
else
{
l9_813=l9_812;
}
float l9_814=l9_791.x;
float l9_815=l9_796.x;
float l9_816=l9_796.z;
bool l9_817=l9_813;
float l9_818=l9_801;
float l9_819=fast::clamp(l9_814,l9_815,l9_816);
float l9_820=step(abs(l9_814-l9_819),9.9999997e-06);
l9_818*=(l9_820+((1.0-float(l9_817))*(1.0-l9_820)));
l9_814=l9_819;
l9_791.x=l9_814;
l9_801=l9_818;
bool l9_821=l9_797;
bool l9_822;
if (l9_821)
{
l9_822=l9_794.y==3;
}
else
{
l9_822=l9_821;
}
float l9_823=l9_791.y;
float l9_824=l9_796.y;
float l9_825=l9_796.w;
bool l9_826=l9_822;
float l9_827=l9_801;
float l9_828=fast::clamp(l9_823,l9_824,l9_825);
float l9_829=step(abs(l9_823-l9_828),9.9999997e-06);
l9_827*=(l9_829+((1.0-float(l9_826))*(1.0-l9_829)));
l9_823=l9_828;
l9_791.y=l9_823;
l9_801=l9_827;
}
float2 l9_830=l9_791;
bool l9_831=l9_792;
float3x3 l9_832=l9_793;
if (l9_831)
{
l9_830=float2((l9_832*float3(l9_830,1.0)).xy);
}
float2 l9_833=l9_830;
l9_791=l9_833;
float l9_834=l9_791.x;
int l9_835=l9_794.x;
bool l9_836=l9_800;
float l9_837=l9_801;
if ((l9_835==0)||(l9_835==3))
{
float l9_838=l9_834;
float l9_839=0.0;
float l9_840=1.0;
bool l9_841=l9_836;
float l9_842=l9_837;
float l9_843=fast::clamp(l9_838,l9_839,l9_840);
float l9_844=step(abs(l9_838-l9_843),9.9999997e-06);
l9_842*=(l9_844+((1.0-float(l9_841))*(1.0-l9_844)));
l9_838=l9_843;
l9_834=l9_838;
l9_837=l9_842;
}
l9_791.x=l9_834;
l9_801=l9_837;
float l9_845=l9_791.y;
int l9_846=l9_794.y;
bool l9_847=l9_800;
float l9_848=l9_801;
if ((l9_846==0)||(l9_846==3))
{
float l9_849=l9_845;
float l9_850=0.0;
float l9_851=1.0;
bool l9_852=l9_847;
float l9_853=l9_848;
float l9_854=fast::clamp(l9_849,l9_850,l9_851);
float l9_855=step(abs(l9_849-l9_854),9.9999997e-06);
l9_853*=(l9_855+((1.0-float(l9_852))*(1.0-l9_855)));
l9_849=l9_854;
l9_845=l9_849;
l9_848=l9_853;
}
l9_791.y=l9_845;
l9_801=l9_848;
float2 l9_856=l9_791;
int l9_857=l9_789;
int l9_858=l9_790;
float l9_859=l9_799;
float2 l9_860=l9_856;
int l9_861=l9_857;
int l9_862=l9_858;
float3 l9_863=float3(0.0);
if (l9_861==0)
{
l9_863=float3(l9_860,0.0);
}
else
{
if (l9_861==1)
{
l9_863=float3(l9_860.x,(l9_860.y*0.5)+(0.5-(float(l9_862)*0.5)),0.0);
}
else
{
l9_863=float3(l9_860,float(l9_862));
}
}
float3 l9_864=l9_863;
float3 l9_865=l9_864;
float4 l9_866=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_865.xy,level(l9_859));
float4 l9_867=l9_866;
if (l9_797)
{
l9_867=mix(l9_798,l9_867,float4(l9_801));
}
float4 l9_868=l9_867;
l9_782=l9_868;
l9_755=l9_782;
l9_753+=l9_755;
param_32=l9_753;
float4 l9_869=param_32;
ssGlobals l9_870=param_33;
float4 l9_871=float4(0.0);
l9_870.Loop_Index_ID0=6.0;
l9_870.Loop_Ratio_ID0=0.85714298;
float2 l9_872=float2(0.0);
float2 l9_873=(*sc_set0.UserUniforms).screenTexSize.zw;
l9_872=l9_873;
float2 l9_874=float2(0.0);
l9_874=l9_870.gScreenCoord;
float2 l9_875=float2(0.0);
l9_875=l9_874;
float2 l9_876=float2(0.0);
l9_876=l9_872;
float l9_877=0.0;
float l9_878=(*sc_set0.UserUniforms).blurFactor;
l9_877=l9_878;
float l9_879=0.0;
l9_879=l9_877;
float l9_880=0.0;
l9_880=exp2(l9_879);
float l9_881=0.0;
l9_881=l9_870.Loop_Index_ID0;
float2 l9_882=float2(0.0);
float l9_883=l9_881;
float2 l9_884=(*sc_set0.UserUniforms).Port_Item0_N064;
float2 l9_885=(*sc_set0.UserUniforms).Port_Item1_N064;
float2 l9_886=(*sc_set0.UserUniforms).Port_Item2_N064;
float2 l9_887=(*sc_set0.UserUniforms).Port_Item3_N064;
float2 l9_888=(*sc_set0.UserUniforms).Port_Item4_N064;
float2 l9_889=(*sc_set0.UserUniforms).Port_Item5_N064;
float2 l9_890=(*sc_set0.UserUniforms).Port_Item6_N064;
float2 l9_891=(*sc_set0.UserUniforms).Port_Item7_N064;
float2 l9_892[8];
l9_892[0]=l9_884;
l9_892[1]=l9_885;
l9_892[2]=l9_886;
l9_892[3]=l9_887;
l9_892[4]=l9_888;
l9_892[5]=l9_889;
l9_892[6]=l9_890;
l9_892[7]=l9_891;
int l9_893=int(fast::clamp(l9_883+9.9999997e-05,0.0,7.0));
float2 l9_894=l9_892[l9_893];
l9_882=l9_894;
float2 l9_895=float2(0.0);
l9_895=(l9_876*float2(l9_880))*l9_882;
float2 l9_896=float2(0.0);
l9_896=l9_875+l9_895;
float l9_897=0.0;
l9_897=l9_879+(*sc_set0.UserUniforms).Port_Input1_N050;
float4 l9_898=float4(0.0);
int l9_899;
if ((int(screenTexHasSwappedViews_tmp)!=0))
{
int l9_900=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_900=0;
}
else
{
l9_900=in.varStereoViewID;
}
int l9_901=l9_900;
l9_899=1-l9_901;
}
else
{
int l9_902=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_902=0;
}
else
{
l9_902=in.varStereoViewID;
}
int l9_903=l9_902;
l9_899=l9_903;
}
int l9_904=l9_899;
int l9_905=screenTexLayout_tmp;
int l9_906=l9_904;
float2 l9_907=l9_896;
bool l9_908=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 l9_909=(*sc_set0.UserUniforms).screenTexTransform;
int2 l9_910=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool l9_911=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 l9_912=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool l9_913=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 l9_914=(*sc_set0.UserUniforms).screenTexBorderColor;
float l9_915=l9_897;
bool l9_916=l9_913&&(!l9_911);
float l9_917=1.0;
float l9_918=l9_907.x;
int l9_919=l9_910.x;
if (l9_919==1)
{
l9_918=fract(l9_918);
}
else
{
if (l9_919==2)
{
float l9_920=fract(l9_918);
float l9_921=l9_918-l9_920;
float l9_922=step(0.25,fract(l9_921*0.5));
l9_918=mix(l9_920,1.0-l9_920,fast::clamp(l9_922,0.0,1.0));
}
}
l9_907.x=l9_918;
float l9_923=l9_907.y;
int l9_924=l9_910.y;
if (l9_924==1)
{
l9_923=fract(l9_923);
}
else
{
if (l9_924==2)
{
float l9_925=fract(l9_923);
float l9_926=l9_923-l9_925;
float l9_927=step(0.25,fract(l9_926*0.5));
l9_923=mix(l9_925,1.0-l9_925,fast::clamp(l9_927,0.0,1.0));
}
}
l9_907.y=l9_923;
if (l9_911)
{
bool l9_928=l9_913;
bool l9_929;
if (l9_928)
{
l9_929=l9_910.x==3;
}
else
{
l9_929=l9_928;
}
float l9_930=l9_907.x;
float l9_931=l9_912.x;
float l9_932=l9_912.z;
bool l9_933=l9_929;
float l9_934=l9_917;
float l9_935=fast::clamp(l9_930,l9_931,l9_932);
float l9_936=step(abs(l9_930-l9_935),9.9999997e-06);
l9_934*=(l9_936+((1.0-float(l9_933))*(1.0-l9_936)));
l9_930=l9_935;
l9_907.x=l9_930;
l9_917=l9_934;
bool l9_937=l9_913;
bool l9_938;
if (l9_937)
{
l9_938=l9_910.y==3;
}
else
{
l9_938=l9_937;
}
float l9_939=l9_907.y;
float l9_940=l9_912.y;
float l9_941=l9_912.w;
bool l9_942=l9_938;
float l9_943=l9_917;
float l9_944=fast::clamp(l9_939,l9_940,l9_941);
float l9_945=step(abs(l9_939-l9_944),9.9999997e-06);
l9_943*=(l9_945+((1.0-float(l9_942))*(1.0-l9_945)));
l9_939=l9_944;
l9_907.y=l9_939;
l9_917=l9_943;
}
float2 l9_946=l9_907;
bool l9_947=l9_908;
float3x3 l9_948=l9_909;
if (l9_947)
{
l9_946=float2((l9_948*float3(l9_946,1.0)).xy);
}
float2 l9_949=l9_946;
l9_907=l9_949;
float l9_950=l9_907.x;
int l9_951=l9_910.x;
bool l9_952=l9_916;
float l9_953=l9_917;
if ((l9_951==0)||(l9_951==3))
{
float l9_954=l9_950;
float l9_955=0.0;
float l9_956=1.0;
bool l9_957=l9_952;
float l9_958=l9_953;
float l9_959=fast::clamp(l9_954,l9_955,l9_956);
float l9_960=step(abs(l9_954-l9_959),9.9999997e-06);
l9_958*=(l9_960+((1.0-float(l9_957))*(1.0-l9_960)));
l9_954=l9_959;
l9_950=l9_954;
l9_953=l9_958;
}
l9_907.x=l9_950;
l9_917=l9_953;
float l9_961=l9_907.y;
int l9_962=l9_910.y;
bool l9_963=l9_916;
float l9_964=l9_917;
if ((l9_962==0)||(l9_962==3))
{
float l9_965=l9_961;
float l9_966=0.0;
float l9_967=1.0;
bool l9_968=l9_963;
float l9_969=l9_964;
float l9_970=fast::clamp(l9_965,l9_966,l9_967);
float l9_971=step(abs(l9_965-l9_970),9.9999997e-06);
l9_969*=(l9_971+((1.0-float(l9_968))*(1.0-l9_971)));
l9_965=l9_970;
l9_961=l9_965;
l9_964=l9_969;
}
l9_907.y=l9_961;
l9_917=l9_964;
float2 l9_972=l9_907;
int l9_973=l9_905;
int l9_974=l9_906;
float l9_975=l9_915;
float2 l9_976=l9_972;
int l9_977=l9_973;
int l9_978=l9_974;
float3 l9_979=float3(0.0);
if (l9_977==0)
{
l9_979=float3(l9_976,0.0);
}
else
{
if (l9_977==1)
{
l9_979=float3(l9_976.x,(l9_976.y*0.5)+(0.5-(float(l9_978)*0.5)),0.0);
}
else
{
l9_979=float3(l9_976,float(l9_978));
}
}
float3 l9_980=l9_979;
float3 l9_981=l9_980;
float4 l9_982=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_981.xy,level(l9_975));
float4 l9_983=l9_982;
if (l9_913)
{
l9_983=mix(l9_914,l9_983,float4(l9_917));
}
float4 l9_984=l9_983;
l9_898=l9_984;
l9_871=l9_898;
l9_869+=l9_871;
param_32=l9_869;
float4 l9_985=param_32;
ssGlobals l9_986=param_33;
float4 l9_987=float4(0.0);
l9_986.Loop_Index_ID0=7.0;
l9_986.Loop_Ratio_ID0=1.0;
float2 l9_988=float2(0.0);
float2 l9_989=(*sc_set0.UserUniforms).screenTexSize.zw;
l9_988=l9_989;
float2 l9_990=float2(0.0);
l9_990=l9_986.gScreenCoord;
float2 l9_991=float2(0.0);
l9_991=l9_990;
float2 l9_992=float2(0.0);
l9_992=l9_988;
float l9_993=0.0;
float l9_994=(*sc_set0.UserUniforms).blurFactor;
l9_993=l9_994;
float l9_995=0.0;
l9_995=l9_993;
float l9_996=0.0;
l9_996=exp2(l9_995);
float l9_997=0.0;
l9_997=l9_986.Loop_Index_ID0;
float2 l9_998=float2(0.0);
float l9_999=l9_997;
float2 l9_1000=(*sc_set0.UserUniforms).Port_Item0_N064;
float2 l9_1001=(*sc_set0.UserUniforms).Port_Item1_N064;
float2 l9_1002=(*sc_set0.UserUniforms).Port_Item2_N064;
float2 l9_1003=(*sc_set0.UserUniforms).Port_Item3_N064;
float2 l9_1004=(*sc_set0.UserUniforms).Port_Item4_N064;
float2 l9_1005=(*sc_set0.UserUniforms).Port_Item5_N064;
float2 l9_1006=(*sc_set0.UserUniforms).Port_Item6_N064;
float2 l9_1007=(*sc_set0.UserUniforms).Port_Item7_N064;
float2 l9_1008[8];
l9_1008[0]=l9_1000;
l9_1008[1]=l9_1001;
l9_1008[2]=l9_1002;
l9_1008[3]=l9_1003;
l9_1008[4]=l9_1004;
l9_1008[5]=l9_1005;
l9_1008[6]=l9_1006;
l9_1008[7]=l9_1007;
int l9_1009=int(fast::clamp(l9_999+9.9999997e-05,0.0,7.0));
float2 l9_1010=l9_1008[l9_1009];
l9_998=l9_1010;
float2 l9_1011=float2(0.0);
l9_1011=(l9_992*float2(l9_996))*l9_998;
float2 l9_1012=float2(0.0);
l9_1012=l9_991+l9_1011;
float l9_1013=0.0;
l9_1013=l9_995+(*sc_set0.UserUniforms).Port_Input1_N050;
float4 l9_1014=float4(0.0);
int l9_1015;
if ((int(screenTexHasSwappedViews_tmp)!=0))
{
int l9_1016=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1016=0;
}
else
{
l9_1016=in.varStereoViewID;
}
int l9_1017=l9_1016;
l9_1015=1-l9_1017;
}
else
{
int l9_1018=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1018=0;
}
else
{
l9_1018=in.varStereoViewID;
}
int l9_1019=l9_1018;
l9_1015=l9_1019;
}
int l9_1020=l9_1015;
int l9_1021=screenTexLayout_tmp;
int l9_1022=l9_1020;
float2 l9_1023=l9_1012;
bool l9_1024=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 l9_1025=(*sc_set0.UserUniforms).screenTexTransform;
int2 l9_1026=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool l9_1027=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 l9_1028=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool l9_1029=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 l9_1030=(*sc_set0.UserUniforms).screenTexBorderColor;
float l9_1031=l9_1013;
bool l9_1032=l9_1029&&(!l9_1027);
float l9_1033=1.0;
float l9_1034=l9_1023.x;
int l9_1035=l9_1026.x;
if (l9_1035==1)
{
l9_1034=fract(l9_1034);
}
else
{
if (l9_1035==2)
{
float l9_1036=fract(l9_1034);
float l9_1037=l9_1034-l9_1036;
float l9_1038=step(0.25,fract(l9_1037*0.5));
l9_1034=mix(l9_1036,1.0-l9_1036,fast::clamp(l9_1038,0.0,1.0));
}
}
l9_1023.x=l9_1034;
float l9_1039=l9_1023.y;
int l9_1040=l9_1026.y;
if (l9_1040==1)
{
l9_1039=fract(l9_1039);
}
else
{
if (l9_1040==2)
{
float l9_1041=fract(l9_1039);
float l9_1042=l9_1039-l9_1041;
float l9_1043=step(0.25,fract(l9_1042*0.5));
l9_1039=mix(l9_1041,1.0-l9_1041,fast::clamp(l9_1043,0.0,1.0));
}
}
l9_1023.y=l9_1039;
if (l9_1027)
{
bool l9_1044=l9_1029;
bool l9_1045;
if (l9_1044)
{
l9_1045=l9_1026.x==3;
}
else
{
l9_1045=l9_1044;
}
float l9_1046=l9_1023.x;
float l9_1047=l9_1028.x;
float l9_1048=l9_1028.z;
bool l9_1049=l9_1045;
float l9_1050=l9_1033;
float l9_1051=fast::clamp(l9_1046,l9_1047,l9_1048);
float l9_1052=step(abs(l9_1046-l9_1051),9.9999997e-06);
l9_1050*=(l9_1052+((1.0-float(l9_1049))*(1.0-l9_1052)));
l9_1046=l9_1051;
l9_1023.x=l9_1046;
l9_1033=l9_1050;
bool l9_1053=l9_1029;
bool l9_1054;
if (l9_1053)
{
l9_1054=l9_1026.y==3;
}
else
{
l9_1054=l9_1053;
}
float l9_1055=l9_1023.y;
float l9_1056=l9_1028.y;
float l9_1057=l9_1028.w;
bool l9_1058=l9_1054;
float l9_1059=l9_1033;
float l9_1060=fast::clamp(l9_1055,l9_1056,l9_1057);
float l9_1061=step(abs(l9_1055-l9_1060),9.9999997e-06);
l9_1059*=(l9_1061+((1.0-float(l9_1058))*(1.0-l9_1061)));
l9_1055=l9_1060;
l9_1023.y=l9_1055;
l9_1033=l9_1059;
}
float2 l9_1062=l9_1023;
bool l9_1063=l9_1024;
float3x3 l9_1064=l9_1025;
if (l9_1063)
{
l9_1062=float2((l9_1064*float3(l9_1062,1.0)).xy);
}
float2 l9_1065=l9_1062;
l9_1023=l9_1065;
float l9_1066=l9_1023.x;
int l9_1067=l9_1026.x;
bool l9_1068=l9_1032;
float l9_1069=l9_1033;
if ((l9_1067==0)||(l9_1067==3))
{
float l9_1070=l9_1066;
float l9_1071=0.0;
float l9_1072=1.0;
bool l9_1073=l9_1068;
float l9_1074=l9_1069;
float l9_1075=fast::clamp(l9_1070,l9_1071,l9_1072);
float l9_1076=step(abs(l9_1070-l9_1075),9.9999997e-06);
l9_1074*=(l9_1076+((1.0-float(l9_1073))*(1.0-l9_1076)));
l9_1070=l9_1075;
l9_1066=l9_1070;
l9_1069=l9_1074;
}
l9_1023.x=l9_1066;
l9_1033=l9_1069;
float l9_1077=l9_1023.y;
int l9_1078=l9_1026.y;
bool l9_1079=l9_1032;
float l9_1080=l9_1033;
if ((l9_1078==0)||(l9_1078==3))
{
float l9_1081=l9_1077;
float l9_1082=0.0;
float l9_1083=1.0;
bool l9_1084=l9_1079;
float l9_1085=l9_1080;
float l9_1086=fast::clamp(l9_1081,l9_1082,l9_1083);
float l9_1087=step(abs(l9_1081-l9_1086),9.9999997e-06);
l9_1085*=(l9_1087+((1.0-float(l9_1084))*(1.0-l9_1087)));
l9_1081=l9_1086;
l9_1077=l9_1081;
l9_1080=l9_1085;
}
l9_1023.y=l9_1077;
l9_1033=l9_1080;
float2 l9_1088=l9_1023;
int l9_1089=l9_1021;
int l9_1090=l9_1022;
float l9_1091=l9_1031;
float2 l9_1092=l9_1088;
int l9_1093=l9_1089;
int l9_1094=l9_1090;
float3 l9_1095=float3(0.0);
if (l9_1093==0)
{
l9_1095=float3(l9_1092,0.0);
}
else
{
if (l9_1093==1)
{
l9_1095=float3(l9_1092.x,(l9_1092.y*0.5)+(0.5-(float(l9_1094)*0.5)),0.0);
}
else
{
l9_1095=float3(l9_1092,float(l9_1094));
}
}
float3 l9_1096=l9_1095;
float3 l9_1097=l9_1096;
float4 l9_1098=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_1097.xy,level(l9_1091));
float4 l9_1099=l9_1098;
if (l9_1029)
{
l9_1099=mix(l9_1030,l9_1099,float4(l9_1033));
}
float4 l9_1100=l9_1099;
l9_1014=l9_1100;
l9_987=l9_1014;
l9_985+=l9_987;
param_32=l9_985;
param_32/=float4(8.0);
Output_N68=param_32;
float4 Output_N69=float4(0.0);
Output_N69=mix(Color_N54,Output_N68,float4((*sc_set0.UserUniforms).Port_Input2_N069));
float4 Export_N70=float4(0.0);
Export_N70=Output_N69;
float3 Output_N11=float3(0.0);
float3 param_34=(*sc_set0.UserUniforms).underwaterTint;
Output_N11=param_34;
float3 Output_N143=float3(0.0);
Output_N143=Export_N70.xyz*Output_N11;
float Output_N12=0.0;
float param_35=(*sc_set0.UserUniforms).enableLine;
Output_N12=param_35;
float3 Output_N21=float3(0.0);
float3 param_36=(*sc_set0.UserUniforms).lineTint;
Output_N21=param_36;
float Output_N17=0.0;
float param_37=(*sc_set0.UserUniforms).meniscusThickness;
Output_N17=param_37;
float4 Result_N5=float4(0.0);
float3 param_38=Export_N239;
float3 param_39=Output_N1;
float3 param_40=Output_N6;
float3 param_41=Output_N9;
float2 param_42=Output_N7;
float param_43=Output_N18;
float2 param_44=Output_N32;
float param_45=Output_N22;
float3 param_46=Output_N143;
float param_47=Output_N12;
float3 param_48=Output_N21;
float param_49=Output_N17;
ssGlobals param_51=Globals;
ssGlobals tempGlobals=param_51;
float4 param_50=float4(0.0);
N5_OceanSurfacePos=param_38;
N5_OceanWorldTransform=param_39;
N5_OceanAabbMin=param_40;
N5_OceanAabbMax=param_41;
N5_unpackVal=param_42;
N5_EnableFluid=param_43;
N5_pressureRange=param_44;
N5_FluidMul=param_45;
N5_Underwater=param_46;
N5_EnableLine=param_47!=0.0;
N5_LineColor=param_48;
N5_Thickness=param_49;
int l9_1101=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1101=0;
}
else
{
l9_1101=in.varStereoViewID;
}
int l9_1102=l9_1101;
float4x4 l9_1103=(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_1102];
float3 l9_1104=l9_1103[3].xyz;
float3 l9_1105=N5_OceanSurfacePos-l9_1104;
int l9_1106=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1106=0;
}
else
{
l9_1106=in.varStereoViewID;
}
int l9_1107=l9_1106;
float3 l9_1108=-(*sc_set0.UserUniforms).sc_ViewMatrixInverseArray[l9_1107][2].xyz;
float3 l9_1109=l9_1108;
float l9_1110=(*sc_set0.UserUniforms).sc_Camera.clipPlanes.x;
float l9_1111=l9_1110;
float3 l9_1112=l9_1104+(l9_1105*(l9_1111/dot(l9_1105,l9_1109)));
float2 l9_1113=float2(N5_OceanAabbMin.x,N5_OceanAabbMin.z);
float2 l9_1114=float2(N5_OceanAabbMax.x,N5_OceanAabbMax.z);
float2 l9_1115=float2(0.0)+(((l9_1112.xz-l9_1113)*1.0)/((l9_1114-l9_1113)+float2(1e-06)));
l9_1115.y=1.0-l9_1115.y;
float2 l9_1116=l9_1115;
float4 l9_1117=float4(0.0);
int l9_1118;
if ((int(oceanHeightmapHasSwappedViews_tmp)!=0))
{
int l9_1119=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1119=0;
}
else
{
l9_1119=in.varStereoViewID;
}
int l9_1120=l9_1119;
l9_1118=1-l9_1120;
}
else
{
int l9_1121=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1121=0;
}
else
{
l9_1121=in.varStereoViewID;
}
int l9_1122=l9_1121;
l9_1118=l9_1122;
}
int l9_1123=l9_1118;
int l9_1124=oceanHeightmapLayout_tmp;
int l9_1125=l9_1123;
float2 l9_1126=l9_1116;
bool l9_1127=(int(SC_USE_UV_TRANSFORM_oceanHeightmap_tmp)!=0);
float3x3 l9_1128=(*sc_set0.UserUniforms).oceanHeightmapTransform;
int2 l9_1129=int2(SC_SOFTWARE_WRAP_MODE_U_oceanHeightmap_tmp,SC_SOFTWARE_WRAP_MODE_V_oceanHeightmap_tmp);
bool l9_1130=(int(SC_USE_UV_MIN_MAX_oceanHeightmap_tmp)!=0);
float4 l9_1131=(*sc_set0.UserUniforms).oceanHeightmapUvMinMax;
bool l9_1132=(int(SC_USE_CLAMP_TO_BORDER_oceanHeightmap_tmp)!=0);
float4 l9_1133=(*sc_set0.UserUniforms).oceanHeightmapBorderColor;
float l9_1134=0.0;
bool l9_1135=l9_1132&&(!l9_1130);
float l9_1136=1.0;
float l9_1137=l9_1126.x;
int l9_1138=l9_1129.x;
if (l9_1138==1)
{
l9_1137=fract(l9_1137);
}
else
{
if (l9_1138==2)
{
float l9_1139=fract(l9_1137);
float l9_1140=l9_1137-l9_1139;
float l9_1141=step(0.25,fract(l9_1140*0.5));
l9_1137=mix(l9_1139,1.0-l9_1139,fast::clamp(l9_1141,0.0,1.0));
}
}
l9_1126.x=l9_1137;
float l9_1142=l9_1126.y;
int l9_1143=l9_1129.y;
if (l9_1143==1)
{
l9_1142=fract(l9_1142);
}
else
{
if (l9_1143==2)
{
float l9_1144=fract(l9_1142);
float l9_1145=l9_1142-l9_1144;
float l9_1146=step(0.25,fract(l9_1145*0.5));
l9_1142=mix(l9_1144,1.0-l9_1144,fast::clamp(l9_1146,0.0,1.0));
}
}
l9_1126.y=l9_1142;
if (l9_1130)
{
bool l9_1147=l9_1132;
bool l9_1148;
if (l9_1147)
{
l9_1148=l9_1129.x==3;
}
else
{
l9_1148=l9_1147;
}
float l9_1149=l9_1126.x;
float l9_1150=l9_1131.x;
float l9_1151=l9_1131.z;
bool l9_1152=l9_1148;
float l9_1153=l9_1136;
float l9_1154=fast::clamp(l9_1149,l9_1150,l9_1151);
float l9_1155=step(abs(l9_1149-l9_1154),9.9999997e-06);
l9_1153*=(l9_1155+((1.0-float(l9_1152))*(1.0-l9_1155)));
l9_1149=l9_1154;
l9_1126.x=l9_1149;
l9_1136=l9_1153;
bool l9_1156=l9_1132;
bool l9_1157;
if (l9_1156)
{
l9_1157=l9_1129.y==3;
}
else
{
l9_1157=l9_1156;
}
float l9_1158=l9_1126.y;
float l9_1159=l9_1131.y;
float l9_1160=l9_1131.w;
bool l9_1161=l9_1157;
float l9_1162=l9_1136;
float l9_1163=fast::clamp(l9_1158,l9_1159,l9_1160);
float l9_1164=step(abs(l9_1158-l9_1163),9.9999997e-06);
l9_1162*=(l9_1164+((1.0-float(l9_1161))*(1.0-l9_1164)));
l9_1158=l9_1163;
l9_1126.y=l9_1158;
l9_1136=l9_1162;
}
float2 l9_1165=l9_1126;
bool l9_1166=l9_1127;
float3x3 l9_1167=l9_1128;
if (l9_1166)
{
l9_1165=float2((l9_1167*float3(l9_1165,1.0)).xy);
}
float2 l9_1168=l9_1165;
l9_1126=l9_1168;
float l9_1169=l9_1126.x;
int l9_1170=l9_1129.x;
bool l9_1171=l9_1135;
float l9_1172=l9_1136;
if ((l9_1170==0)||(l9_1170==3))
{
float l9_1173=l9_1169;
float l9_1174=0.0;
float l9_1175=1.0;
bool l9_1176=l9_1171;
float l9_1177=l9_1172;
float l9_1178=fast::clamp(l9_1173,l9_1174,l9_1175);
float l9_1179=step(abs(l9_1173-l9_1178),9.9999997e-06);
l9_1177*=(l9_1179+((1.0-float(l9_1176))*(1.0-l9_1179)));
l9_1173=l9_1178;
l9_1169=l9_1173;
l9_1172=l9_1177;
}
l9_1126.x=l9_1169;
l9_1136=l9_1172;
float l9_1180=l9_1126.y;
int l9_1181=l9_1129.y;
bool l9_1182=l9_1135;
float l9_1183=l9_1136;
if ((l9_1181==0)||(l9_1181==3))
{
float l9_1184=l9_1180;
float l9_1185=0.0;
float l9_1186=1.0;
bool l9_1187=l9_1182;
float l9_1188=l9_1183;
float l9_1189=fast::clamp(l9_1184,l9_1185,l9_1186);
float l9_1190=step(abs(l9_1184-l9_1189),9.9999997e-06);
l9_1188*=(l9_1190+((1.0-float(l9_1187))*(1.0-l9_1190)));
l9_1184=l9_1189;
l9_1180=l9_1184;
l9_1183=l9_1188;
}
l9_1126.y=l9_1180;
l9_1136=l9_1183;
float2 l9_1191=l9_1126;
int l9_1192=l9_1124;
int l9_1193=l9_1125;
float l9_1194=l9_1134;
float2 l9_1195=l9_1191;
int l9_1196=l9_1192;
int l9_1197=l9_1193;
float3 l9_1198=float3(0.0);
if (l9_1196==0)
{
l9_1198=float3(l9_1195,0.0);
}
else
{
if (l9_1196==1)
{
l9_1198=float3(l9_1195.x,(l9_1195.y*0.5)+(0.5-(float(l9_1197)*0.5)),0.0);
}
else
{
l9_1198=float3(l9_1195,float(l9_1197));
}
}
float3 l9_1199=l9_1198;
float3 l9_1200=l9_1199;
float4 l9_1201=sc_set0.oceanHeightmap.sample(sc_set0.oceanHeightmapSmpSC,l9_1200.xy,bias(l9_1194));
float4 l9_1202=l9_1201;
if (l9_1132)
{
l9_1202=mix(l9_1133,l9_1202,float4(l9_1136));
}
float4 l9_1203=l9_1202;
l9_1117=l9_1203;
float4 l9_1204=l9_1117;
float l9_1205=l9_1204.x;
l9_1205=0.0+(((l9_1205-0.0)*(N5_unpackVal.y-0.0))/1.000001);
float l9_1206=l9_1205+N5_OceanWorldTransform.y;
if (N5_EnableFluid==1.0)
{
float l9_1207=N5_pressureRange.x;
float2 l9_1208=l9_1115;
float4 l9_1209=float4(0.0);
int l9_1210;
if ((int(fluidPressureHasSwappedViews_tmp)!=0))
{
int l9_1211=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1211=0;
}
else
{
l9_1211=in.varStereoViewID;
}
int l9_1212=l9_1211;
l9_1210=1-l9_1212;
}
else
{
int l9_1213=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1213=0;
}
else
{
l9_1213=in.varStereoViewID;
}
int l9_1214=l9_1213;
l9_1210=l9_1214;
}
int l9_1215=l9_1210;
int l9_1216=fluidPressureLayout_tmp;
int l9_1217=l9_1215;
float2 l9_1218=l9_1208;
bool l9_1219=(int(SC_USE_UV_TRANSFORM_fluidPressure_tmp)!=0);
float3x3 l9_1220=(*sc_set0.UserUniforms).fluidPressureTransform;
int2 l9_1221=int2(SC_SOFTWARE_WRAP_MODE_U_fluidPressure_tmp,SC_SOFTWARE_WRAP_MODE_V_fluidPressure_tmp);
bool l9_1222=(int(SC_USE_UV_MIN_MAX_fluidPressure_tmp)!=0);
float4 l9_1223=(*sc_set0.UserUniforms).fluidPressureUvMinMax;
bool l9_1224=(int(SC_USE_CLAMP_TO_BORDER_fluidPressure_tmp)!=0);
float4 l9_1225=(*sc_set0.UserUniforms).fluidPressureBorderColor;
float l9_1226=0.0;
bool l9_1227=l9_1224&&(!l9_1222);
float l9_1228=1.0;
float l9_1229=l9_1218.x;
int l9_1230=l9_1221.x;
if (l9_1230==1)
{
l9_1229=fract(l9_1229);
}
else
{
if (l9_1230==2)
{
float l9_1231=fract(l9_1229);
float l9_1232=l9_1229-l9_1231;
float l9_1233=step(0.25,fract(l9_1232*0.5));
l9_1229=mix(l9_1231,1.0-l9_1231,fast::clamp(l9_1233,0.0,1.0));
}
}
l9_1218.x=l9_1229;
float l9_1234=l9_1218.y;
int l9_1235=l9_1221.y;
if (l9_1235==1)
{
l9_1234=fract(l9_1234);
}
else
{
if (l9_1235==2)
{
float l9_1236=fract(l9_1234);
float l9_1237=l9_1234-l9_1236;
float l9_1238=step(0.25,fract(l9_1237*0.5));
l9_1234=mix(l9_1236,1.0-l9_1236,fast::clamp(l9_1238,0.0,1.0));
}
}
l9_1218.y=l9_1234;
if (l9_1222)
{
bool l9_1239=l9_1224;
bool l9_1240;
if (l9_1239)
{
l9_1240=l9_1221.x==3;
}
else
{
l9_1240=l9_1239;
}
float l9_1241=l9_1218.x;
float l9_1242=l9_1223.x;
float l9_1243=l9_1223.z;
bool l9_1244=l9_1240;
float l9_1245=l9_1228;
float l9_1246=fast::clamp(l9_1241,l9_1242,l9_1243);
float l9_1247=step(abs(l9_1241-l9_1246),9.9999997e-06);
l9_1245*=(l9_1247+((1.0-float(l9_1244))*(1.0-l9_1247)));
l9_1241=l9_1246;
l9_1218.x=l9_1241;
l9_1228=l9_1245;
bool l9_1248=l9_1224;
bool l9_1249;
if (l9_1248)
{
l9_1249=l9_1221.y==3;
}
else
{
l9_1249=l9_1248;
}
float l9_1250=l9_1218.y;
float l9_1251=l9_1223.y;
float l9_1252=l9_1223.w;
bool l9_1253=l9_1249;
float l9_1254=l9_1228;
float l9_1255=fast::clamp(l9_1250,l9_1251,l9_1252);
float l9_1256=step(abs(l9_1250-l9_1255),9.9999997e-06);
l9_1254*=(l9_1256+((1.0-float(l9_1253))*(1.0-l9_1256)));
l9_1250=l9_1255;
l9_1218.y=l9_1250;
l9_1228=l9_1254;
}
float2 l9_1257=l9_1218;
bool l9_1258=l9_1219;
float3x3 l9_1259=l9_1220;
if (l9_1258)
{
l9_1257=float2((l9_1259*float3(l9_1257,1.0)).xy);
}
float2 l9_1260=l9_1257;
l9_1218=l9_1260;
float l9_1261=l9_1218.x;
int l9_1262=l9_1221.x;
bool l9_1263=l9_1227;
float l9_1264=l9_1228;
if ((l9_1262==0)||(l9_1262==3))
{
float l9_1265=l9_1261;
float l9_1266=0.0;
float l9_1267=1.0;
bool l9_1268=l9_1263;
float l9_1269=l9_1264;
float l9_1270=fast::clamp(l9_1265,l9_1266,l9_1267);
float l9_1271=step(abs(l9_1265-l9_1270),9.9999997e-06);
l9_1269*=(l9_1271+((1.0-float(l9_1268))*(1.0-l9_1271)));
l9_1265=l9_1270;
l9_1261=l9_1265;
l9_1264=l9_1269;
}
l9_1218.x=l9_1261;
l9_1228=l9_1264;
float l9_1272=l9_1218.y;
int l9_1273=l9_1221.y;
bool l9_1274=l9_1227;
float l9_1275=l9_1228;
if ((l9_1273==0)||(l9_1273==3))
{
float l9_1276=l9_1272;
float l9_1277=0.0;
float l9_1278=1.0;
bool l9_1279=l9_1274;
float l9_1280=l9_1275;
float l9_1281=fast::clamp(l9_1276,l9_1277,l9_1278);
float l9_1282=step(abs(l9_1276-l9_1281),9.9999997e-06);
l9_1280*=(l9_1282+((1.0-float(l9_1279))*(1.0-l9_1282)));
l9_1276=l9_1281;
l9_1272=l9_1276;
l9_1275=l9_1280;
}
l9_1218.y=l9_1272;
l9_1228=l9_1275;
float2 l9_1283=l9_1218;
int l9_1284=l9_1216;
int l9_1285=l9_1217;
float l9_1286=l9_1226;
float2 l9_1287=l9_1283;
int l9_1288=l9_1284;
int l9_1289=l9_1285;
float3 l9_1290=float3(0.0);
if (l9_1288==0)
{
l9_1290=float3(l9_1287,0.0);
}
else
{
if (l9_1288==1)
{
l9_1290=float3(l9_1287.x,(l9_1287.y*0.5)+(0.5-(float(l9_1289)*0.5)),0.0);
}
else
{
l9_1290=float3(l9_1287,float(l9_1289));
}
}
float3 l9_1291=l9_1290;
float3 l9_1292=l9_1291;
float4 l9_1293=sc_set0.fluidPressure.sample(sc_set0.fluidPressureSmpSC,l9_1292.xy,bias(l9_1286));
float4 l9_1294=l9_1293;
if (l9_1224)
{
l9_1294=mix(l9_1225,l9_1294,float4(l9_1228));
}
float4 l9_1295=l9_1294;
l9_1209=l9_1295;
float4 l9_1296=l9_1209;
float l9_1297=l9_1207+(((l9_1296.x-0.0)*(N5_pressureRange.y-N5_pressureRange.x))/1.000001);
l9_1206+=(l9_1297*N5_FluidMul);
}
float2 l9_1298=tempGlobals.gScreenCoord;
float2 l9_1299=l9_1298;
float4 l9_1300=float4(0.0);
int l9_1301;
if ((int(screenTexHasSwappedViews_tmp)!=0))
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
l9_1301=1-l9_1303;
}
else
{
int l9_1304=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1304=0;
}
else
{
l9_1304=in.varStereoViewID;
}
int l9_1305=l9_1304;
l9_1301=l9_1305;
}
int l9_1306=l9_1301;
int l9_1307=screenTexLayout_tmp;
int l9_1308=l9_1306;
float2 l9_1309=l9_1299;
bool l9_1310=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 l9_1311=(*sc_set0.UserUniforms).screenTexTransform;
int2 l9_1312=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool l9_1313=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 l9_1314=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool l9_1315=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 l9_1316=(*sc_set0.UserUniforms).screenTexBorderColor;
float l9_1317=0.0;
bool l9_1318=l9_1315&&(!l9_1313);
float l9_1319=1.0;
float l9_1320=l9_1309.x;
int l9_1321=l9_1312.x;
if (l9_1321==1)
{
l9_1320=fract(l9_1320);
}
else
{
if (l9_1321==2)
{
float l9_1322=fract(l9_1320);
float l9_1323=l9_1320-l9_1322;
float l9_1324=step(0.25,fract(l9_1323*0.5));
l9_1320=mix(l9_1322,1.0-l9_1322,fast::clamp(l9_1324,0.0,1.0));
}
}
l9_1309.x=l9_1320;
float l9_1325=l9_1309.y;
int l9_1326=l9_1312.y;
if (l9_1326==1)
{
l9_1325=fract(l9_1325);
}
else
{
if (l9_1326==2)
{
float l9_1327=fract(l9_1325);
float l9_1328=l9_1325-l9_1327;
float l9_1329=step(0.25,fract(l9_1328*0.5));
l9_1325=mix(l9_1327,1.0-l9_1327,fast::clamp(l9_1329,0.0,1.0));
}
}
l9_1309.y=l9_1325;
if (l9_1313)
{
bool l9_1330=l9_1315;
bool l9_1331;
if (l9_1330)
{
l9_1331=l9_1312.x==3;
}
else
{
l9_1331=l9_1330;
}
float l9_1332=l9_1309.x;
float l9_1333=l9_1314.x;
float l9_1334=l9_1314.z;
bool l9_1335=l9_1331;
float l9_1336=l9_1319;
float l9_1337=fast::clamp(l9_1332,l9_1333,l9_1334);
float l9_1338=step(abs(l9_1332-l9_1337),9.9999997e-06);
l9_1336*=(l9_1338+((1.0-float(l9_1335))*(1.0-l9_1338)));
l9_1332=l9_1337;
l9_1309.x=l9_1332;
l9_1319=l9_1336;
bool l9_1339=l9_1315;
bool l9_1340;
if (l9_1339)
{
l9_1340=l9_1312.y==3;
}
else
{
l9_1340=l9_1339;
}
float l9_1341=l9_1309.y;
float l9_1342=l9_1314.y;
float l9_1343=l9_1314.w;
bool l9_1344=l9_1340;
float l9_1345=l9_1319;
float l9_1346=fast::clamp(l9_1341,l9_1342,l9_1343);
float l9_1347=step(abs(l9_1341-l9_1346),9.9999997e-06);
l9_1345*=(l9_1347+((1.0-float(l9_1344))*(1.0-l9_1347)));
l9_1341=l9_1346;
l9_1309.y=l9_1341;
l9_1319=l9_1345;
}
float2 l9_1348=l9_1309;
bool l9_1349=l9_1310;
float3x3 l9_1350=l9_1311;
if (l9_1349)
{
l9_1348=float2((l9_1350*float3(l9_1348,1.0)).xy);
}
float2 l9_1351=l9_1348;
l9_1309=l9_1351;
float l9_1352=l9_1309.x;
int l9_1353=l9_1312.x;
bool l9_1354=l9_1318;
float l9_1355=l9_1319;
if ((l9_1353==0)||(l9_1353==3))
{
float l9_1356=l9_1352;
float l9_1357=0.0;
float l9_1358=1.0;
bool l9_1359=l9_1354;
float l9_1360=l9_1355;
float l9_1361=fast::clamp(l9_1356,l9_1357,l9_1358);
float l9_1362=step(abs(l9_1356-l9_1361),9.9999997e-06);
l9_1360*=(l9_1362+((1.0-float(l9_1359))*(1.0-l9_1362)));
l9_1356=l9_1361;
l9_1352=l9_1356;
l9_1355=l9_1360;
}
l9_1309.x=l9_1352;
l9_1319=l9_1355;
float l9_1363=l9_1309.y;
int l9_1364=l9_1312.y;
bool l9_1365=l9_1318;
float l9_1366=l9_1319;
if ((l9_1364==0)||(l9_1364==3))
{
float l9_1367=l9_1363;
float l9_1368=0.0;
float l9_1369=1.0;
bool l9_1370=l9_1365;
float l9_1371=l9_1366;
float l9_1372=fast::clamp(l9_1367,l9_1368,l9_1369);
float l9_1373=step(abs(l9_1367-l9_1372),9.9999997e-06);
l9_1371*=(l9_1373+((1.0-float(l9_1370))*(1.0-l9_1373)));
l9_1367=l9_1372;
l9_1363=l9_1367;
l9_1366=l9_1371;
}
l9_1309.y=l9_1363;
l9_1319=l9_1366;
float2 l9_1374=l9_1309;
int l9_1375=l9_1307;
int l9_1376=l9_1308;
float l9_1377=l9_1317;
float2 l9_1378=l9_1374;
int l9_1379=l9_1375;
int l9_1380=l9_1376;
float3 l9_1381=float3(0.0);
if (l9_1379==0)
{
l9_1381=float3(l9_1378,0.0);
}
else
{
if (l9_1379==1)
{
l9_1381=float3(l9_1378.x,(l9_1378.y*0.5)+(0.5-(float(l9_1380)*0.5)),0.0);
}
else
{
l9_1381=float3(l9_1378,float(l9_1380));
}
}
float3 l9_1382=l9_1381;
float3 l9_1383=l9_1382;
float4 l9_1384=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_1383.xy,bias(l9_1377));
float4 l9_1385=l9_1384;
if (l9_1315)
{
l9_1385=mix(l9_1316,l9_1385,float4(l9_1319));
}
float4 l9_1386=l9_1385;
l9_1300=l9_1386;
float4 l9_1387=l9_1300;
float4 l9_1388=l9_1387;
float l9_1389=0.050000001;
float l9_1390=((l9_1112.y-l9_1206)>l9_1389) ? 0.0 : 1.0;
N5_Result=mix(l9_1388,float4(N5_Underwater,1.0),float4(l9_1390));
if (N5_EnableLine)
{
float l9_1391=1.0-smoothstep(N5_Thickness*0.0099999998,N5_Thickness,abs((l9_1112.y-l9_1206)-l9_1389));
float l9_1392=0.30000001;
float l9_1393=1.0;
float2 l9_1394=tempGlobals.Surface_UVCoord0;
float l9_1395=1.0-((l9_1394.x-0.5)*2.0);
float l9_1396=l9_1395;
float l9_1397=l9_1392;
float l9_1398;
if (l9_1396<=0.0)
{
l9_1398=0.0;
}
else
{
l9_1398=pow(l9_1396,l9_1397);
}
float l9_1399=l9_1398;
l9_1395=fast::clamp(l9_1399*l9_1393,0.0,1.0);
float l9_1400=l9_1395;
float2 l9_1401=tempGlobals.gScreenCoord;
float2 l9_1402=l9_1401*l9_1400;
float2 l9_1403=l9_1402;
float l9_1404=5.0;
float4 l9_1405=float4(0.0);
int l9_1406;
if ((int(screenTexHasSwappedViews_tmp)!=0))
{
int l9_1407=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1407=0;
}
else
{
l9_1407=in.varStereoViewID;
}
int l9_1408=l9_1407;
l9_1406=1-l9_1408;
}
else
{
int l9_1409=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1409=0;
}
else
{
l9_1409=in.varStereoViewID;
}
int l9_1410=l9_1409;
l9_1406=l9_1410;
}
int l9_1411=l9_1406;
int l9_1412=screenTexLayout_tmp;
int l9_1413=l9_1411;
float2 l9_1414=l9_1403;
bool l9_1415=(int(SC_USE_UV_TRANSFORM_screenTex_tmp)!=0);
float3x3 l9_1416=(*sc_set0.UserUniforms).screenTexTransform;
int2 l9_1417=int2(SC_SOFTWARE_WRAP_MODE_U_screenTex_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTex_tmp);
bool l9_1418=(int(SC_USE_UV_MIN_MAX_screenTex_tmp)!=0);
float4 l9_1419=(*sc_set0.UserUniforms).screenTexUvMinMax;
bool l9_1420=(int(SC_USE_CLAMP_TO_BORDER_screenTex_tmp)!=0);
float4 l9_1421=(*sc_set0.UserUniforms).screenTexBorderColor;
float l9_1422=l9_1404;
bool l9_1423=l9_1420&&(!l9_1418);
float l9_1424=1.0;
float l9_1425=l9_1414.x;
int l9_1426=l9_1417.x;
if (l9_1426==1)
{
l9_1425=fract(l9_1425);
}
else
{
if (l9_1426==2)
{
float l9_1427=fract(l9_1425);
float l9_1428=l9_1425-l9_1427;
float l9_1429=step(0.25,fract(l9_1428*0.5));
l9_1425=mix(l9_1427,1.0-l9_1427,fast::clamp(l9_1429,0.0,1.0));
}
}
l9_1414.x=l9_1425;
float l9_1430=l9_1414.y;
int l9_1431=l9_1417.y;
if (l9_1431==1)
{
l9_1430=fract(l9_1430);
}
else
{
if (l9_1431==2)
{
float l9_1432=fract(l9_1430);
float l9_1433=l9_1430-l9_1432;
float l9_1434=step(0.25,fract(l9_1433*0.5));
l9_1430=mix(l9_1432,1.0-l9_1432,fast::clamp(l9_1434,0.0,1.0));
}
}
l9_1414.y=l9_1430;
if (l9_1418)
{
bool l9_1435=l9_1420;
bool l9_1436;
if (l9_1435)
{
l9_1436=l9_1417.x==3;
}
else
{
l9_1436=l9_1435;
}
float l9_1437=l9_1414.x;
float l9_1438=l9_1419.x;
float l9_1439=l9_1419.z;
bool l9_1440=l9_1436;
float l9_1441=l9_1424;
float l9_1442=fast::clamp(l9_1437,l9_1438,l9_1439);
float l9_1443=step(abs(l9_1437-l9_1442),9.9999997e-06);
l9_1441*=(l9_1443+((1.0-float(l9_1440))*(1.0-l9_1443)));
l9_1437=l9_1442;
l9_1414.x=l9_1437;
l9_1424=l9_1441;
bool l9_1444=l9_1420;
bool l9_1445;
if (l9_1444)
{
l9_1445=l9_1417.y==3;
}
else
{
l9_1445=l9_1444;
}
float l9_1446=l9_1414.y;
float l9_1447=l9_1419.y;
float l9_1448=l9_1419.w;
bool l9_1449=l9_1445;
float l9_1450=l9_1424;
float l9_1451=fast::clamp(l9_1446,l9_1447,l9_1448);
float l9_1452=step(abs(l9_1446-l9_1451),9.9999997e-06);
l9_1450*=(l9_1452+((1.0-float(l9_1449))*(1.0-l9_1452)));
l9_1446=l9_1451;
l9_1414.y=l9_1446;
l9_1424=l9_1450;
}
float2 l9_1453=l9_1414;
bool l9_1454=l9_1415;
float3x3 l9_1455=l9_1416;
if (l9_1454)
{
l9_1453=float2((l9_1455*float3(l9_1453,1.0)).xy);
}
float2 l9_1456=l9_1453;
l9_1414=l9_1456;
float l9_1457=l9_1414.x;
int l9_1458=l9_1417.x;
bool l9_1459=l9_1423;
float l9_1460=l9_1424;
if ((l9_1458==0)||(l9_1458==3))
{
float l9_1461=l9_1457;
float l9_1462=0.0;
float l9_1463=1.0;
bool l9_1464=l9_1459;
float l9_1465=l9_1460;
float l9_1466=fast::clamp(l9_1461,l9_1462,l9_1463);
float l9_1467=step(abs(l9_1461-l9_1466),9.9999997e-06);
l9_1465*=(l9_1467+((1.0-float(l9_1464))*(1.0-l9_1467)));
l9_1461=l9_1466;
l9_1457=l9_1461;
l9_1460=l9_1465;
}
l9_1414.x=l9_1457;
l9_1424=l9_1460;
float l9_1468=l9_1414.y;
int l9_1469=l9_1417.y;
bool l9_1470=l9_1423;
float l9_1471=l9_1424;
if ((l9_1469==0)||(l9_1469==3))
{
float l9_1472=l9_1468;
float l9_1473=0.0;
float l9_1474=1.0;
bool l9_1475=l9_1470;
float l9_1476=l9_1471;
float l9_1477=fast::clamp(l9_1472,l9_1473,l9_1474);
float l9_1478=step(abs(l9_1472-l9_1477),9.9999997e-06);
l9_1476*=(l9_1478+((1.0-float(l9_1475))*(1.0-l9_1478)));
l9_1472=l9_1477;
l9_1468=l9_1472;
l9_1471=l9_1476;
}
l9_1414.y=l9_1468;
l9_1424=l9_1471;
float2 l9_1479=l9_1414;
int l9_1480=l9_1412;
int l9_1481=l9_1413;
float l9_1482=l9_1422;
float2 l9_1483=l9_1479;
int l9_1484=l9_1480;
int l9_1485=l9_1481;
float3 l9_1486=float3(0.0);
if (l9_1484==0)
{
l9_1486=float3(l9_1483,0.0);
}
else
{
if (l9_1484==1)
{
l9_1486=float3(l9_1483.x,(l9_1483.y*0.5)+(0.5-(float(l9_1485)*0.5)),0.0);
}
else
{
l9_1486=float3(l9_1483,float(l9_1485));
}
}
float3 l9_1487=l9_1486;
float3 l9_1488=l9_1487;
float4 l9_1489=sc_set0.screenTex.sample(sc_set0.screenTexSmpSC,l9_1488.xy,level(l9_1482));
float4 l9_1490=l9_1489;
if (l9_1420)
{
l9_1490=mix(l9_1421,l9_1490,float4(l9_1424));
}
float4 l9_1491=l9_1490;
l9_1405=l9_1491;
float4 l9_1492=l9_1405;
float3 l9_1493=l9_1492.xyz*N5_LineColor;
N5_Result=mix(N5_Result,float4(l9_1493,1.0),float4(l9_1391));
}
param_50=N5_Result;
Result_N5=param_50;
FinalColor=Result_N5;
float param_52=FinalColor.w;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (param_52<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_1494=gl_FragCoord;
float2 l9_1495=floor(mod(l9_1494.xy,float2(4.0)));
float l9_1496=(mod(dot(l9_1495,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (param_52<l9_1496)
{
discard_fragment();
}
}
float4 param_53=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_1497=param_53;
float4 l9_1498=l9_1497;
float l9_1499=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_1499=l9_1498.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_1499=fast::clamp(l9_1498.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_1499=fast::clamp(dot(l9_1498.xyz,float3(l9_1498.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_1499=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_1499=(1.0-dot(l9_1498.xyz,float3(0.33333001)))*l9_1498.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_1499=(1.0-fast::clamp(dot(l9_1498.xyz,float3(1.0)),0.0,1.0))*l9_1498.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_1499=fast::clamp(dot(l9_1498.xyz,float3(1.0)),0.0,1.0)*l9_1498.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_1499=fast::clamp(dot(l9_1498.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_1499=fast::clamp(dot(l9_1498.xyz,float3(1.0)),0.0,1.0)*l9_1498.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_1499=dot(l9_1498.xyz,float3(0.33333001))*l9_1498.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_1499=1.0-fast::clamp(dot(l9_1498.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_1499=fast::clamp(dot(l9_1498.xyz,float3(1.0)),0.0,1.0);
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
float l9_1500=l9_1499;
float l9_1501=l9_1500;
float l9_1502=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_1501;
float3 l9_1503=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_1497.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_1504=float4(l9_1503.x,l9_1503.y,l9_1503.z,l9_1502);
param_53=l9_1504;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_53=float4(param_53.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_1505=param_53;
float4 l9_1506=float4(0.0);
float4 l9_1507=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_1508=out.sc_FragData0;
l9_1507=l9_1508;
}
else
{
float4 l9_1509=gl_FragCoord;
float2 l9_1510=l9_1509.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1511=l9_1510;
float2 l9_1512=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_1513=1;
int l9_1514=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1514=0;
}
else
{
l9_1514=in.varStereoViewID;
}
int l9_1515=l9_1514;
int l9_1516=l9_1515;
float3 l9_1517=float3(l9_1511,0.0);
int l9_1518=l9_1513;
int l9_1519=l9_1516;
if (l9_1518==1)
{
l9_1517.y=((2.0*l9_1517.y)+float(l9_1519))-1.0;
}
float2 l9_1520=l9_1517.xy;
l9_1512=l9_1520;
}
else
{
l9_1512=l9_1511;
}
float2 l9_1521=l9_1512;
float2 l9_1522=l9_1521;
float2 l9_1523=l9_1522;
float2 l9_1524=l9_1523;
float l9_1525=0.0;
int l9_1526;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_1527=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1527=0;
}
else
{
l9_1527=in.varStereoViewID;
}
int l9_1528=l9_1527;
l9_1526=1-l9_1528;
}
else
{
int l9_1529=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1529=0;
}
else
{
l9_1529=in.varStereoViewID;
}
int l9_1530=l9_1529;
l9_1526=l9_1530;
}
int l9_1531=l9_1526;
float2 l9_1532=l9_1524;
int l9_1533=sc_ScreenTextureLayout_tmp;
int l9_1534=l9_1531;
float l9_1535=l9_1525;
float2 l9_1536=l9_1532;
int l9_1537=l9_1533;
int l9_1538=l9_1534;
float3 l9_1539=float3(0.0);
if (l9_1537==0)
{
l9_1539=float3(l9_1536,0.0);
}
else
{
if (l9_1537==1)
{
l9_1539=float3(l9_1536.x,(l9_1536.y*0.5)+(0.5-(float(l9_1538)*0.5)),0.0);
}
else
{
l9_1539=float3(l9_1536,float(l9_1538));
}
}
float3 l9_1540=l9_1539;
float3 l9_1541=l9_1540;
float4 l9_1542=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_1541.xy,bias(l9_1535));
float4 l9_1543=l9_1542;
float4 l9_1544=l9_1543;
l9_1507=l9_1544;
}
float4 l9_1545=l9_1507;
float3 l9_1546=l9_1545.xyz;
float3 l9_1547=l9_1546;
float3 l9_1548=l9_1505.xyz;
float3 l9_1549=definedBlend(l9_1547,l9_1548,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_1506=float4(l9_1549.x,l9_1549.y,l9_1549.z,l9_1506.w);
float3 l9_1550=mix(l9_1546,l9_1506.xyz,float3(l9_1505.w));
l9_1506=float4(l9_1550.x,l9_1550.y,l9_1550.z,l9_1506.w);
l9_1506.w=1.0;
float4 l9_1551=l9_1506;
param_53=l9_1551;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_1552=float4(in.varScreenPos.xyz,1.0);
param_53=l9_1552;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_1553=gl_FragCoord;
float l9_1554=fast::clamp(abs(l9_1553.z),0.0,1.0);
float4 l9_1555=float4(l9_1554,1.0-l9_1554,1.0,1.0);
param_53=l9_1555;
}
else
{
float4 l9_1556=param_53;
float4 l9_1557=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_1557=float4(mix(float3(1.0),l9_1556.xyz,float3(l9_1556.w)),l9_1556.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_1558=l9_1556.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_1558=fast::clamp(l9_1558,0.0,1.0);
}
l9_1557=float4(l9_1556.xyz*l9_1558,l9_1558);
}
else
{
l9_1557=l9_1556;
}
}
float4 l9_1559=l9_1557;
param_53=l9_1559;
}
}
}
}
}
float4 l9_1560=param_53;
FinalColor=l9_1560;
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
float4 l9_1561=float4(0.0);
l9_1561=float4(0.0);
float4 l9_1562=l9_1561;
float4 Cost=l9_1562;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
out.gl_FragDepth=Depth;
float4 param_54=FinalColor;
FinalColor=sc_OutputMotionVectorIfNeeded(param_54,in.varPosAndMotion,in.varNormalAndMotion);
float4 param_55=FinalColor;
float4 l9_1563=param_55;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_1563.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.sc_FragData0=l9_1563;
return out;
}
} // FRAGMENT SHADER
