varying vec2 vUv;
uniform sampler2D uImage;

void main() {
    vec2 newUV = vUv;

    vec4 imageView =  texture2D(uImage, newUV);
    
    gl_FragColor = imageView;
}