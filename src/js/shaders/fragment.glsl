varying vec2 vUv;
uniform sampler2D uImage;
uniform float progress;
uniform sampler2D uDisplacement;

void main() {
    vec4 displace =  texture2D(uDisplacement, vUv.yx);

    vec2 displaceUV = vec2(
        vUv.x,
        vUv.y
    );

    displaceUV.y = mix(vUv.y, displace.r - 0.2, progress);

    vec4 res = texture2D(uImage, displaceUV);

    res.r = texture2D(uImage, displaceUV + vec2(0.0, 1.0 * 0.05) * progress).r;
    res.g = texture2D(uImage, displaceUV + vec2(0.0, 1.0 * 0.1) * progress).g;
    res.b = texture2D(uImage, displaceUV + vec2(0.0, 1.0 * 0.2) * progress).b;
    // vec4 res = texture2D(uDisplacement, vUv);

    // res.r = mix(res.r, displace.r, progress);
    
    gl_FragColor = res;
}