uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
uniform float uColorOffset;
uniform float uColorMultiplier;

varying float vElevation;

void main() {
    #include <colorspace_fragment>;
    float mixStrength = (vElevation + uColorOffset) * uColorMultiplier;
    vec3 color = mix(uDepthColor, uSurfaceColor, mixStrength); // the third value is multiplied because the default one is too low to see relevant changes, if third value is 0.0, first color is applied, if it's 1.0 then the second color will be applied, if it's 0.5 a mix between them will be applied

    gl_FragColor = vec4(color, 1.0);
}