//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	//vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
	//gl_FragColor = v_vColour * vec4( 1, 0, 0, texColor.a);
	gl_FragColor.g = 0.50;
	gl_FragColor.b = 0.0;
}
