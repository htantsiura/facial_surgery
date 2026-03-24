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
//sampler sampler intensityTextureSmpSC 0:17
//sampler sampler normTexSmpSC 0:18
//sampler sampler sc_ScreenTextureSmpSC 0:23
//texture texture2D intensityTexture 0:1:0:17
//texture texture2D normTex 0:2:0:18
//texture texture2D sc_ScreenTexture 0:14:0:23
//ubo float sc_BonesUBO 0:0:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:26:4512 {
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
//float4 normTexSize 4256
//float3x3 normTexTransform 4304
//float4 normTexUvMinMax 4352
//float4 normTexBorderColor 4368
//float2 blurDirection 4384
//float Port_Input1_N047 4392
//float Port_Value2_N048 4396
//float Port_Item0_N009 4400
//float Port_Item1_N009 4404
//float Port_Item2_N009 4408
//float Port_Item3_N009 4412
//float Port_Item4_N009 4416
//float Port_Item5_N009 4420
//float Port_Item6_N009 4424
//float Port_Item7_N009 4428
//float Port_Item8_N009 4432
//float Port_Item9_N009 4436
//float Port_Item10_N009 4440
//float Port_Item11_N009 4444
//float Port_Item12_N009 4448
//float Port_Item13_N009 4452
//float Port_Input0_N187 4460
//float Port_Item0_N114 4464
//float Port_Item1_N114 4468
//float Port_Item2_N114 4472
//float Port_Item3_N114 4476
//float Port_Item4_N114 4480
//float Port_Item5_N114 4484
//float Port_Item6_N114 4488
//float Port_Item7_N114 4492
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
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 31 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_normTex 32 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 33 0
//spec_const bool SC_USE_UV_MIN_MAX_normTex 34 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 35 0
//spec_const bool SC_USE_UV_TRANSFORM_normTex 36 0
//spec_const bool UseViewSpaceDepthVariant 37 1
//spec_const bool intensityTextureHasSwappedViews 38 0
//spec_const bool normTexHasSwappedViews 39 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 40 0
//spec_const bool sc_BlendMode_Add 41 0
//spec_const bool sc_BlendMode_AlphaTest 42 0
//spec_const bool sc_BlendMode_AlphaToCoverage 43 0
//spec_const bool sc_BlendMode_ColoredGlass 44 0
//spec_const bool sc_BlendMode_Custom 45 0
//spec_const bool sc_BlendMode_Max 46 0
//spec_const bool sc_BlendMode_Min 47 0
//spec_const bool sc_BlendMode_MultiplyOriginal 48 0
//spec_const bool sc_BlendMode_Multiply 49 0
//spec_const bool sc_BlendMode_Normal 50 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 51 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 52 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 53 0
//spec_const bool sc_BlendMode_Screen 54 0
//spec_const bool sc_DepthOnly 55 0
//spec_const bool sc_FramebufferFetch 56 0
//spec_const bool sc_MotionVectorsPass 57 0
//spec_const bool sc_OITCompositingPass 58 0
//spec_const bool sc_OITDepthBoundsPass 59 0
//spec_const bool sc_OITDepthGatherPass 60 0
//spec_const bool sc_OutputBounds 61 0
//spec_const bool sc_ProjectiveShadowsCaster 62 0
//spec_const bool sc_ProjectiveShadowsReceiver 63 0
//spec_const bool sc_RenderAlphaToColor 64 0
//spec_const bool sc_ScreenTextureHasSwappedViews 65 0
//spec_const bool sc_TAAEnabled 66 0
//spec_const bool sc_VertexBlendingUseNormals 67 0
//spec_const bool sc_VertexBlending 68 0
//spec_const bool sc_Voxelization 69 0
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 70 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_normTex 71 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 72 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_normTex 73 -1
//spec_const int intensityTextureLayout 74 0
//spec_const int normTexLayout 75 0
//spec_const int sc_DepthBufferMode 76 0
//spec_const int sc_RenderingSpace 77 -1
//spec_const int sc_ScreenTextureLayout 78 0
//spec_const int sc_ShaderCacheConstant 79 0
//spec_const int sc_SkinBonesCount 80 0
//spec_const int sc_StereoRenderingMode 81 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 82 0
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
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_normTex [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_normTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_normTex) ? SC_USE_CLAMP_TO_BORDER_normTex : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(33)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_normTex [[function_constant(34)]];
constant bool SC_USE_UV_MIN_MAX_normTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_normTex) ? SC_USE_UV_MIN_MAX_normTex : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(35)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_normTex [[function_constant(36)]];
constant bool SC_USE_UV_TRANSFORM_normTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_normTex) ? SC_USE_UV_TRANSFORM_normTex : false;
constant bool UseViewSpaceDepthVariant [[function_constant(37)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool intensityTextureHasSwappedViews [[function_constant(38)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool normTexHasSwappedViews [[function_constant(39)]];
constant bool normTexHasSwappedViews_tmp = is_function_constant_defined(normTexHasSwappedViews) ? normTexHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(40)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(41)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(42)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(43)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(44)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(45)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(46)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(47)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(48)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(49)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(50)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(51)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(52)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(53)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(54)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(55)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_FramebufferFetch [[function_constant(56)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_MotionVectorsPass [[function_constant(57)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(58)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(59)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(60)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(61)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(62)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(63)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RenderAlphaToColor [[function_constant(64)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(65)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(66)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(67)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(68)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(69)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(70)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_normTex [[function_constant(71)]];
constant int SC_SOFTWARE_WRAP_MODE_U_normTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_normTex) ? SC_SOFTWARE_WRAP_MODE_U_normTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(72)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_normTex [[function_constant(73)]];
constant int SC_SOFTWARE_WRAP_MODE_V_normTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_normTex) ? SC_SOFTWARE_WRAP_MODE_V_normTex : -1;
constant int intensityTextureLayout [[function_constant(74)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int normTexLayout [[function_constant(75)]];
constant int normTexLayout_tmp = is_function_constant_defined(normTexLayout) ? normTexLayout : 0;
constant int sc_DepthBufferMode [[function_constant(76)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_RenderingSpace [[function_constant(77)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(78)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(79)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(80)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(81)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(82)]];
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
float4 normTexSize;
float4 normTexDims;
float4 normTexView;
float3x3 normTexTransform;
float4 normTexUvMinMax;
float4 normTexBorderColor;
float2 blurDirection;
float Port_Input1_N047;
float Port_Value2_N048;
float Port_Item0_N009;
float Port_Item1_N009;
float Port_Item2_N009;
float Port_Item3_N009;
float Port_Item4_N009;
float Port_Item5_N009;
float Port_Item6_N009;
float Port_Item7_N009;
float Port_Item8_N009;
float Port_Item9_N009;
float Port_Item10_N009;
float Port_Item11_N009;
float Port_Item12_N009;
float Port_Item13_N009;
float Port_Import_N003;
float Port_Input0_N187;
float Port_Item0_N114;
float Port_Item1_N114;
float Port_Item2_N114;
float Port_Item3_N114;
float Port_Item4_N114;
float Port_Item5_N114;
float Port_Item6_N114;
float Port_Item7_N114;
float2 Port_Import_N005;
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
texture2d<float> intensityTexture [[id(1)]];
texture2d<float> normTex [[id(2)]];
texture2d<float> sc_ScreenTexture [[id(14)]];
sampler intensityTextureSmpSC [[id(17)]];
sampler normTexSmpSC [[id(18)]];
sampler sc_ScreenTextureSmpSC [[id(23)]];
constant userUniformsObj* UserUniforms [[id(26)]];
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
float2 gScreenCoord;
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
float4 normTexSize;
float4 normTexDims;
float4 normTexView;
float3x3 normTexTransform;
float4 normTexUvMinMax;
float4 normTexBorderColor;
float2 blurDirection;
float Port_Input1_N047;
float Port_Value2_N048;
float Port_Item0_N009;
float Port_Item1_N009;
float Port_Item2_N009;
float Port_Item3_N009;
float Port_Item4_N009;
float Port_Item5_N009;
float Port_Item6_N009;
float Port_Item7_N009;
float Port_Item8_N009;
float Port_Item9_N009;
float Port_Item10_N009;
float Port_Item11_N009;
float Port_Item12_N009;
float Port_Item13_N009;
float Port_Import_N003;
float Port_Input0_N187;
float Port_Item0_N114;
float Port_Item1_N114;
float Port_Item2_N114;
float Port_Item3_N114;
float Port_Item4_N114;
float Port_Item5_N114;
float Port_Item6_N114;
float Port_Item7_N114;
float2 Port_Import_N005;
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
texture2d<float> intensityTexture [[id(1)]];
texture2d<float> normTex [[id(2)]];
texture2d<float> sc_ScreenTexture [[id(14)]];
sampler intensityTextureSmpSC [[id(17)]];
sampler normTexSmpSC [[id(18)]];
sampler sc_ScreenTextureSmpSC [[id(23)]];
constant userUniformsObj* UserUniforms [[id(26)]];
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
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
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
Globals.Loop_Index_ID0=0.0;
Globals.Loop_Ratio_ID0=0.0;
Globals.Loop_Count_ID0=0.0;
float2 ScreenCoord_N19=float2(0.0);
ScreenCoord_N19=Globals.gScreenCoord;
float4 Color_N46=float4(0.0);
int l9_14;
if ((int(normTexHasSwappedViews_tmp)!=0))
{
int l9_15=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_15=0;
}
else
{
l9_15=in.varStereoViewID;
}
int l9_16=l9_15;
l9_14=1-l9_16;
}
else
{
int l9_17=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_17=0;
}
else
{
l9_17=in.varStereoViewID;
}
int l9_18=l9_17;
l9_14=l9_18;
}
int l9_19=l9_14;
int param=normTexLayout_tmp;
int param_1=l9_19;
float2 param_2=ScreenCoord_N19;
bool param_3=(int(SC_USE_UV_TRANSFORM_normTex_tmp)!=0);
float3x3 param_4=(*sc_set0.UserUniforms).normTexTransform;
int2 param_5=int2(SC_SOFTWARE_WRAP_MODE_U_normTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normTex_tmp);
bool param_6=(int(SC_USE_UV_MIN_MAX_normTex_tmp)!=0);
float4 param_7=(*sc_set0.UserUniforms).normTexUvMinMax;
bool param_8=(int(SC_USE_CLAMP_TO_BORDER_normTex_tmp)!=0);
float4 param_9=(*sc_set0.UserUniforms).normTexBorderColor;
float param_10=0.0;
bool l9_20=param_8&&(!param_6);
float l9_21=1.0;
float l9_22=param_2.x;
int l9_23=param_5.x;
if (l9_23==1)
{
l9_22=fract(l9_22);
}
else
{
if (l9_23==2)
{
float l9_24=fract(l9_22);
float l9_25=l9_22-l9_24;
float l9_26=step(0.25,fract(l9_25*0.5));
l9_22=mix(l9_24,1.0-l9_24,fast::clamp(l9_26,0.0,1.0));
}
}
param_2.x=l9_22;
float l9_27=param_2.y;
int l9_28=param_5.y;
if (l9_28==1)
{
l9_27=fract(l9_27);
}
else
{
if (l9_28==2)
{
float l9_29=fract(l9_27);
float l9_30=l9_27-l9_29;
float l9_31=step(0.25,fract(l9_30*0.5));
l9_27=mix(l9_29,1.0-l9_29,fast::clamp(l9_31,0.0,1.0));
}
}
param_2.y=l9_27;
if (param_6)
{
bool l9_32=param_8;
bool l9_33;
if (l9_32)
{
l9_33=param_5.x==3;
}
else
{
l9_33=l9_32;
}
float l9_34=param_2.x;
float l9_35=param_7.x;
float l9_36=param_7.z;
bool l9_37=l9_33;
float l9_38=l9_21;
float l9_39=fast::clamp(l9_34,l9_35,l9_36);
float l9_40=step(abs(l9_34-l9_39),9.9999997e-06);
l9_38*=(l9_40+((1.0-float(l9_37))*(1.0-l9_40)));
l9_34=l9_39;
param_2.x=l9_34;
l9_21=l9_38;
bool l9_41=param_8;
bool l9_42;
if (l9_41)
{
l9_42=param_5.y==3;
}
else
{
l9_42=l9_41;
}
float l9_43=param_2.y;
float l9_44=param_7.y;
float l9_45=param_7.w;
bool l9_46=l9_42;
float l9_47=l9_21;
float l9_48=fast::clamp(l9_43,l9_44,l9_45);
float l9_49=step(abs(l9_43-l9_48),9.9999997e-06);
l9_47*=(l9_49+((1.0-float(l9_46))*(1.0-l9_49)));
l9_43=l9_48;
param_2.y=l9_43;
l9_21=l9_47;
}
float2 l9_50=param_2;
bool l9_51=param_3;
float3x3 l9_52=param_4;
if (l9_51)
{
l9_50=float2((l9_52*float3(l9_50,1.0)).xy);
}
float2 l9_53=l9_50;
param_2=l9_53;
float l9_54=param_2.x;
int l9_55=param_5.x;
bool l9_56=l9_20;
float l9_57=l9_21;
if ((l9_55==0)||(l9_55==3))
{
float l9_58=l9_54;
float l9_59=0.0;
float l9_60=1.0;
bool l9_61=l9_56;
float l9_62=l9_57;
float l9_63=fast::clamp(l9_58,l9_59,l9_60);
float l9_64=step(abs(l9_58-l9_63),9.9999997e-06);
l9_62*=(l9_64+((1.0-float(l9_61))*(1.0-l9_64)));
l9_58=l9_63;
l9_54=l9_58;
l9_57=l9_62;
}
param_2.x=l9_54;
l9_21=l9_57;
float l9_65=param_2.y;
int l9_66=param_5.y;
bool l9_67=l9_20;
float l9_68=l9_21;
if ((l9_66==0)||(l9_66==3))
{
float l9_69=l9_65;
float l9_70=0.0;
float l9_71=1.0;
bool l9_72=l9_67;
float l9_73=l9_68;
float l9_74=fast::clamp(l9_69,l9_70,l9_71);
float l9_75=step(abs(l9_69-l9_74),9.9999997e-06);
l9_73*=(l9_75+((1.0-float(l9_72))*(1.0-l9_75)));
l9_69=l9_74;
l9_65=l9_69;
l9_68=l9_73;
}
param_2.y=l9_65;
l9_21=l9_68;
float2 l9_76=param_2;
int l9_77=param;
int l9_78=param_1;
float l9_79=param_10;
float2 l9_80=l9_76;
int l9_81=l9_77;
int l9_82=l9_78;
float3 l9_83=float3(0.0);
if (l9_81==0)
{
l9_83=float3(l9_80,0.0);
}
else
{
if (l9_81==1)
{
l9_83=float3(l9_80.x,(l9_80.y*0.5)+(0.5-(float(l9_82)*0.5)),0.0);
}
else
{
l9_83=float3(l9_80,float(l9_82));
}
}
float3 l9_84=l9_83;
float3 l9_85=l9_84;
float4 l9_86=sc_set0.normTex.sample(sc_set0.normTexSmpSC,l9_85.xy,bias(l9_79));
float4 l9_87=l9_86;
if (param_8)
{
l9_87=mix(param_9,l9_87,float4(l9_21));
}
float4 l9_88=l9_87;
Color_N46=l9_88;
float4 Output_N47=float4(0.0);
Output_N47=Color_N46*float4((*sc_set0.UserUniforms).Port_Input1_N047);
float4 Value_N48=float4(0.0);
Value_N48=float4(Output_N47.xyz.x,Output_N47.xyz.y,Output_N47.xyz.z,Value_N48.w);
Value_N48.w=(*sc_set0.UserUniforms).Port_Value2_N048;
float4 Output_N134=float4(0.0);
ssGlobals param_12=Globals;
float4 param_11=float4(0.0);
param_12.Loop_Count_ID0=8.0;
float4 l9_89=param_11;
ssGlobals l9_90=param_12;
float4 l9_91=float4(0.0);
l9_90.Loop_Index_ID0=0.0;
l9_90.Loop_Ratio_ID0=0.0;
float l9_92=0.0;
l9_92=l9_90.Loop_Index_ID0;
float l9_93=0.0;
float l9_94=l9_92;
float l9_95=(*sc_set0.UserUniforms).Port_Item0_N009;
float l9_96=(*sc_set0.UserUniforms).Port_Item1_N009;
float l9_97=(*sc_set0.UserUniforms).Port_Item2_N009;
float l9_98=(*sc_set0.UserUniforms).Port_Item3_N009;
float l9_99=(*sc_set0.UserUniforms).Port_Item4_N009;
float l9_100=(*sc_set0.UserUniforms).Port_Item5_N009;
float l9_101=(*sc_set0.UserUniforms).Port_Item6_N009;
float l9_102=(*sc_set0.UserUniforms).Port_Item7_N009;
float l9_103=(*sc_set0.UserUniforms).Port_Item8_N009;
float l9_104=(*sc_set0.UserUniforms).Port_Item9_N009;
float l9_105=(*sc_set0.UserUniforms).Port_Item10_N009;
float l9_106=(*sc_set0.UserUniforms).Port_Item11_N009;
float l9_107=(*sc_set0.UserUniforms).Port_Item12_N009;
float l9_108=(*sc_set0.UserUniforms).Port_Item13_N009;
float l9_109[14];
l9_109[0]=l9_95;
l9_109[1]=l9_96;
l9_109[2]=l9_97;
l9_109[3]=l9_98;
l9_109[4]=l9_99;
l9_109[5]=l9_100;
l9_109[6]=l9_101;
l9_109[7]=l9_102;
l9_109[8]=l9_103;
l9_109[9]=l9_104;
l9_109[10]=l9_105;
l9_109[11]=l9_106;
l9_109[12]=l9_107;
l9_109[13]=l9_108;
int l9_110=int(fast::clamp(l9_94+9.9999997e-05,0.0,13.0));
float l9_111=l9_109[l9_110];
l9_93=l9_111;
float l9_112=0.0;
l9_112=l9_93;
float l9_113=0.0;
l9_113=exp((*sc_set0.UserUniforms).Port_Input0_N187);
float l9_114=0.0;
l9_114=l9_112*l9_113;
float2 l9_115=float2(0.0);
float2 l9_116=(*sc_set0.UserUniforms).normTexSize.zw;
l9_115=l9_116;
float2 l9_117=float2(0.0);
l9_117=l9_90.gScreenCoord;
float2 l9_118=float2(0.0);
float2 l9_119=(*sc_set0.UserUniforms).blurDirection;
l9_118=l9_119;
float2 l9_120=float2(0.0);
l9_120=l9_118*l9_115;
float l9_121=0.0;
float l9_122=l9_92;
float l9_123=(*sc_set0.UserUniforms).Port_Item0_N114;
float l9_124=(*sc_set0.UserUniforms).Port_Item1_N114;
float l9_125=(*sc_set0.UserUniforms).Port_Item2_N114;
float l9_126=(*sc_set0.UserUniforms).Port_Item3_N114;
float l9_127=(*sc_set0.UserUniforms).Port_Item4_N114;
float l9_128=(*sc_set0.UserUniforms).Port_Item5_N114;
float l9_129=(*sc_set0.UserUniforms).Port_Item6_N114;
float l9_130=(*sc_set0.UserUniforms).Port_Item7_N114;
float l9_131[8];
l9_131[0]=l9_123;
l9_131[1]=l9_124;
l9_131[2]=l9_125;
l9_131[3]=l9_126;
l9_131[4]=l9_127;
l9_131[5]=l9_128;
l9_131[6]=l9_129;
l9_131[7]=l9_130;
int l9_132=int(fast::clamp(l9_122+9.9999997e-05,0.0,7.0));
float l9_133=l9_131[l9_132];
l9_121=l9_133;
float2 l9_134=float2(0.0);
l9_134=l9_120*float2(l9_121);
float2 l9_135=float2(0.0);
l9_135=l9_117+l9_134;
float2 l9_136=float2(0.0);
l9_136=l9_135;
float4 l9_137=float4(0.0);
int l9_138;
if ((int(normTexHasSwappedViews_tmp)!=0))
{
int l9_139=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_139=0;
}
else
{
l9_139=in.varStereoViewID;
}
int l9_140=l9_139;
l9_138=1-l9_140;
}
else
{
int l9_141=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_141=0;
}
else
{
l9_141=in.varStereoViewID;
}
int l9_142=l9_141;
l9_138=l9_142;
}
int l9_143=l9_138;
int l9_144=normTexLayout_tmp;
int l9_145=l9_143;
float2 l9_146=l9_136;
bool l9_147=(int(SC_USE_UV_TRANSFORM_normTex_tmp)!=0);
float3x3 l9_148=(*sc_set0.UserUniforms).normTexTransform;
int2 l9_149=int2(SC_SOFTWARE_WRAP_MODE_U_normTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normTex_tmp);
bool l9_150=(int(SC_USE_UV_MIN_MAX_normTex_tmp)!=0);
float4 l9_151=(*sc_set0.UserUniforms).normTexUvMinMax;
bool l9_152=(int(SC_USE_CLAMP_TO_BORDER_normTex_tmp)!=0);
float4 l9_153=(*sc_set0.UserUniforms).normTexBorderColor;
float l9_154=0.0;
bool l9_155=l9_152&&(!l9_150);
float l9_156=1.0;
float l9_157=l9_146.x;
int l9_158=l9_149.x;
if (l9_158==1)
{
l9_157=fract(l9_157);
}
else
{
if (l9_158==2)
{
float l9_159=fract(l9_157);
float l9_160=l9_157-l9_159;
float l9_161=step(0.25,fract(l9_160*0.5));
l9_157=mix(l9_159,1.0-l9_159,fast::clamp(l9_161,0.0,1.0));
}
}
l9_146.x=l9_157;
float l9_162=l9_146.y;
int l9_163=l9_149.y;
if (l9_163==1)
{
l9_162=fract(l9_162);
}
else
{
if (l9_163==2)
{
float l9_164=fract(l9_162);
float l9_165=l9_162-l9_164;
float l9_166=step(0.25,fract(l9_165*0.5));
l9_162=mix(l9_164,1.0-l9_164,fast::clamp(l9_166,0.0,1.0));
}
}
l9_146.y=l9_162;
if (l9_150)
{
bool l9_167=l9_152;
bool l9_168;
if (l9_167)
{
l9_168=l9_149.x==3;
}
else
{
l9_168=l9_167;
}
float l9_169=l9_146.x;
float l9_170=l9_151.x;
float l9_171=l9_151.z;
bool l9_172=l9_168;
float l9_173=l9_156;
float l9_174=fast::clamp(l9_169,l9_170,l9_171);
float l9_175=step(abs(l9_169-l9_174),9.9999997e-06);
l9_173*=(l9_175+((1.0-float(l9_172))*(1.0-l9_175)));
l9_169=l9_174;
l9_146.x=l9_169;
l9_156=l9_173;
bool l9_176=l9_152;
bool l9_177;
if (l9_176)
{
l9_177=l9_149.y==3;
}
else
{
l9_177=l9_176;
}
float l9_178=l9_146.y;
float l9_179=l9_151.y;
float l9_180=l9_151.w;
bool l9_181=l9_177;
float l9_182=l9_156;
float l9_183=fast::clamp(l9_178,l9_179,l9_180);
float l9_184=step(abs(l9_178-l9_183),9.9999997e-06);
l9_182*=(l9_184+((1.0-float(l9_181))*(1.0-l9_184)));
l9_178=l9_183;
l9_146.y=l9_178;
l9_156=l9_182;
}
float2 l9_185=l9_146;
bool l9_186=l9_147;
float3x3 l9_187=l9_148;
if (l9_186)
{
l9_185=float2((l9_187*float3(l9_185,1.0)).xy);
}
float2 l9_188=l9_185;
l9_146=l9_188;
float l9_189=l9_146.x;
int l9_190=l9_149.x;
bool l9_191=l9_155;
float l9_192=l9_156;
if ((l9_190==0)||(l9_190==3))
{
float l9_193=l9_189;
float l9_194=0.0;
float l9_195=1.0;
bool l9_196=l9_191;
float l9_197=l9_192;
float l9_198=fast::clamp(l9_193,l9_194,l9_195);
float l9_199=step(abs(l9_193-l9_198),9.9999997e-06);
l9_197*=(l9_199+((1.0-float(l9_196))*(1.0-l9_199)));
l9_193=l9_198;
l9_189=l9_193;
l9_192=l9_197;
}
l9_146.x=l9_189;
l9_156=l9_192;
float l9_200=l9_146.y;
int l9_201=l9_149.y;
bool l9_202=l9_155;
float l9_203=l9_156;
if ((l9_201==0)||(l9_201==3))
{
float l9_204=l9_200;
float l9_205=0.0;
float l9_206=1.0;
bool l9_207=l9_202;
float l9_208=l9_203;
float l9_209=fast::clamp(l9_204,l9_205,l9_206);
float l9_210=step(abs(l9_204-l9_209),9.9999997e-06);
l9_208*=(l9_210+((1.0-float(l9_207))*(1.0-l9_210)));
l9_204=l9_209;
l9_200=l9_204;
l9_203=l9_208;
}
l9_146.y=l9_200;
l9_156=l9_203;
float2 l9_211=l9_146;
int l9_212=l9_144;
int l9_213=l9_145;
float l9_214=l9_154;
float2 l9_215=l9_211;
int l9_216=l9_212;
int l9_217=l9_213;
float3 l9_218=float3(0.0);
if (l9_216==0)
{
l9_218=float3(l9_215,0.0);
}
else
{
if (l9_216==1)
{
l9_218=float3(l9_215.x,(l9_215.y*0.5)+(0.5-(float(l9_217)*0.5)),0.0);
}
else
{
l9_218=float3(l9_215,float(l9_217));
}
}
float3 l9_219=l9_218;
float3 l9_220=l9_219;
float4 l9_221=sc_set0.normTex.sample(sc_set0.normTexSmpSC,l9_220.xy,bias(l9_214));
float4 l9_222=l9_221;
if (l9_152)
{
l9_222=mix(l9_153,l9_222,float4(l9_156));
}
float4 l9_223=l9_222;
l9_137=l9_223;
float4 l9_224=float4(0.0);
l9_224=float4(l9_114)*l9_137;
float4 l9_225=float4(0.0);
l9_225=float4(l9_224.xyz.x,l9_224.xyz.y,l9_224.xyz.z,l9_225.w);
l9_225.w=l9_114;
float4 l9_226=float4(0.0);
l9_226=l9_225;
l9_91=l9_226;
l9_89+=l9_91;
param_11=l9_89;
float4 l9_227=param_11;
ssGlobals l9_228=param_12;
float4 l9_229=float4(0.0);
l9_228.Loop_Index_ID0=1.0;
l9_228.Loop_Ratio_ID0=0.142857;
float l9_230=0.0;
l9_230=l9_228.Loop_Index_ID0;
float l9_231=0.0;
float l9_232=l9_230;
float l9_233=(*sc_set0.UserUniforms).Port_Item0_N009;
float l9_234=(*sc_set0.UserUniforms).Port_Item1_N009;
float l9_235=(*sc_set0.UserUniforms).Port_Item2_N009;
float l9_236=(*sc_set0.UserUniforms).Port_Item3_N009;
float l9_237=(*sc_set0.UserUniforms).Port_Item4_N009;
float l9_238=(*sc_set0.UserUniforms).Port_Item5_N009;
float l9_239=(*sc_set0.UserUniforms).Port_Item6_N009;
float l9_240=(*sc_set0.UserUniforms).Port_Item7_N009;
float l9_241=(*sc_set0.UserUniforms).Port_Item8_N009;
float l9_242=(*sc_set0.UserUniforms).Port_Item9_N009;
float l9_243=(*sc_set0.UserUniforms).Port_Item10_N009;
float l9_244=(*sc_set0.UserUniforms).Port_Item11_N009;
float l9_245=(*sc_set0.UserUniforms).Port_Item12_N009;
float l9_246=(*sc_set0.UserUniforms).Port_Item13_N009;
float l9_247[14];
l9_247[0]=l9_233;
l9_247[1]=l9_234;
l9_247[2]=l9_235;
l9_247[3]=l9_236;
l9_247[4]=l9_237;
l9_247[5]=l9_238;
l9_247[6]=l9_239;
l9_247[7]=l9_240;
l9_247[8]=l9_241;
l9_247[9]=l9_242;
l9_247[10]=l9_243;
l9_247[11]=l9_244;
l9_247[12]=l9_245;
l9_247[13]=l9_246;
int l9_248=int(fast::clamp(l9_232+9.9999997e-05,0.0,13.0));
float l9_249=l9_247[l9_248];
l9_231=l9_249;
float l9_250=0.0;
l9_250=l9_231;
float l9_251=0.0;
l9_251=exp((*sc_set0.UserUniforms).Port_Input0_N187);
float l9_252=0.0;
l9_252=l9_250*l9_251;
float2 l9_253=float2(0.0);
float2 l9_254=(*sc_set0.UserUniforms).normTexSize.zw;
l9_253=l9_254;
float2 l9_255=float2(0.0);
l9_255=l9_228.gScreenCoord;
float2 l9_256=float2(0.0);
float2 l9_257=(*sc_set0.UserUniforms).blurDirection;
l9_256=l9_257;
float2 l9_258=float2(0.0);
l9_258=l9_256*l9_253;
float l9_259=0.0;
float l9_260=l9_230;
float l9_261=(*sc_set0.UserUniforms).Port_Item0_N114;
float l9_262=(*sc_set0.UserUniforms).Port_Item1_N114;
float l9_263=(*sc_set0.UserUniforms).Port_Item2_N114;
float l9_264=(*sc_set0.UserUniforms).Port_Item3_N114;
float l9_265=(*sc_set0.UserUniforms).Port_Item4_N114;
float l9_266=(*sc_set0.UserUniforms).Port_Item5_N114;
float l9_267=(*sc_set0.UserUniforms).Port_Item6_N114;
float l9_268=(*sc_set0.UserUniforms).Port_Item7_N114;
float l9_269[8];
l9_269[0]=l9_261;
l9_269[1]=l9_262;
l9_269[2]=l9_263;
l9_269[3]=l9_264;
l9_269[4]=l9_265;
l9_269[5]=l9_266;
l9_269[6]=l9_267;
l9_269[7]=l9_268;
int l9_270=int(fast::clamp(l9_260+9.9999997e-05,0.0,7.0));
float l9_271=l9_269[l9_270];
l9_259=l9_271;
float2 l9_272=float2(0.0);
l9_272=l9_258*float2(l9_259);
float2 l9_273=float2(0.0);
l9_273=l9_255+l9_272;
float2 l9_274=float2(0.0);
l9_274=l9_273;
float4 l9_275=float4(0.0);
int l9_276;
if ((int(normTexHasSwappedViews_tmp)!=0))
{
int l9_277=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_277=0;
}
else
{
l9_277=in.varStereoViewID;
}
int l9_278=l9_277;
l9_276=1-l9_278;
}
else
{
int l9_279=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_279=0;
}
else
{
l9_279=in.varStereoViewID;
}
int l9_280=l9_279;
l9_276=l9_280;
}
int l9_281=l9_276;
int l9_282=normTexLayout_tmp;
int l9_283=l9_281;
float2 l9_284=l9_274;
bool l9_285=(int(SC_USE_UV_TRANSFORM_normTex_tmp)!=0);
float3x3 l9_286=(*sc_set0.UserUniforms).normTexTransform;
int2 l9_287=int2(SC_SOFTWARE_WRAP_MODE_U_normTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normTex_tmp);
bool l9_288=(int(SC_USE_UV_MIN_MAX_normTex_tmp)!=0);
float4 l9_289=(*sc_set0.UserUniforms).normTexUvMinMax;
bool l9_290=(int(SC_USE_CLAMP_TO_BORDER_normTex_tmp)!=0);
float4 l9_291=(*sc_set0.UserUniforms).normTexBorderColor;
float l9_292=0.0;
bool l9_293=l9_290&&(!l9_288);
float l9_294=1.0;
float l9_295=l9_284.x;
int l9_296=l9_287.x;
if (l9_296==1)
{
l9_295=fract(l9_295);
}
else
{
if (l9_296==2)
{
float l9_297=fract(l9_295);
float l9_298=l9_295-l9_297;
float l9_299=step(0.25,fract(l9_298*0.5));
l9_295=mix(l9_297,1.0-l9_297,fast::clamp(l9_299,0.0,1.0));
}
}
l9_284.x=l9_295;
float l9_300=l9_284.y;
int l9_301=l9_287.y;
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
l9_284.y=l9_300;
if (l9_288)
{
bool l9_305=l9_290;
bool l9_306;
if (l9_305)
{
l9_306=l9_287.x==3;
}
else
{
l9_306=l9_305;
}
float l9_307=l9_284.x;
float l9_308=l9_289.x;
float l9_309=l9_289.z;
bool l9_310=l9_306;
float l9_311=l9_294;
float l9_312=fast::clamp(l9_307,l9_308,l9_309);
float l9_313=step(abs(l9_307-l9_312),9.9999997e-06);
l9_311*=(l9_313+((1.0-float(l9_310))*(1.0-l9_313)));
l9_307=l9_312;
l9_284.x=l9_307;
l9_294=l9_311;
bool l9_314=l9_290;
bool l9_315;
if (l9_314)
{
l9_315=l9_287.y==3;
}
else
{
l9_315=l9_314;
}
float l9_316=l9_284.y;
float l9_317=l9_289.y;
float l9_318=l9_289.w;
bool l9_319=l9_315;
float l9_320=l9_294;
float l9_321=fast::clamp(l9_316,l9_317,l9_318);
float l9_322=step(abs(l9_316-l9_321),9.9999997e-06);
l9_320*=(l9_322+((1.0-float(l9_319))*(1.0-l9_322)));
l9_316=l9_321;
l9_284.y=l9_316;
l9_294=l9_320;
}
float2 l9_323=l9_284;
bool l9_324=l9_285;
float3x3 l9_325=l9_286;
if (l9_324)
{
l9_323=float2((l9_325*float3(l9_323,1.0)).xy);
}
float2 l9_326=l9_323;
l9_284=l9_326;
float l9_327=l9_284.x;
int l9_328=l9_287.x;
bool l9_329=l9_293;
float l9_330=l9_294;
if ((l9_328==0)||(l9_328==3))
{
float l9_331=l9_327;
float l9_332=0.0;
float l9_333=1.0;
bool l9_334=l9_329;
float l9_335=l9_330;
float l9_336=fast::clamp(l9_331,l9_332,l9_333);
float l9_337=step(abs(l9_331-l9_336),9.9999997e-06);
l9_335*=(l9_337+((1.0-float(l9_334))*(1.0-l9_337)));
l9_331=l9_336;
l9_327=l9_331;
l9_330=l9_335;
}
l9_284.x=l9_327;
l9_294=l9_330;
float l9_338=l9_284.y;
int l9_339=l9_287.y;
bool l9_340=l9_293;
float l9_341=l9_294;
if ((l9_339==0)||(l9_339==3))
{
float l9_342=l9_338;
float l9_343=0.0;
float l9_344=1.0;
bool l9_345=l9_340;
float l9_346=l9_341;
float l9_347=fast::clamp(l9_342,l9_343,l9_344);
float l9_348=step(abs(l9_342-l9_347),9.9999997e-06);
l9_346*=(l9_348+((1.0-float(l9_345))*(1.0-l9_348)));
l9_342=l9_347;
l9_338=l9_342;
l9_341=l9_346;
}
l9_284.y=l9_338;
l9_294=l9_341;
float2 l9_349=l9_284;
int l9_350=l9_282;
int l9_351=l9_283;
float l9_352=l9_292;
float2 l9_353=l9_349;
int l9_354=l9_350;
int l9_355=l9_351;
float3 l9_356=float3(0.0);
if (l9_354==0)
{
l9_356=float3(l9_353,0.0);
}
else
{
if (l9_354==1)
{
l9_356=float3(l9_353.x,(l9_353.y*0.5)+(0.5-(float(l9_355)*0.5)),0.0);
}
else
{
l9_356=float3(l9_353,float(l9_355));
}
}
float3 l9_357=l9_356;
float3 l9_358=l9_357;
float4 l9_359=sc_set0.normTex.sample(sc_set0.normTexSmpSC,l9_358.xy,bias(l9_352));
float4 l9_360=l9_359;
if (l9_290)
{
l9_360=mix(l9_291,l9_360,float4(l9_294));
}
float4 l9_361=l9_360;
l9_275=l9_361;
float4 l9_362=float4(0.0);
l9_362=float4(l9_252)*l9_275;
float4 l9_363=float4(0.0);
l9_363=float4(l9_362.xyz.x,l9_362.xyz.y,l9_362.xyz.z,l9_363.w);
l9_363.w=l9_252;
float4 l9_364=float4(0.0);
l9_364=l9_363;
l9_229=l9_364;
l9_227+=l9_229;
param_11=l9_227;
float4 l9_365=param_11;
ssGlobals l9_366=param_12;
float4 l9_367=float4(0.0);
l9_366.Loop_Index_ID0=2.0;
l9_366.Loop_Ratio_ID0=0.285714;
float l9_368=0.0;
l9_368=l9_366.Loop_Index_ID0;
float l9_369=0.0;
float l9_370=l9_368;
float l9_371=(*sc_set0.UserUniforms).Port_Item0_N009;
float l9_372=(*sc_set0.UserUniforms).Port_Item1_N009;
float l9_373=(*sc_set0.UserUniforms).Port_Item2_N009;
float l9_374=(*sc_set0.UserUniforms).Port_Item3_N009;
float l9_375=(*sc_set0.UserUniforms).Port_Item4_N009;
float l9_376=(*sc_set0.UserUniforms).Port_Item5_N009;
float l9_377=(*sc_set0.UserUniforms).Port_Item6_N009;
float l9_378=(*sc_set0.UserUniforms).Port_Item7_N009;
float l9_379=(*sc_set0.UserUniforms).Port_Item8_N009;
float l9_380=(*sc_set0.UserUniforms).Port_Item9_N009;
float l9_381=(*sc_set0.UserUniforms).Port_Item10_N009;
float l9_382=(*sc_set0.UserUniforms).Port_Item11_N009;
float l9_383=(*sc_set0.UserUniforms).Port_Item12_N009;
float l9_384=(*sc_set0.UserUniforms).Port_Item13_N009;
float l9_385[14];
l9_385[0]=l9_371;
l9_385[1]=l9_372;
l9_385[2]=l9_373;
l9_385[3]=l9_374;
l9_385[4]=l9_375;
l9_385[5]=l9_376;
l9_385[6]=l9_377;
l9_385[7]=l9_378;
l9_385[8]=l9_379;
l9_385[9]=l9_380;
l9_385[10]=l9_381;
l9_385[11]=l9_382;
l9_385[12]=l9_383;
l9_385[13]=l9_384;
int l9_386=int(fast::clamp(l9_370+9.9999997e-05,0.0,13.0));
float l9_387=l9_385[l9_386];
l9_369=l9_387;
float l9_388=0.0;
l9_388=l9_369;
float l9_389=0.0;
l9_389=exp((*sc_set0.UserUniforms).Port_Input0_N187);
float l9_390=0.0;
l9_390=l9_388*l9_389;
float2 l9_391=float2(0.0);
float2 l9_392=(*sc_set0.UserUniforms).normTexSize.zw;
l9_391=l9_392;
float2 l9_393=float2(0.0);
l9_393=l9_366.gScreenCoord;
float2 l9_394=float2(0.0);
float2 l9_395=(*sc_set0.UserUniforms).blurDirection;
l9_394=l9_395;
float2 l9_396=float2(0.0);
l9_396=l9_394*l9_391;
float l9_397=0.0;
float l9_398=l9_368;
float l9_399=(*sc_set0.UserUniforms).Port_Item0_N114;
float l9_400=(*sc_set0.UserUniforms).Port_Item1_N114;
float l9_401=(*sc_set0.UserUniforms).Port_Item2_N114;
float l9_402=(*sc_set0.UserUniforms).Port_Item3_N114;
float l9_403=(*sc_set0.UserUniforms).Port_Item4_N114;
float l9_404=(*sc_set0.UserUniforms).Port_Item5_N114;
float l9_405=(*sc_set0.UserUniforms).Port_Item6_N114;
float l9_406=(*sc_set0.UserUniforms).Port_Item7_N114;
float l9_407[8];
l9_407[0]=l9_399;
l9_407[1]=l9_400;
l9_407[2]=l9_401;
l9_407[3]=l9_402;
l9_407[4]=l9_403;
l9_407[5]=l9_404;
l9_407[6]=l9_405;
l9_407[7]=l9_406;
int l9_408=int(fast::clamp(l9_398+9.9999997e-05,0.0,7.0));
float l9_409=l9_407[l9_408];
l9_397=l9_409;
float2 l9_410=float2(0.0);
l9_410=l9_396*float2(l9_397);
float2 l9_411=float2(0.0);
l9_411=l9_393+l9_410;
float2 l9_412=float2(0.0);
l9_412=l9_411;
float4 l9_413=float4(0.0);
int l9_414;
if ((int(normTexHasSwappedViews_tmp)!=0))
{
int l9_415=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_415=0;
}
else
{
l9_415=in.varStereoViewID;
}
int l9_416=l9_415;
l9_414=1-l9_416;
}
else
{
int l9_417=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_417=0;
}
else
{
l9_417=in.varStereoViewID;
}
int l9_418=l9_417;
l9_414=l9_418;
}
int l9_419=l9_414;
int l9_420=normTexLayout_tmp;
int l9_421=l9_419;
float2 l9_422=l9_412;
bool l9_423=(int(SC_USE_UV_TRANSFORM_normTex_tmp)!=0);
float3x3 l9_424=(*sc_set0.UserUniforms).normTexTransform;
int2 l9_425=int2(SC_SOFTWARE_WRAP_MODE_U_normTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normTex_tmp);
bool l9_426=(int(SC_USE_UV_MIN_MAX_normTex_tmp)!=0);
float4 l9_427=(*sc_set0.UserUniforms).normTexUvMinMax;
bool l9_428=(int(SC_USE_CLAMP_TO_BORDER_normTex_tmp)!=0);
float4 l9_429=(*sc_set0.UserUniforms).normTexBorderColor;
float l9_430=0.0;
bool l9_431=l9_428&&(!l9_426);
float l9_432=1.0;
float l9_433=l9_422.x;
int l9_434=l9_425.x;
if (l9_434==1)
{
l9_433=fract(l9_433);
}
else
{
if (l9_434==2)
{
float l9_435=fract(l9_433);
float l9_436=l9_433-l9_435;
float l9_437=step(0.25,fract(l9_436*0.5));
l9_433=mix(l9_435,1.0-l9_435,fast::clamp(l9_437,0.0,1.0));
}
}
l9_422.x=l9_433;
float l9_438=l9_422.y;
int l9_439=l9_425.y;
if (l9_439==1)
{
l9_438=fract(l9_438);
}
else
{
if (l9_439==2)
{
float l9_440=fract(l9_438);
float l9_441=l9_438-l9_440;
float l9_442=step(0.25,fract(l9_441*0.5));
l9_438=mix(l9_440,1.0-l9_440,fast::clamp(l9_442,0.0,1.0));
}
}
l9_422.y=l9_438;
if (l9_426)
{
bool l9_443=l9_428;
bool l9_444;
if (l9_443)
{
l9_444=l9_425.x==3;
}
else
{
l9_444=l9_443;
}
float l9_445=l9_422.x;
float l9_446=l9_427.x;
float l9_447=l9_427.z;
bool l9_448=l9_444;
float l9_449=l9_432;
float l9_450=fast::clamp(l9_445,l9_446,l9_447);
float l9_451=step(abs(l9_445-l9_450),9.9999997e-06);
l9_449*=(l9_451+((1.0-float(l9_448))*(1.0-l9_451)));
l9_445=l9_450;
l9_422.x=l9_445;
l9_432=l9_449;
bool l9_452=l9_428;
bool l9_453;
if (l9_452)
{
l9_453=l9_425.y==3;
}
else
{
l9_453=l9_452;
}
float l9_454=l9_422.y;
float l9_455=l9_427.y;
float l9_456=l9_427.w;
bool l9_457=l9_453;
float l9_458=l9_432;
float l9_459=fast::clamp(l9_454,l9_455,l9_456);
float l9_460=step(abs(l9_454-l9_459),9.9999997e-06);
l9_458*=(l9_460+((1.0-float(l9_457))*(1.0-l9_460)));
l9_454=l9_459;
l9_422.y=l9_454;
l9_432=l9_458;
}
float2 l9_461=l9_422;
bool l9_462=l9_423;
float3x3 l9_463=l9_424;
if (l9_462)
{
l9_461=float2((l9_463*float3(l9_461,1.0)).xy);
}
float2 l9_464=l9_461;
l9_422=l9_464;
float l9_465=l9_422.x;
int l9_466=l9_425.x;
bool l9_467=l9_431;
float l9_468=l9_432;
if ((l9_466==0)||(l9_466==3))
{
float l9_469=l9_465;
float l9_470=0.0;
float l9_471=1.0;
bool l9_472=l9_467;
float l9_473=l9_468;
float l9_474=fast::clamp(l9_469,l9_470,l9_471);
float l9_475=step(abs(l9_469-l9_474),9.9999997e-06);
l9_473*=(l9_475+((1.0-float(l9_472))*(1.0-l9_475)));
l9_469=l9_474;
l9_465=l9_469;
l9_468=l9_473;
}
l9_422.x=l9_465;
l9_432=l9_468;
float l9_476=l9_422.y;
int l9_477=l9_425.y;
bool l9_478=l9_431;
float l9_479=l9_432;
if ((l9_477==0)||(l9_477==3))
{
float l9_480=l9_476;
float l9_481=0.0;
float l9_482=1.0;
bool l9_483=l9_478;
float l9_484=l9_479;
float l9_485=fast::clamp(l9_480,l9_481,l9_482);
float l9_486=step(abs(l9_480-l9_485),9.9999997e-06);
l9_484*=(l9_486+((1.0-float(l9_483))*(1.0-l9_486)));
l9_480=l9_485;
l9_476=l9_480;
l9_479=l9_484;
}
l9_422.y=l9_476;
l9_432=l9_479;
float2 l9_487=l9_422;
int l9_488=l9_420;
int l9_489=l9_421;
float l9_490=l9_430;
float2 l9_491=l9_487;
int l9_492=l9_488;
int l9_493=l9_489;
float3 l9_494=float3(0.0);
if (l9_492==0)
{
l9_494=float3(l9_491,0.0);
}
else
{
if (l9_492==1)
{
l9_494=float3(l9_491.x,(l9_491.y*0.5)+(0.5-(float(l9_493)*0.5)),0.0);
}
else
{
l9_494=float3(l9_491,float(l9_493));
}
}
float3 l9_495=l9_494;
float3 l9_496=l9_495;
float4 l9_497=sc_set0.normTex.sample(sc_set0.normTexSmpSC,l9_496.xy,bias(l9_490));
float4 l9_498=l9_497;
if (l9_428)
{
l9_498=mix(l9_429,l9_498,float4(l9_432));
}
float4 l9_499=l9_498;
l9_413=l9_499;
float4 l9_500=float4(0.0);
l9_500=float4(l9_390)*l9_413;
float4 l9_501=float4(0.0);
l9_501=float4(l9_500.xyz.x,l9_500.xyz.y,l9_500.xyz.z,l9_501.w);
l9_501.w=l9_390;
float4 l9_502=float4(0.0);
l9_502=l9_501;
l9_367=l9_502;
l9_365+=l9_367;
param_11=l9_365;
float4 l9_503=param_11;
ssGlobals l9_504=param_12;
float4 l9_505=float4(0.0);
l9_504.Loop_Index_ID0=3.0;
l9_504.Loop_Ratio_ID0=0.42857099;
float l9_506=0.0;
l9_506=l9_504.Loop_Index_ID0;
float l9_507=0.0;
float l9_508=l9_506;
float l9_509=(*sc_set0.UserUniforms).Port_Item0_N009;
float l9_510=(*sc_set0.UserUniforms).Port_Item1_N009;
float l9_511=(*sc_set0.UserUniforms).Port_Item2_N009;
float l9_512=(*sc_set0.UserUniforms).Port_Item3_N009;
float l9_513=(*sc_set0.UserUniforms).Port_Item4_N009;
float l9_514=(*sc_set0.UserUniforms).Port_Item5_N009;
float l9_515=(*sc_set0.UserUniforms).Port_Item6_N009;
float l9_516=(*sc_set0.UserUniforms).Port_Item7_N009;
float l9_517=(*sc_set0.UserUniforms).Port_Item8_N009;
float l9_518=(*sc_set0.UserUniforms).Port_Item9_N009;
float l9_519=(*sc_set0.UserUniforms).Port_Item10_N009;
float l9_520=(*sc_set0.UserUniforms).Port_Item11_N009;
float l9_521=(*sc_set0.UserUniforms).Port_Item12_N009;
float l9_522=(*sc_set0.UserUniforms).Port_Item13_N009;
float l9_523[14];
l9_523[0]=l9_509;
l9_523[1]=l9_510;
l9_523[2]=l9_511;
l9_523[3]=l9_512;
l9_523[4]=l9_513;
l9_523[5]=l9_514;
l9_523[6]=l9_515;
l9_523[7]=l9_516;
l9_523[8]=l9_517;
l9_523[9]=l9_518;
l9_523[10]=l9_519;
l9_523[11]=l9_520;
l9_523[12]=l9_521;
l9_523[13]=l9_522;
int l9_524=int(fast::clamp(l9_508+9.9999997e-05,0.0,13.0));
float l9_525=l9_523[l9_524];
l9_507=l9_525;
float l9_526=0.0;
l9_526=l9_507;
float l9_527=0.0;
l9_527=exp((*sc_set0.UserUniforms).Port_Input0_N187);
float l9_528=0.0;
l9_528=l9_526*l9_527;
float2 l9_529=float2(0.0);
float2 l9_530=(*sc_set0.UserUniforms).normTexSize.zw;
l9_529=l9_530;
float2 l9_531=float2(0.0);
l9_531=l9_504.gScreenCoord;
float2 l9_532=float2(0.0);
float2 l9_533=(*sc_set0.UserUniforms).blurDirection;
l9_532=l9_533;
float2 l9_534=float2(0.0);
l9_534=l9_532*l9_529;
float l9_535=0.0;
float l9_536=l9_506;
float l9_537=(*sc_set0.UserUniforms).Port_Item0_N114;
float l9_538=(*sc_set0.UserUniforms).Port_Item1_N114;
float l9_539=(*sc_set0.UserUniforms).Port_Item2_N114;
float l9_540=(*sc_set0.UserUniforms).Port_Item3_N114;
float l9_541=(*sc_set0.UserUniforms).Port_Item4_N114;
float l9_542=(*sc_set0.UserUniforms).Port_Item5_N114;
float l9_543=(*sc_set0.UserUniforms).Port_Item6_N114;
float l9_544=(*sc_set0.UserUniforms).Port_Item7_N114;
float l9_545[8];
l9_545[0]=l9_537;
l9_545[1]=l9_538;
l9_545[2]=l9_539;
l9_545[3]=l9_540;
l9_545[4]=l9_541;
l9_545[5]=l9_542;
l9_545[6]=l9_543;
l9_545[7]=l9_544;
int l9_546=int(fast::clamp(l9_536+9.9999997e-05,0.0,7.0));
float l9_547=l9_545[l9_546];
l9_535=l9_547;
float2 l9_548=float2(0.0);
l9_548=l9_534*float2(l9_535);
float2 l9_549=float2(0.0);
l9_549=l9_531+l9_548;
float2 l9_550=float2(0.0);
l9_550=l9_549;
float4 l9_551=float4(0.0);
int l9_552;
if ((int(normTexHasSwappedViews_tmp)!=0))
{
int l9_553=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_553=0;
}
else
{
l9_553=in.varStereoViewID;
}
int l9_554=l9_553;
l9_552=1-l9_554;
}
else
{
int l9_555=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_555=0;
}
else
{
l9_555=in.varStereoViewID;
}
int l9_556=l9_555;
l9_552=l9_556;
}
int l9_557=l9_552;
int l9_558=normTexLayout_tmp;
int l9_559=l9_557;
float2 l9_560=l9_550;
bool l9_561=(int(SC_USE_UV_TRANSFORM_normTex_tmp)!=0);
float3x3 l9_562=(*sc_set0.UserUniforms).normTexTransform;
int2 l9_563=int2(SC_SOFTWARE_WRAP_MODE_U_normTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normTex_tmp);
bool l9_564=(int(SC_USE_UV_MIN_MAX_normTex_tmp)!=0);
float4 l9_565=(*sc_set0.UserUniforms).normTexUvMinMax;
bool l9_566=(int(SC_USE_CLAMP_TO_BORDER_normTex_tmp)!=0);
float4 l9_567=(*sc_set0.UserUniforms).normTexBorderColor;
float l9_568=0.0;
bool l9_569=l9_566&&(!l9_564);
float l9_570=1.0;
float l9_571=l9_560.x;
int l9_572=l9_563.x;
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
l9_560.x=l9_571;
float l9_576=l9_560.y;
int l9_577=l9_563.y;
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
l9_560.y=l9_576;
if (l9_564)
{
bool l9_581=l9_566;
bool l9_582;
if (l9_581)
{
l9_582=l9_563.x==3;
}
else
{
l9_582=l9_581;
}
float l9_583=l9_560.x;
float l9_584=l9_565.x;
float l9_585=l9_565.z;
bool l9_586=l9_582;
float l9_587=l9_570;
float l9_588=fast::clamp(l9_583,l9_584,l9_585);
float l9_589=step(abs(l9_583-l9_588),9.9999997e-06);
l9_587*=(l9_589+((1.0-float(l9_586))*(1.0-l9_589)));
l9_583=l9_588;
l9_560.x=l9_583;
l9_570=l9_587;
bool l9_590=l9_566;
bool l9_591;
if (l9_590)
{
l9_591=l9_563.y==3;
}
else
{
l9_591=l9_590;
}
float l9_592=l9_560.y;
float l9_593=l9_565.y;
float l9_594=l9_565.w;
bool l9_595=l9_591;
float l9_596=l9_570;
float l9_597=fast::clamp(l9_592,l9_593,l9_594);
float l9_598=step(abs(l9_592-l9_597),9.9999997e-06);
l9_596*=(l9_598+((1.0-float(l9_595))*(1.0-l9_598)));
l9_592=l9_597;
l9_560.y=l9_592;
l9_570=l9_596;
}
float2 l9_599=l9_560;
bool l9_600=l9_561;
float3x3 l9_601=l9_562;
if (l9_600)
{
l9_599=float2((l9_601*float3(l9_599,1.0)).xy);
}
float2 l9_602=l9_599;
l9_560=l9_602;
float l9_603=l9_560.x;
int l9_604=l9_563.x;
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
l9_560.x=l9_603;
l9_570=l9_606;
float l9_614=l9_560.y;
int l9_615=l9_563.y;
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
l9_560.y=l9_614;
l9_570=l9_617;
float2 l9_625=l9_560;
int l9_626=l9_558;
int l9_627=l9_559;
float l9_628=l9_568;
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
float4 l9_635=sc_set0.normTex.sample(sc_set0.normTexSmpSC,l9_634.xy,bias(l9_628));
float4 l9_636=l9_635;
if (l9_566)
{
l9_636=mix(l9_567,l9_636,float4(l9_570));
}
float4 l9_637=l9_636;
l9_551=l9_637;
float4 l9_638=float4(0.0);
l9_638=float4(l9_528)*l9_551;
float4 l9_639=float4(0.0);
l9_639=float4(l9_638.xyz.x,l9_638.xyz.y,l9_638.xyz.z,l9_639.w);
l9_639.w=l9_528;
float4 l9_640=float4(0.0);
l9_640=l9_639;
l9_505=l9_640;
l9_503+=l9_505;
param_11=l9_503;
float4 l9_641=param_11;
ssGlobals l9_642=param_12;
float4 l9_643=float4(0.0);
l9_642.Loop_Index_ID0=4.0;
l9_642.Loop_Ratio_ID0=0.57142901;
float l9_644=0.0;
l9_644=l9_642.Loop_Index_ID0;
float l9_645=0.0;
float l9_646=l9_644;
float l9_647=(*sc_set0.UserUniforms).Port_Item0_N009;
float l9_648=(*sc_set0.UserUniforms).Port_Item1_N009;
float l9_649=(*sc_set0.UserUniforms).Port_Item2_N009;
float l9_650=(*sc_set0.UserUniforms).Port_Item3_N009;
float l9_651=(*sc_set0.UserUniforms).Port_Item4_N009;
float l9_652=(*sc_set0.UserUniforms).Port_Item5_N009;
float l9_653=(*sc_set0.UserUniforms).Port_Item6_N009;
float l9_654=(*sc_set0.UserUniforms).Port_Item7_N009;
float l9_655=(*sc_set0.UserUniforms).Port_Item8_N009;
float l9_656=(*sc_set0.UserUniforms).Port_Item9_N009;
float l9_657=(*sc_set0.UserUniforms).Port_Item10_N009;
float l9_658=(*sc_set0.UserUniforms).Port_Item11_N009;
float l9_659=(*sc_set0.UserUniforms).Port_Item12_N009;
float l9_660=(*sc_set0.UserUniforms).Port_Item13_N009;
float l9_661[14];
l9_661[0]=l9_647;
l9_661[1]=l9_648;
l9_661[2]=l9_649;
l9_661[3]=l9_650;
l9_661[4]=l9_651;
l9_661[5]=l9_652;
l9_661[6]=l9_653;
l9_661[7]=l9_654;
l9_661[8]=l9_655;
l9_661[9]=l9_656;
l9_661[10]=l9_657;
l9_661[11]=l9_658;
l9_661[12]=l9_659;
l9_661[13]=l9_660;
int l9_662=int(fast::clamp(l9_646+9.9999997e-05,0.0,13.0));
float l9_663=l9_661[l9_662];
l9_645=l9_663;
float l9_664=0.0;
l9_664=l9_645;
float l9_665=0.0;
l9_665=exp((*sc_set0.UserUniforms).Port_Input0_N187);
float l9_666=0.0;
l9_666=l9_664*l9_665;
float2 l9_667=float2(0.0);
float2 l9_668=(*sc_set0.UserUniforms).normTexSize.zw;
l9_667=l9_668;
float2 l9_669=float2(0.0);
l9_669=l9_642.gScreenCoord;
float2 l9_670=float2(0.0);
float2 l9_671=(*sc_set0.UserUniforms).blurDirection;
l9_670=l9_671;
float2 l9_672=float2(0.0);
l9_672=l9_670*l9_667;
float l9_673=0.0;
float l9_674=l9_644;
float l9_675=(*sc_set0.UserUniforms).Port_Item0_N114;
float l9_676=(*sc_set0.UserUniforms).Port_Item1_N114;
float l9_677=(*sc_set0.UserUniforms).Port_Item2_N114;
float l9_678=(*sc_set0.UserUniforms).Port_Item3_N114;
float l9_679=(*sc_set0.UserUniforms).Port_Item4_N114;
float l9_680=(*sc_set0.UserUniforms).Port_Item5_N114;
float l9_681=(*sc_set0.UserUniforms).Port_Item6_N114;
float l9_682=(*sc_set0.UserUniforms).Port_Item7_N114;
float l9_683[8];
l9_683[0]=l9_675;
l9_683[1]=l9_676;
l9_683[2]=l9_677;
l9_683[3]=l9_678;
l9_683[4]=l9_679;
l9_683[5]=l9_680;
l9_683[6]=l9_681;
l9_683[7]=l9_682;
int l9_684=int(fast::clamp(l9_674+9.9999997e-05,0.0,7.0));
float l9_685=l9_683[l9_684];
l9_673=l9_685;
float2 l9_686=float2(0.0);
l9_686=l9_672*float2(l9_673);
float2 l9_687=float2(0.0);
l9_687=l9_669+l9_686;
float2 l9_688=float2(0.0);
l9_688=l9_687;
float4 l9_689=float4(0.0);
int l9_690;
if ((int(normTexHasSwappedViews_tmp)!=0))
{
int l9_691=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_691=0;
}
else
{
l9_691=in.varStereoViewID;
}
int l9_692=l9_691;
l9_690=1-l9_692;
}
else
{
int l9_693=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_693=0;
}
else
{
l9_693=in.varStereoViewID;
}
int l9_694=l9_693;
l9_690=l9_694;
}
int l9_695=l9_690;
int l9_696=normTexLayout_tmp;
int l9_697=l9_695;
float2 l9_698=l9_688;
bool l9_699=(int(SC_USE_UV_TRANSFORM_normTex_tmp)!=0);
float3x3 l9_700=(*sc_set0.UserUniforms).normTexTransform;
int2 l9_701=int2(SC_SOFTWARE_WRAP_MODE_U_normTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normTex_tmp);
bool l9_702=(int(SC_USE_UV_MIN_MAX_normTex_tmp)!=0);
float4 l9_703=(*sc_set0.UserUniforms).normTexUvMinMax;
bool l9_704=(int(SC_USE_CLAMP_TO_BORDER_normTex_tmp)!=0);
float4 l9_705=(*sc_set0.UserUniforms).normTexBorderColor;
float l9_706=0.0;
bool l9_707=l9_704&&(!l9_702);
float l9_708=1.0;
float l9_709=l9_698.x;
int l9_710=l9_701.x;
if (l9_710==1)
{
l9_709=fract(l9_709);
}
else
{
if (l9_710==2)
{
float l9_711=fract(l9_709);
float l9_712=l9_709-l9_711;
float l9_713=step(0.25,fract(l9_712*0.5));
l9_709=mix(l9_711,1.0-l9_711,fast::clamp(l9_713,0.0,1.0));
}
}
l9_698.x=l9_709;
float l9_714=l9_698.y;
int l9_715=l9_701.y;
if (l9_715==1)
{
l9_714=fract(l9_714);
}
else
{
if (l9_715==2)
{
float l9_716=fract(l9_714);
float l9_717=l9_714-l9_716;
float l9_718=step(0.25,fract(l9_717*0.5));
l9_714=mix(l9_716,1.0-l9_716,fast::clamp(l9_718,0.0,1.0));
}
}
l9_698.y=l9_714;
if (l9_702)
{
bool l9_719=l9_704;
bool l9_720;
if (l9_719)
{
l9_720=l9_701.x==3;
}
else
{
l9_720=l9_719;
}
float l9_721=l9_698.x;
float l9_722=l9_703.x;
float l9_723=l9_703.z;
bool l9_724=l9_720;
float l9_725=l9_708;
float l9_726=fast::clamp(l9_721,l9_722,l9_723);
float l9_727=step(abs(l9_721-l9_726),9.9999997e-06);
l9_725*=(l9_727+((1.0-float(l9_724))*(1.0-l9_727)));
l9_721=l9_726;
l9_698.x=l9_721;
l9_708=l9_725;
bool l9_728=l9_704;
bool l9_729;
if (l9_728)
{
l9_729=l9_701.y==3;
}
else
{
l9_729=l9_728;
}
float l9_730=l9_698.y;
float l9_731=l9_703.y;
float l9_732=l9_703.w;
bool l9_733=l9_729;
float l9_734=l9_708;
float l9_735=fast::clamp(l9_730,l9_731,l9_732);
float l9_736=step(abs(l9_730-l9_735),9.9999997e-06);
l9_734*=(l9_736+((1.0-float(l9_733))*(1.0-l9_736)));
l9_730=l9_735;
l9_698.y=l9_730;
l9_708=l9_734;
}
float2 l9_737=l9_698;
bool l9_738=l9_699;
float3x3 l9_739=l9_700;
if (l9_738)
{
l9_737=float2((l9_739*float3(l9_737,1.0)).xy);
}
float2 l9_740=l9_737;
l9_698=l9_740;
float l9_741=l9_698.x;
int l9_742=l9_701.x;
bool l9_743=l9_707;
float l9_744=l9_708;
if ((l9_742==0)||(l9_742==3))
{
float l9_745=l9_741;
float l9_746=0.0;
float l9_747=1.0;
bool l9_748=l9_743;
float l9_749=l9_744;
float l9_750=fast::clamp(l9_745,l9_746,l9_747);
float l9_751=step(abs(l9_745-l9_750),9.9999997e-06);
l9_749*=(l9_751+((1.0-float(l9_748))*(1.0-l9_751)));
l9_745=l9_750;
l9_741=l9_745;
l9_744=l9_749;
}
l9_698.x=l9_741;
l9_708=l9_744;
float l9_752=l9_698.y;
int l9_753=l9_701.y;
bool l9_754=l9_707;
float l9_755=l9_708;
if ((l9_753==0)||(l9_753==3))
{
float l9_756=l9_752;
float l9_757=0.0;
float l9_758=1.0;
bool l9_759=l9_754;
float l9_760=l9_755;
float l9_761=fast::clamp(l9_756,l9_757,l9_758);
float l9_762=step(abs(l9_756-l9_761),9.9999997e-06);
l9_760*=(l9_762+((1.0-float(l9_759))*(1.0-l9_762)));
l9_756=l9_761;
l9_752=l9_756;
l9_755=l9_760;
}
l9_698.y=l9_752;
l9_708=l9_755;
float2 l9_763=l9_698;
int l9_764=l9_696;
int l9_765=l9_697;
float l9_766=l9_706;
float2 l9_767=l9_763;
int l9_768=l9_764;
int l9_769=l9_765;
float3 l9_770=float3(0.0);
if (l9_768==0)
{
l9_770=float3(l9_767,0.0);
}
else
{
if (l9_768==1)
{
l9_770=float3(l9_767.x,(l9_767.y*0.5)+(0.5-(float(l9_769)*0.5)),0.0);
}
else
{
l9_770=float3(l9_767,float(l9_769));
}
}
float3 l9_771=l9_770;
float3 l9_772=l9_771;
float4 l9_773=sc_set0.normTex.sample(sc_set0.normTexSmpSC,l9_772.xy,bias(l9_766));
float4 l9_774=l9_773;
if (l9_704)
{
l9_774=mix(l9_705,l9_774,float4(l9_708));
}
float4 l9_775=l9_774;
l9_689=l9_775;
float4 l9_776=float4(0.0);
l9_776=float4(l9_666)*l9_689;
float4 l9_777=float4(0.0);
l9_777=float4(l9_776.xyz.x,l9_776.xyz.y,l9_776.xyz.z,l9_777.w);
l9_777.w=l9_666;
float4 l9_778=float4(0.0);
l9_778=l9_777;
l9_643=l9_778;
l9_641+=l9_643;
param_11=l9_641;
float4 l9_779=param_11;
ssGlobals l9_780=param_12;
float4 l9_781=float4(0.0);
l9_780.Loop_Index_ID0=5.0;
l9_780.Loop_Ratio_ID0=0.71428603;
float l9_782=0.0;
l9_782=l9_780.Loop_Index_ID0;
float l9_783=0.0;
float l9_784=l9_782;
float l9_785=(*sc_set0.UserUniforms).Port_Item0_N009;
float l9_786=(*sc_set0.UserUniforms).Port_Item1_N009;
float l9_787=(*sc_set0.UserUniforms).Port_Item2_N009;
float l9_788=(*sc_set0.UserUniforms).Port_Item3_N009;
float l9_789=(*sc_set0.UserUniforms).Port_Item4_N009;
float l9_790=(*sc_set0.UserUniforms).Port_Item5_N009;
float l9_791=(*sc_set0.UserUniforms).Port_Item6_N009;
float l9_792=(*sc_set0.UserUniforms).Port_Item7_N009;
float l9_793=(*sc_set0.UserUniforms).Port_Item8_N009;
float l9_794=(*sc_set0.UserUniforms).Port_Item9_N009;
float l9_795=(*sc_set0.UserUniforms).Port_Item10_N009;
float l9_796=(*sc_set0.UserUniforms).Port_Item11_N009;
float l9_797=(*sc_set0.UserUniforms).Port_Item12_N009;
float l9_798=(*sc_set0.UserUniforms).Port_Item13_N009;
float l9_799[14];
l9_799[0]=l9_785;
l9_799[1]=l9_786;
l9_799[2]=l9_787;
l9_799[3]=l9_788;
l9_799[4]=l9_789;
l9_799[5]=l9_790;
l9_799[6]=l9_791;
l9_799[7]=l9_792;
l9_799[8]=l9_793;
l9_799[9]=l9_794;
l9_799[10]=l9_795;
l9_799[11]=l9_796;
l9_799[12]=l9_797;
l9_799[13]=l9_798;
int l9_800=int(fast::clamp(l9_784+9.9999997e-05,0.0,13.0));
float l9_801=l9_799[l9_800];
l9_783=l9_801;
float l9_802=0.0;
l9_802=l9_783;
float l9_803=0.0;
l9_803=exp((*sc_set0.UserUniforms).Port_Input0_N187);
float l9_804=0.0;
l9_804=l9_802*l9_803;
float2 l9_805=float2(0.0);
float2 l9_806=(*sc_set0.UserUniforms).normTexSize.zw;
l9_805=l9_806;
float2 l9_807=float2(0.0);
l9_807=l9_780.gScreenCoord;
float2 l9_808=float2(0.0);
float2 l9_809=(*sc_set0.UserUniforms).blurDirection;
l9_808=l9_809;
float2 l9_810=float2(0.0);
l9_810=l9_808*l9_805;
float l9_811=0.0;
float l9_812=l9_782;
float l9_813=(*sc_set0.UserUniforms).Port_Item0_N114;
float l9_814=(*sc_set0.UserUniforms).Port_Item1_N114;
float l9_815=(*sc_set0.UserUniforms).Port_Item2_N114;
float l9_816=(*sc_set0.UserUniforms).Port_Item3_N114;
float l9_817=(*sc_set0.UserUniforms).Port_Item4_N114;
float l9_818=(*sc_set0.UserUniforms).Port_Item5_N114;
float l9_819=(*sc_set0.UserUniforms).Port_Item6_N114;
float l9_820=(*sc_set0.UserUniforms).Port_Item7_N114;
float l9_821[8];
l9_821[0]=l9_813;
l9_821[1]=l9_814;
l9_821[2]=l9_815;
l9_821[3]=l9_816;
l9_821[4]=l9_817;
l9_821[5]=l9_818;
l9_821[6]=l9_819;
l9_821[7]=l9_820;
int l9_822=int(fast::clamp(l9_812+9.9999997e-05,0.0,7.0));
float l9_823=l9_821[l9_822];
l9_811=l9_823;
float2 l9_824=float2(0.0);
l9_824=l9_810*float2(l9_811);
float2 l9_825=float2(0.0);
l9_825=l9_807+l9_824;
float2 l9_826=float2(0.0);
l9_826=l9_825;
float4 l9_827=float4(0.0);
int l9_828;
if ((int(normTexHasSwappedViews_tmp)!=0))
{
int l9_829=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_829=0;
}
else
{
l9_829=in.varStereoViewID;
}
int l9_830=l9_829;
l9_828=1-l9_830;
}
else
{
int l9_831=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_831=0;
}
else
{
l9_831=in.varStereoViewID;
}
int l9_832=l9_831;
l9_828=l9_832;
}
int l9_833=l9_828;
int l9_834=normTexLayout_tmp;
int l9_835=l9_833;
float2 l9_836=l9_826;
bool l9_837=(int(SC_USE_UV_TRANSFORM_normTex_tmp)!=0);
float3x3 l9_838=(*sc_set0.UserUniforms).normTexTransform;
int2 l9_839=int2(SC_SOFTWARE_WRAP_MODE_U_normTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normTex_tmp);
bool l9_840=(int(SC_USE_UV_MIN_MAX_normTex_tmp)!=0);
float4 l9_841=(*sc_set0.UserUniforms).normTexUvMinMax;
bool l9_842=(int(SC_USE_CLAMP_TO_BORDER_normTex_tmp)!=0);
float4 l9_843=(*sc_set0.UserUniforms).normTexBorderColor;
float l9_844=0.0;
bool l9_845=l9_842&&(!l9_840);
float l9_846=1.0;
float l9_847=l9_836.x;
int l9_848=l9_839.x;
if (l9_848==1)
{
l9_847=fract(l9_847);
}
else
{
if (l9_848==2)
{
float l9_849=fract(l9_847);
float l9_850=l9_847-l9_849;
float l9_851=step(0.25,fract(l9_850*0.5));
l9_847=mix(l9_849,1.0-l9_849,fast::clamp(l9_851,0.0,1.0));
}
}
l9_836.x=l9_847;
float l9_852=l9_836.y;
int l9_853=l9_839.y;
if (l9_853==1)
{
l9_852=fract(l9_852);
}
else
{
if (l9_853==2)
{
float l9_854=fract(l9_852);
float l9_855=l9_852-l9_854;
float l9_856=step(0.25,fract(l9_855*0.5));
l9_852=mix(l9_854,1.0-l9_854,fast::clamp(l9_856,0.0,1.0));
}
}
l9_836.y=l9_852;
if (l9_840)
{
bool l9_857=l9_842;
bool l9_858;
if (l9_857)
{
l9_858=l9_839.x==3;
}
else
{
l9_858=l9_857;
}
float l9_859=l9_836.x;
float l9_860=l9_841.x;
float l9_861=l9_841.z;
bool l9_862=l9_858;
float l9_863=l9_846;
float l9_864=fast::clamp(l9_859,l9_860,l9_861);
float l9_865=step(abs(l9_859-l9_864),9.9999997e-06);
l9_863*=(l9_865+((1.0-float(l9_862))*(1.0-l9_865)));
l9_859=l9_864;
l9_836.x=l9_859;
l9_846=l9_863;
bool l9_866=l9_842;
bool l9_867;
if (l9_866)
{
l9_867=l9_839.y==3;
}
else
{
l9_867=l9_866;
}
float l9_868=l9_836.y;
float l9_869=l9_841.y;
float l9_870=l9_841.w;
bool l9_871=l9_867;
float l9_872=l9_846;
float l9_873=fast::clamp(l9_868,l9_869,l9_870);
float l9_874=step(abs(l9_868-l9_873),9.9999997e-06);
l9_872*=(l9_874+((1.0-float(l9_871))*(1.0-l9_874)));
l9_868=l9_873;
l9_836.y=l9_868;
l9_846=l9_872;
}
float2 l9_875=l9_836;
bool l9_876=l9_837;
float3x3 l9_877=l9_838;
if (l9_876)
{
l9_875=float2((l9_877*float3(l9_875,1.0)).xy);
}
float2 l9_878=l9_875;
l9_836=l9_878;
float l9_879=l9_836.x;
int l9_880=l9_839.x;
bool l9_881=l9_845;
float l9_882=l9_846;
if ((l9_880==0)||(l9_880==3))
{
float l9_883=l9_879;
float l9_884=0.0;
float l9_885=1.0;
bool l9_886=l9_881;
float l9_887=l9_882;
float l9_888=fast::clamp(l9_883,l9_884,l9_885);
float l9_889=step(abs(l9_883-l9_888),9.9999997e-06);
l9_887*=(l9_889+((1.0-float(l9_886))*(1.0-l9_889)));
l9_883=l9_888;
l9_879=l9_883;
l9_882=l9_887;
}
l9_836.x=l9_879;
l9_846=l9_882;
float l9_890=l9_836.y;
int l9_891=l9_839.y;
bool l9_892=l9_845;
float l9_893=l9_846;
if ((l9_891==0)||(l9_891==3))
{
float l9_894=l9_890;
float l9_895=0.0;
float l9_896=1.0;
bool l9_897=l9_892;
float l9_898=l9_893;
float l9_899=fast::clamp(l9_894,l9_895,l9_896);
float l9_900=step(abs(l9_894-l9_899),9.9999997e-06);
l9_898*=(l9_900+((1.0-float(l9_897))*(1.0-l9_900)));
l9_894=l9_899;
l9_890=l9_894;
l9_893=l9_898;
}
l9_836.y=l9_890;
l9_846=l9_893;
float2 l9_901=l9_836;
int l9_902=l9_834;
int l9_903=l9_835;
float l9_904=l9_844;
float2 l9_905=l9_901;
int l9_906=l9_902;
int l9_907=l9_903;
float3 l9_908=float3(0.0);
if (l9_906==0)
{
l9_908=float3(l9_905,0.0);
}
else
{
if (l9_906==1)
{
l9_908=float3(l9_905.x,(l9_905.y*0.5)+(0.5-(float(l9_907)*0.5)),0.0);
}
else
{
l9_908=float3(l9_905,float(l9_907));
}
}
float3 l9_909=l9_908;
float3 l9_910=l9_909;
float4 l9_911=sc_set0.normTex.sample(sc_set0.normTexSmpSC,l9_910.xy,bias(l9_904));
float4 l9_912=l9_911;
if (l9_842)
{
l9_912=mix(l9_843,l9_912,float4(l9_846));
}
float4 l9_913=l9_912;
l9_827=l9_913;
float4 l9_914=float4(0.0);
l9_914=float4(l9_804)*l9_827;
float4 l9_915=float4(0.0);
l9_915=float4(l9_914.xyz.x,l9_914.xyz.y,l9_914.xyz.z,l9_915.w);
l9_915.w=l9_804;
float4 l9_916=float4(0.0);
l9_916=l9_915;
l9_781=l9_916;
l9_779+=l9_781;
param_11=l9_779;
float4 l9_917=param_11;
ssGlobals l9_918=param_12;
float4 l9_919=float4(0.0);
l9_918.Loop_Index_ID0=6.0;
l9_918.Loop_Ratio_ID0=0.85714298;
float l9_920=0.0;
l9_920=l9_918.Loop_Index_ID0;
float l9_921=0.0;
float l9_922=l9_920;
float l9_923=(*sc_set0.UserUniforms).Port_Item0_N009;
float l9_924=(*sc_set0.UserUniforms).Port_Item1_N009;
float l9_925=(*sc_set0.UserUniforms).Port_Item2_N009;
float l9_926=(*sc_set0.UserUniforms).Port_Item3_N009;
float l9_927=(*sc_set0.UserUniforms).Port_Item4_N009;
float l9_928=(*sc_set0.UserUniforms).Port_Item5_N009;
float l9_929=(*sc_set0.UserUniforms).Port_Item6_N009;
float l9_930=(*sc_set0.UserUniforms).Port_Item7_N009;
float l9_931=(*sc_set0.UserUniforms).Port_Item8_N009;
float l9_932=(*sc_set0.UserUniforms).Port_Item9_N009;
float l9_933=(*sc_set0.UserUniforms).Port_Item10_N009;
float l9_934=(*sc_set0.UserUniforms).Port_Item11_N009;
float l9_935=(*sc_set0.UserUniforms).Port_Item12_N009;
float l9_936=(*sc_set0.UserUniforms).Port_Item13_N009;
float l9_937[14];
l9_937[0]=l9_923;
l9_937[1]=l9_924;
l9_937[2]=l9_925;
l9_937[3]=l9_926;
l9_937[4]=l9_927;
l9_937[5]=l9_928;
l9_937[6]=l9_929;
l9_937[7]=l9_930;
l9_937[8]=l9_931;
l9_937[9]=l9_932;
l9_937[10]=l9_933;
l9_937[11]=l9_934;
l9_937[12]=l9_935;
l9_937[13]=l9_936;
int l9_938=int(fast::clamp(l9_922+9.9999997e-05,0.0,13.0));
float l9_939=l9_937[l9_938];
l9_921=l9_939;
float l9_940=0.0;
l9_940=l9_921;
float l9_941=0.0;
l9_941=exp((*sc_set0.UserUniforms).Port_Input0_N187);
float l9_942=0.0;
l9_942=l9_940*l9_941;
float2 l9_943=float2(0.0);
float2 l9_944=(*sc_set0.UserUniforms).normTexSize.zw;
l9_943=l9_944;
float2 l9_945=float2(0.0);
l9_945=l9_918.gScreenCoord;
float2 l9_946=float2(0.0);
float2 l9_947=(*sc_set0.UserUniforms).blurDirection;
l9_946=l9_947;
float2 l9_948=float2(0.0);
l9_948=l9_946*l9_943;
float l9_949=0.0;
float l9_950=l9_920;
float l9_951=(*sc_set0.UserUniforms).Port_Item0_N114;
float l9_952=(*sc_set0.UserUniforms).Port_Item1_N114;
float l9_953=(*sc_set0.UserUniforms).Port_Item2_N114;
float l9_954=(*sc_set0.UserUniforms).Port_Item3_N114;
float l9_955=(*sc_set0.UserUniforms).Port_Item4_N114;
float l9_956=(*sc_set0.UserUniforms).Port_Item5_N114;
float l9_957=(*sc_set0.UserUniforms).Port_Item6_N114;
float l9_958=(*sc_set0.UserUniforms).Port_Item7_N114;
float l9_959[8];
l9_959[0]=l9_951;
l9_959[1]=l9_952;
l9_959[2]=l9_953;
l9_959[3]=l9_954;
l9_959[4]=l9_955;
l9_959[5]=l9_956;
l9_959[6]=l9_957;
l9_959[7]=l9_958;
int l9_960=int(fast::clamp(l9_950+9.9999997e-05,0.0,7.0));
float l9_961=l9_959[l9_960];
l9_949=l9_961;
float2 l9_962=float2(0.0);
l9_962=l9_948*float2(l9_949);
float2 l9_963=float2(0.0);
l9_963=l9_945+l9_962;
float2 l9_964=float2(0.0);
l9_964=l9_963;
float4 l9_965=float4(0.0);
int l9_966;
if ((int(normTexHasSwappedViews_tmp)!=0))
{
int l9_967=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_967=0;
}
else
{
l9_967=in.varStereoViewID;
}
int l9_968=l9_967;
l9_966=1-l9_968;
}
else
{
int l9_969=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_969=0;
}
else
{
l9_969=in.varStereoViewID;
}
int l9_970=l9_969;
l9_966=l9_970;
}
int l9_971=l9_966;
int l9_972=normTexLayout_tmp;
int l9_973=l9_971;
float2 l9_974=l9_964;
bool l9_975=(int(SC_USE_UV_TRANSFORM_normTex_tmp)!=0);
float3x3 l9_976=(*sc_set0.UserUniforms).normTexTransform;
int2 l9_977=int2(SC_SOFTWARE_WRAP_MODE_U_normTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normTex_tmp);
bool l9_978=(int(SC_USE_UV_MIN_MAX_normTex_tmp)!=0);
float4 l9_979=(*sc_set0.UserUniforms).normTexUvMinMax;
bool l9_980=(int(SC_USE_CLAMP_TO_BORDER_normTex_tmp)!=0);
float4 l9_981=(*sc_set0.UserUniforms).normTexBorderColor;
float l9_982=0.0;
bool l9_983=l9_980&&(!l9_978);
float l9_984=1.0;
float l9_985=l9_974.x;
int l9_986=l9_977.x;
if (l9_986==1)
{
l9_985=fract(l9_985);
}
else
{
if (l9_986==2)
{
float l9_987=fract(l9_985);
float l9_988=l9_985-l9_987;
float l9_989=step(0.25,fract(l9_988*0.5));
l9_985=mix(l9_987,1.0-l9_987,fast::clamp(l9_989,0.0,1.0));
}
}
l9_974.x=l9_985;
float l9_990=l9_974.y;
int l9_991=l9_977.y;
if (l9_991==1)
{
l9_990=fract(l9_990);
}
else
{
if (l9_991==2)
{
float l9_992=fract(l9_990);
float l9_993=l9_990-l9_992;
float l9_994=step(0.25,fract(l9_993*0.5));
l9_990=mix(l9_992,1.0-l9_992,fast::clamp(l9_994,0.0,1.0));
}
}
l9_974.y=l9_990;
if (l9_978)
{
bool l9_995=l9_980;
bool l9_996;
if (l9_995)
{
l9_996=l9_977.x==3;
}
else
{
l9_996=l9_995;
}
float l9_997=l9_974.x;
float l9_998=l9_979.x;
float l9_999=l9_979.z;
bool l9_1000=l9_996;
float l9_1001=l9_984;
float l9_1002=fast::clamp(l9_997,l9_998,l9_999);
float l9_1003=step(abs(l9_997-l9_1002),9.9999997e-06);
l9_1001*=(l9_1003+((1.0-float(l9_1000))*(1.0-l9_1003)));
l9_997=l9_1002;
l9_974.x=l9_997;
l9_984=l9_1001;
bool l9_1004=l9_980;
bool l9_1005;
if (l9_1004)
{
l9_1005=l9_977.y==3;
}
else
{
l9_1005=l9_1004;
}
float l9_1006=l9_974.y;
float l9_1007=l9_979.y;
float l9_1008=l9_979.w;
bool l9_1009=l9_1005;
float l9_1010=l9_984;
float l9_1011=fast::clamp(l9_1006,l9_1007,l9_1008);
float l9_1012=step(abs(l9_1006-l9_1011),9.9999997e-06);
l9_1010*=(l9_1012+((1.0-float(l9_1009))*(1.0-l9_1012)));
l9_1006=l9_1011;
l9_974.y=l9_1006;
l9_984=l9_1010;
}
float2 l9_1013=l9_974;
bool l9_1014=l9_975;
float3x3 l9_1015=l9_976;
if (l9_1014)
{
l9_1013=float2((l9_1015*float3(l9_1013,1.0)).xy);
}
float2 l9_1016=l9_1013;
l9_974=l9_1016;
float l9_1017=l9_974.x;
int l9_1018=l9_977.x;
bool l9_1019=l9_983;
float l9_1020=l9_984;
if ((l9_1018==0)||(l9_1018==3))
{
float l9_1021=l9_1017;
float l9_1022=0.0;
float l9_1023=1.0;
bool l9_1024=l9_1019;
float l9_1025=l9_1020;
float l9_1026=fast::clamp(l9_1021,l9_1022,l9_1023);
float l9_1027=step(abs(l9_1021-l9_1026),9.9999997e-06);
l9_1025*=(l9_1027+((1.0-float(l9_1024))*(1.0-l9_1027)));
l9_1021=l9_1026;
l9_1017=l9_1021;
l9_1020=l9_1025;
}
l9_974.x=l9_1017;
l9_984=l9_1020;
float l9_1028=l9_974.y;
int l9_1029=l9_977.y;
bool l9_1030=l9_983;
float l9_1031=l9_984;
if ((l9_1029==0)||(l9_1029==3))
{
float l9_1032=l9_1028;
float l9_1033=0.0;
float l9_1034=1.0;
bool l9_1035=l9_1030;
float l9_1036=l9_1031;
float l9_1037=fast::clamp(l9_1032,l9_1033,l9_1034);
float l9_1038=step(abs(l9_1032-l9_1037),9.9999997e-06);
l9_1036*=(l9_1038+((1.0-float(l9_1035))*(1.0-l9_1038)));
l9_1032=l9_1037;
l9_1028=l9_1032;
l9_1031=l9_1036;
}
l9_974.y=l9_1028;
l9_984=l9_1031;
float2 l9_1039=l9_974;
int l9_1040=l9_972;
int l9_1041=l9_973;
float l9_1042=l9_982;
float2 l9_1043=l9_1039;
int l9_1044=l9_1040;
int l9_1045=l9_1041;
float3 l9_1046=float3(0.0);
if (l9_1044==0)
{
l9_1046=float3(l9_1043,0.0);
}
else
{
if (l9_1044==1)
{
l9_1046=float3(l9_1043.x,(l9_1043.y*0.5)+(0.5-(float(l9_1045)*0.5)),0.0);
}
else
{
l9_1046=float3(l9_1043,float(l9_1045));
}
}
float3 l9_1047=l9_1046;
float3 l9_1048=l9_1047;
float4 l9_1049=sc_set0.normTex.sample(sc_set0.normTexSmpSC,l9_1048.xy,bias(l9_1042));
float4 l9_1050=l9_1049;
if (l9_980)
{
l9_1050=mix(l9_981,l9_1050,float4(l9_984));
}
float4 l9_1051=l9_1050;
l9_965=l9_1051;
float4 l9_1052=float4(0.0);
l9_1052=float4(l9_942)*l9_965;
float4 l9_1053=float4(0.0);
l9_1053=float4(l9_1052.xyz.x,l9_1052.xyz.y,l9_1052.xyz.z,l9_1053.w);
l9_1053.w=l9_942;
float4 l9_1054=float4(0.0);
l9_1054=l9_1053;
l9_919=l9_1054;
l9_917+=l9_919;
param_11=l9_917;
float4 l9_1055=param_11;
ssGlobals l9_1056=param_12;
float4 l9_1057=float4(0.0);
l9_1056.Loop_Index_ID0=7.0;
l9_1056.Loop_Ratio_ID0=1.0;
float l9_1058=0.0;
l9_1058=l9_1056.Loop_Index_ID0;
float l9_1059=0.0;
float l9_1060=l9_1058;
float l9_1061=(*sc_set0.UserUniforms).Port_Item0_N009;
float l9_1062=(*sc_set0.UserUniforms).Port_Item1_N009;
float l9_1063=(*sc_set0.UserUniforms).Port_Item2_N009;
float l9_1064=(*sc_set0.UserUniforms).Port_Item3_N009;
float l9_1065=(*sc_set0.UserUniforms).Port_Item4_N009;
float l9_1066=(*sc_set0.UserUniforms).Port_Item5_N009;
float l9_1067=(*sc_set0.UserUniforms).Port_Item6_N009;
float l9_1068=(*sc_set0.UserUniforms).Port_Item7_N009;
float l9_1069=(*sc_set0.UserUniforms).Port_Item8_N009;
float l9_1070=(*sc_set0.UserUniforms).Port_Item9_N009;
float l9_1071=(*sc_set0.UserUniforms).Port_Item10_N009;
float l9_1072=(*sc_set0.UserUniforms).Port_Item11_N009;
float l9_1073=(*sc_set0.UserUniforms).Port_Item12_N009;
float l9_1074=(*sc_set0.UserUniforms).Port_Item13_N009;
float l9_1075[14];
l9_1075[0]=l9_1061;
l9_1075[1]=l9_1062;
l9_1075[2]=l9_1063;
l9_1075[3]=l9_1064;
l9_1075[4]=l9_1065;
l9_1075[5]=l9_1066;
l9_1075[6]=l9_1067;
l9_1075[7]=l9_1068;
l9_1075[8]=l9_1069;
l9_1075[9]=l9_1070;
l9_1075[10]=l9_1071;
l9_1075[11]=l9_1072;
l9_1075[12]=l9_1073;
l9_1075[13]=l9_1074;
int l9_1076=int(fast::clamp(l9_1060+9.9999997e-05,0.0,13.0));
float l9_1077=l9_1075[l9_1076];
l9_1059=l9_1077;
float l9_1078=0.0;
l9_1078=l9_1059;
float l9_1079=0.0;
l9_1079=exp((*sc_set0.UserUniforms).Port_Input0_N187);
float l9_1080=0.0;
l9_1080=l9_1078*l9_1079;
float2 l9_1081=float2(0.0);
float2 l9_1082=(*sc_set0.UserUniforms).normTexSize.zw;
l9_1081=l9_1082;
float2 l9_1083=float2(0.0);
l9_1083=l9_1056.gScreenCoord;
float2 l9_1084=float2(0.0);
float2 l9_1085=(*sc_set0.UserUniforms).blurDirection;
l9_1084=l9_1085;
float2 l9_1086=float2(0.0);
l9_1086=l9_1084*l9_1081;
float l9_1087=0.0;
float l9_1088=l9_1058;
float l9_1089=(*sc_set0.UserUniforms).Port_Item0_N114;
float l9_1090=(*sc_set0.UserUniforms).Port_Item1_N114;
float l9_1091=(*sc_set0.UserUniforms).Port_Item2_N114;
float l9_1092=(*sc_set0.UserUniforms).Port_Item3_N114;
float l9_1093=(*sc_set0.UserUniforms).Port_Item4_N114;
float l9_1094=(*sc_set0.UserUniforms).Port_Item5_N114;
float l9_1095=(*sc_set0.UserUniforms).Port_Item6_N114;
float l9_1096=(*sc_set0.UserUniforms).Port_Item7_N114;
float l9_1097[8];
l9_1097[0]=l9_1089;
l9_1097[1]=l9_1090;
l9_1097[2]=l9_1091;
l9_1097[3]=l9_1092;
l9_1097[4]=l9_1093;
l9_1097[5]=l9_1094;
l9_1097[6]=l9_1095;
l9_1097[7]=l9_1096;
int l9_1098=int(fast::clamp(l9_1088+9.9999997e-05,0.0,7.0));
float l9_1099=l9_1097[l9_1098];
l9_1087=l9_1099;
float2 l9_1100=float2(0.0);
l9_1100=l9_1086*float2(l9_1087);
float2 l9_1101=float2(0.0);
l9_1101=l9_1083+l9_1100;
float2 l9_1102=float2(0.0);
l9_1102=l9_1101;
float4 l9_1103=float4(0.0);
int l9_1104;
if ((int(normTexHasSwappedViews_tmp)!=0))
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
l9_1104=1-l9_1106;
}
else
{
int l9_1107=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1107=0;
}
else
{
l9_1107=in.varStereoViewID;
}
int l9_1108=l9_1107;
l9_1104=l9_1108;
}
int l9_1109=l9_1104;
int l9_1110=normTexLayout_tmp;
int l9_1111=l9_1109;
float2 l9_1112=l9_1102;
bool l9_1113=(int(SC_USE_UV_TRANSFORM_normTex_tmp)!=0);
float3x3 l9_1114=(*sc_set0.UserUniforms).normTexTransform;
int2 l9_1115=int2(SC_SOFTWARE_WRAP_MODE_U_normTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normTex_tmp);
bool l9_1116=(int(SC_USE_UV_MIN_MAX_normTex_tmp)!=0);
float4 l9_1117=(*sc_set0.UserUniforms).normTexUvMinMax;
bool l9_1118=(int(SC_USE_CLAMP_TO_BORDER_normTex_tmp)!=0);
float4 l9_1119=(*sc_set0.UserUniforms).normTexBorderColor;
float l9_1120=0.0;
bool l9_1121=l9_1118&&(!l9_1116);
float l9_1122=1.0;
float l9_1123=l9_1112.x;
int l9_1124=l9_1115.x;
if (l9_1124==1)
{
l9_1123=fract(l9_1123);
}
else
{
if (l9_1124==2)
{
float l9_1125=fract(l9_1123);
float l9_1126=l9_1123-l9_1125;
float l9_1127=step(0.25,fract(l9_1126*0.5));
l9_1123=mix(l9_1125,1.0-l9_1125,fast::clamp(l9_1127,0.0,1.0));
}
}
l9_1112.x=l9_1123;
float l9_1128=l9_1112.y;
int l9_1129=l9_1115.y;
if (l9_1129==1)
{
l9_1128=fract(l9_1128);
}
else
{
if (l9_1129==2)
{
float l9_1130=fract(l9_1128);
float l9_1131=l9_1128-l9_1130;
float l9_1132=step(0.25,fract(l9_1131*0.5));
l9_1128=mix(l9_1130,1.0-l9_1130,fast::clamp(l9_1132,0.0,1.0));
}
}
l9_1112.y=l9_1128;
if (l9_1116)
{
bool l9_1133=l9_1118;
bool l9_1134;
if (l9_1133)
{
l9_1134=l9_1115.x==3;
}
else
{
l9_1134=l9_1133;
}
float l9_1135=l9_1112.x;
float l9_1136=l9_1117.x;
float l9_1137=l9_1117.z;
bool l9_1138=l9_1134;
float l9_1139=l9_1122;
float l9_1140=fast::clamp(l9_1135,l9_1136,l9_1137);
float l9_1141=step(abs(l9_1135-l9_1140),9.9999997e-06);
l9_1139*=(l9_1141+((1.0-float(l9_1138))*(1.0-l9_1141)));
l9_1135=l9_1140;
l9_1112.x=l9_1135;
l9_1122=l9_1139;
bool l9_1142=l9_1118;
bool l9_1143;
if (l9_1142)
{
l9_1143=l9_1115.y==3;
}
else
{
l9_1143=l9_1142;
}
float l9_1144=l9_1112.y;
float l9_1145=l9_1117.y;
float l9_1146=l9_1117.w;
bool l9_1147=l9_1143;
float l9_1148=l9_1122;
float l9_1149=fast::clamp(l9_1144,l9_1145,l9_1146);
float l9_1150=step(abs(l9_1144-l9_1149),9.9999997e-06);
l9_1148*=(l9_1150+((1.0-float(l9_1147))*(1.0-l9_1150)));
l9_1144=l9_1149;
l9_1112.y=l9_1144;
l9_1122=l9_1148;
}
float2 l9_1151=l9_1112;
bool l9_1152=l9_1113;
float3x3 l9_1153=l9_1114;
if (l9_1152)
{
l9_1151=float2((l9_1153*float3(l9_1151,1.0)).xy);
}
float2 l9_1154=l9_1151;
l9_1112=l9_1154;
float l9_1155=l9_1112.x;
int l9_1156=l9_1115.x;
bool l9_1157=l9_1121;
float l9_1158=l9_1122;
if ((l9_1156==0)||(l9_1156==3))
{
float l9_1159=l9_1155;
float l9_1160=0.0;
float l9_1161=1.0;
bool l9_1162=l9_1157;
float l9_1163=l9_1158;
float l9_1164=fast::clamp(l9_1159,l9_1160,l9_1161);
float l9_1165=step(abs(l9_1159-l9_1164),9.9999997e-06);
l9_1163*=(l9_1165+((1.0-float(l9_1162))*(1.0-l9_1165)));
l9_1159=l9_1164;
l9_1155=l9_1159;
l9_1158=l9_1163;
}
l9_1112.x=l9_1155;
l9_1122=l9_1158;
float l9_1166=l9_1112.y;
int l9_1167=l9_1115.y;
bool l9_1168=l9_1121;
float l9_1169=l9_1122;
if ((l9_1167==0)||(l9_1167==3))
{
float l9_1170=l9_1166;
float l9_1171=0.0;
float l9_1172=1.0;
bool l9_1173=l9_1168;
float l9_1174=l9_1169;
float l9_1175=fast::clamp(l9_1170,l9_1171,l9_1172);
float l9_1176=step(abs(l9_1170-l9_1175),9.9999997e-06);
l9_1174*=(l9_1176+((1.0-float(l9_1173))*(1.0-l9_1176)));
l9_1170=l9_1175;
l9_1166=l9_1170;
l9_1169=l9_1174;
}
l9_1112.y=l9_1166;
l9_1122=l9_1169;
float2 l9_1177=l9_1112;
int l9_1178=l9_1110;
int l9_1179=l9_1111;
float l9_1180=l9_1120;
float2 l9_1181=l9_1177;
int l9_1182=l9_1178;
int l9_1183=l9_1179;
float3 l9_1184=float3(0.0);
if (l9_1182==0)
{
l9_1184=float3(l9_1181,0.0);
}
else
{
if (l9_1182==1)
{
l9_1184=float3(l9_1181.x,(l9_1181.y*0.5)+(0.5-(float(l9_1183)*0.5)),0.0);
}
else
{
l9_1184=float3(l9_1181,float(l9_1183));
}
}
float3 l9_1185=l9_1184;
float3 l9_1186=l9_1185;
float4 l9_1187=sc_set0.normTex.sample(sc_set0.normTexSmpSC,l9_1186.xy,bias(l9_1180));
float4 l9_1188=l9_1187;
if (l9_1118)
{
l9_1188=mix(l9_1119,l9_1188,float4(l9_1122));
}
float4 l9_1189=l9_1188;
l9_1103=l9_1189;
float4 l9_1190=float4(0.0);
l9_1190=float4(l9_1080)*l9_1103;
float4 l9_1191=float4(0.0);
l9_1191=float4(l9_1190.xyz.x,l9_1190.xyz.y,l9_1190.xyz.z,l9_1191.w);
l9_1191.w=l9_1080;
float4 l9_1192=float4(0.0);
l9_1192=l9_1191;
l9_1057=l9_1192;
l9_1055+=l9_1057;
param_11=l9_1055;
Output_N134=param_11;
float4 Output_N2=float4(0.0);
Output_N2=Value_N48+Output_N134;
float3 Value1_N140=float3(0.0);
float Value2_N140=0.0;
float4 param_13=Output_N2;
float3 param_14=param_13.xyz;
float param_15=param_13.w;
Value1_N140=param_14;
Value2_N140=param_15;
float3 Output_N141=float3(0.0);
Output_N141=Value1_N140/(float3(Value2_N140)+float3(1.234e-06));
FinalColor=float4(Output_N141,0.0);
float param_16=FinalColor.w;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (param_16<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_1193=gl_FragCoord;
float2 l9_1194=floor(mod(l9_1193.xy,float2(4.0)));
float l9_1195=(mod(dot(l9_1194,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (param_16<l9_1195)
{
discard_fragment();
}
}
float4 param_17=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_1196=param_17;
float4 l9_1197=l9_1196;
float l9_1198=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_1198=l9_1197.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_1198=fast::clamp(l9_1197.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_1198=fast::clamp(dot(l9_1197.xyz,float3(l9_1197.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_1198=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_1198=(1.0-dot(l9_1197.xyz,float3(0.33333001)))*l9_1197.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_1198=(1.0-fast::clamp(dot(l9_1197.xyz,float3(1.0)),0.0,1.0))*l9_1197.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_1198=fast::clamp(dot(l9_1197.xyz,float3(1.0)),0.0,1.0)*l9_1197.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_1198=fast::clamp(dot(l9_1197.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_1198=fast::clamp(dot(l9_1197.xyz,float3(1.0)),0.0,1.0)*l9_1197.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_1198=dot(l9_1197.xyz,float3(0.33333001))*l9_1197.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_1198=1.0-fast::clamp(dot(l9_1197.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_1198=fast::clamp(dot(l9_1197.xyz,float3(1.0)),0.0,1.0);
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
float l9_1199=l9_1198;
float l9_1200=l9_1199;
float l9_1201=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_1200;
float3 l9_1202=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_1196.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_1203=float4(l9_1202.x,l9_1202.y,l9_1202.z,l9_1201);
param_17=l9_1203;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_17=float4(param_17.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_1204=param_17;
float4 l9_1205=float4(0.0);
float4 l9_1206=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_1207=out.sc_FragData0;
l9_1206=l9_1207;
}
else
{
float4 l9_1208=gl_FragCoord;
float2 l9_1209=l9_1208.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1210=l9_1209;
float2 l9_1211=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_1212=1;
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
int l9_1215=l9_1214;
float3 l9_1216=float3(l9_1210,0.0);
int l9_1217=l9_1212;
int l9_1218=l9_1215;
if (l9_1217==1)
{
l9_1216.y=((2.0*l9_1216.y)+float(l9_1218))-1.0;
}
float2 l9_1219=l9_1216.xy;
l9_1211=l9_1219;
}
else
{
l9_1211=l9_1210;
}
float2 l9_1220=l9_1211;
float2 l9_1221=l9_1220;
float2 l9_1222=l9_1221;
float2 l9_1223=l9_1222;
float l9_1224=0.0;
int l9_1225;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_1226=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1226=0;
}
else
{
l9_1226=in.varStereoViewID;
}
int l9_1227=l9_1226;
l9_1225=1-l9_1227;
}
else
{
int l9_1228=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1228=0;
}
else
{
l9_1228=in.varStereoViewID;
}
int l9_1229=l9_1228;
l9_1225=l9_1229;
}
int l9_1230=l9_1225;
float2 l9_1231=l9_1223;
int l9_1232=sc_ScreenTextureLayout_tmp;
int l9_1233=l9_1230;
float l9_1234=l9_1224;
float2 l9_1235=l9_1231;
int l9_1236=l9_1232;
int l9_1237=l9_1233;
float3 l9_1238=float3(0.0);
if (l9_1236==0)
{
l9_1238=float3(l9_1235,0.0);
}
else
{
if (l9_1236==1)
{
l9_1238=float3(l9_1235.x,(l9_1235.y*0.5)+(0.5-(float(l9_1237)*0.5)),0.0);
}
else
{
l9_1238=float3(l9_1235,float(l9_1237));
}
}
float3 l9_1239=l9_1238;
float3 l9_1240=l9_1239;
float4 l9_1241=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_1240.xy,bias(l9_1234));
float4 l9_1242=l9_1241;
float4 l9_1243=l9_1242;
l9_1206=l9_1243;
}
float4 l9_1244=l9_1206;
float3 l9_1245=l9_1244.xyz;
float3 l9_1246=l9_1245;
float3 l9_1247=l9_1204.xyz;
float3 l9_1248=definedBlend(l9_1246,l9_1247,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_1205=float4(l9_1248.x,l9_1248.y,l9_1248.z,l9_1205.w);
float3 l9_1249=mix(l9_1245,l9_1205.xyz,float3(l9_1204.w));
l9_1205=float4(l9_1249.x,l9_1249.y,l9_1249.z,l9_1205.w);
l9_1205.w=1.0;
float4 l9_1250=l9_1205;
param_17=l9_1250;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_1251=float4(in.varScreenPos.xyz,1.0);
param_17=l9_1251;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_1252=gl_FragCoord;
float l9_1253=fast::clamp(abs(l9_1252.z),0.0,1.0);
float4 l9_1254=float4(l9_1253,1.0-l9_1253,1.0,1.0);
param_17=l9_1254;
}
else
{
float4 l9_1255=param_17;
float4 l9_1256=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_1256=float4(mix(float3(1.0),l9_1255.xyz,float3(l9_1255.w)),l9_1255.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_1257=l9_1255.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_1257=fast::clamp(l9_1257,0.0,1.0);
}
l9_1256=float4(l9_1255.xyz*l9_1257,l9_1257);
}
else
{
l9_1256=l9_1255;
}
}
float4 l9_1258=l9_1256;
param_17=l9_1258;
}
}
}
}
}
float4 l9_1259=param_17;
FinalColor=l9_1259;
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
float4 l9_1260=float4(0.0);
l9_1260=float4(0.0);
float4 l9_1261=l9_1260;
float4 Cost=l9_1261;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float4 param_18=FinalColor;
FinalColor=sc_OutputMotionVectorIfNeeded(param_18,in.varPosAndMotion,in.varNormalAndMotion);
float4 param_19=FinalColor;
float4 l9_1262=param_19;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_1262.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.sc_FragData0=l9_1262;
return out;
}
} // FRAGMENT SHADER
