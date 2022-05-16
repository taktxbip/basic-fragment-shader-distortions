varying vec2 vUv;
uniform sampler2D uImage;
uniform float progress;
uniform sampler2D uDisplacement;

void main() {
    vec4 imageView =  texture2D(uDisplacement, vUv.yx);

    vec2 newUV = vec2(
        vUv.x,
        vUv.y
    );

    newUV.y = mix(vUv.y, imageView.r, progress);

    vec4 res = texture2D(uImage, newUV);

    // res.r = mix(res.r, imageView.r, progress);
    
    gl_FragColor = res;
}