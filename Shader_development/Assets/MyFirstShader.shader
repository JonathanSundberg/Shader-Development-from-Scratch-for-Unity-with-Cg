Shader "Selfmade/HelloShader"{
		
		Properties{
			_myColour ("Example Colour", Color) = (1,1,1,1)
			_myEmission ("Example Emission", Color) = (1,1,1,1)
		}

		SubShader{
				CGPROGRAM
					#pragma surface surf Lambert

					struct Input{
						float2 uvMainTex;
					};

					fixed4 _myColour;
					fixed4 _myEmission;

					void surf (Input IN, inout SurfaceOutput o){
						o.Emission = _myEmission.rgb;
						o.Albedo = _myColour.rgb;
					}
				ENDCG
		}

		FallBack "Diffuse"
}