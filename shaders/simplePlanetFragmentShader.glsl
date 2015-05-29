uniform mat4 bilboard;
uniform vec4 color;

varying vec2 screenPos;

void main(){
if(distance(screenPos, vec2(0.0, 0.0)) < 1.0){
gl_FragColor = vec4(0.0, screenPos, 1.0);
}else{
gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
}
}