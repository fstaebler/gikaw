uniform vec3 location;
uniform float radius;
uniform vec4 color;

varying vec2 screenPos;

void main () {
  screenPos = uv;
  gl_Position = vec4(uv, 0.5, 1.0);
}