// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33401,y:32718,varname:node_3138,prsc:2|emission-7340-RGB,clip-3027-OUT;n:type:ShaderForge.SFN_TexCoord,id:2693,x:31769,y:32365,varname:node_2693,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2dAsset,id:9174,x:32634,y:33285,ptovrint:False,ptlb:node_9174,ptin:_node_9174,varname:node_9174,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:294b1c60c24316940a8c68a7093f8df0,ntxv:0,isnm:False;n:type:ShaderForge.SFN_RemapRange,id:8574,x:31997,y:32365,varname:node_8574,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2693-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:6683,x:32155,y:32384,varname:node_6683,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8574-OUT;n:type:ShaderForge.SFN_ArcTan2,id:4224,x:32415,y:32379,varname:node_4224,prsc:2,attp:2|A-6683-G,B-6683-R;n:type:ShaderForge.SFN_Append,id:6166,x:32936,y:32901,varname:node_6166,prsc:2|A-6729-OUT,B-4736-OUT;n:type:ShaderForge.SFN_Vector1,id:4736,x:32660,y:33175,varname:node_4736,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:925,x:32033,y:33181,ptovrint:False,ptlb:node_925,ptin:_node_925,varname:node_925,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ab6a6a18a52c2354493022d82075f03f,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:3027,x:32248,y:33181,varname:node_3027,prsc:2|A-1849-OUT,B-925-R;n:type:ShaderForge.SFN_RemapRange,id:1849,x:32071,y:32952,varname:node_1849,prsc:2,frmn:0,frmx:1,tomn:-0.6,tomx:0.6|IN-7557-OUT;n:type:ShaderForge.SFN_Slider,id:6863,x:31461,y:33050,ptovrint:False,ptlb:node_6863,ptin:_node_6863,varname:node_6863,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2865796,max:1;n:type:ShaderForge.SFN_OneMinus,id:7557,x:31861,y:33014,varname:node_7557,prsc:2|IN-6863-OUT;n:type:ShaderForge.SFN_RemapRange,id:2071,x:32334,y:32937,varname:node_2071,prsc:2,frmn:0,frmx:1,tomn:-4,tomx:4|IN-3027-OUT;n:type:ShaderForge.SFN_Clamp01,id:1437,x:32547,y:32919,varname:node_1437,prsc:2|IN-2071-OUT;n:type:ShaderForge.SFN_OneMinus,id:6729,x:32731,y:32888,varname:node_6729,prsc:2|IN-1437-OUT;n:type:ShaderForge.SFN_Vector1,id:1302,x:32995,y:32752,varname:node_1302,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:7340,x:33121,y:33071,varname:node_7340,prsc:2,tex:294b1c60c24316940a8c68a7093f8df0,ntxv:0,isnm:False|UVIN-6166-OUT,TEX-9174-TEX;n:type:ShaderForge.SFN_Color,id:2076,x:33162,y:32597,ptovrint:False,ptlb:node_2076,ptin:_node_2076,varname:node_2076,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:9174-925-6863;pass:END;sub:END;*/

Shader "Shader Forge/dissolve" {
    Properties {
        _node_9174 ("node_9174", 2D) = "white" {}
        _node_925 ("node_925", 2D) = "white" {}
        _node_6863 ("node_6863", Range(0, 1)) = 0.2865796
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_9174; uniform float4 _node_9174_ST;
            uniform sampler2D _node_925; uniform float4 _node_925_ST;
            uniform float _node_6863;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _node_925_var = tex2D(_node_925,TRANSFORM_TEX(i.uv0, _node_925));
                float node_3027 = (((1.0 - _node_6863)*1.2+-0.6)+_node_925_var.r);
                clip(node_3027 - 0.5);
////// Lighting:
////// Emissive:
                float2 node_6166 = float2((1.0 - saturate((node_3027*8.0+-4.0))),0.0);
                float4 node_7340 = tex2D(_node_9174,TRANSFORM_TEX(node_6166, _node_9174));
                float3 emissive = node_7340.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_925; uniform float4 _node_925_ST;
            uniform float _node_6863;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _node_925_var = tex2D(_node_925,TRANSFORM_TEX(i.uv0, _node_925));
                float node_3027 = (((1.0 - _node_6863)*1.2+-0.6)+_node_925_var.r);
                clip(node_3027 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
