//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = vec4(1, 1, 1, texture2D(gm_BaseTexture, v_vTexcoord).a);
}
