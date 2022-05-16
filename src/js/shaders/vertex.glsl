varying vec2 vUv;
uniform float time;
uniform vec2 hover;
varying float vNoise;
 
void main() {
    vec3 newPosition = position;

    gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4( newPosition, 1.0 );

    vUv = uv;
} 