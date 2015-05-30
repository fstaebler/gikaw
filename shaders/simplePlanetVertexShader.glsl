uniform vec4 color;

varying vec2 screenPos;
varying vec3 realPos;

void main () {
  vec2 actualUv = (2.0 * uv) - 1.0;
  screenPos = actualUv;
  vec4 t = modelMatrix * vec4(position, 1.0);
  realPos = cameraPosition - vec3(t.x, t.y, t.z);
  gl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 );
}