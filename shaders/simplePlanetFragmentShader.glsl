uniform vec3 location;
uniform float radius;
uniform vec4 color;

varying vec2 screenPos;

void main(){
gl_FragColor = vec4(0.0, screenPos, 1.0);
}