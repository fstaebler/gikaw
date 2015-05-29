uniform vec3 location;
uniform float radius;
uniform vec4 color;

varying vec2 screenPos;

void main () {
  vec2 actualUv = (2.0 * uv) - 1.0;
  screenPos = actualUv;
  gl_Position = vec4(actualUv, 0.5, 1.0);
}