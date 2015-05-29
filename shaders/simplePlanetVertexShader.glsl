uniform mat4 bilboard;
uniform vec4 color;

varying vec2 screenPos;

void main () {
  vec2 actualUv = (2.0 * uv) - 1.0;
  screenPos = actualUv;
  gl_Position =  projectionMatrix * modelViewMatrix * vec4( position, 1.0 );
}