uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;

void main() {
    #include <colorspace_fragment>;

    gl_FragColor = vec4(uDepthColor, 1.0);
}