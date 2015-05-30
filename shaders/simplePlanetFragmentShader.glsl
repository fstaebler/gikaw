uniform vec4 color;

varying vec3 realPos;
varying vec2 screenPos;
/*

vec4 sampleColor(vec3 viewPos, vec3 planetPos, float planetRadius){
  vec3 direction = normalize(planetPos - viewPos);
  /*Ab hier sei gegeben:
  Kugel durch ||x - c||² = r² mit
  c = center
  r = radius
  x = einzusetzender Punkt
  Linie durch x = o + dl mit
  o = origin
  d = distance
  l = Richtung als Einheitsvektor mit Länge 1
  *//*
  //Calculate solutions
  float subsquirt = pow((direction * (viewPos - planetPos)),2) - pow(abs(viewPos - planetPos), 2) + pow(planetRadius,2);
  if(subsquirt < 0){
    //No solution
    return vec4(0,0,0,0);
    }else if (subsquirt == 0){
      //EDGE
      return vec4(1,1,1,0);
      }else{
        float d1 = - (direction * (viewPos - planetPos)) + sqrt(subsquirt);
        float d2 = - (direction * (viewPos - planetPos)) - sqrt(subsquirt);
        vec3 p1 = viewPos + d1 * direction;
        vec3 p2 = viewPos + d2 * direction;
        vec3 renderPoint;
        if(distance(viewPos, p1) < distance(viewPos, p2)){
          renderPoint = p1;
          }else{
            renderPoint = p2;
          }
          //OK, now we know where on the sphere we are, now time to lookup the correct color
          float lat, lon;
          lat = tan((renderPoint[0] - planetPos[0]) / (renderPoint[1] - planetPos[1]));
          lon = tan((renderPoint[2] - planetPos[2]) / (renderPoint[1] - planetPos[1]));
          //Okay, now transfer to the actual coordinates
          float x = (lat / (2 * M_PI)) + 0.5;
          float y = (lon / (2 * M_PI)) + 0.5;

          return vec4(0,x,y,0);
  }

}
*/
void main(){
if(distance(screenPos, vec2(0.0, 0.0)) < 1.0){
gl_FragColor = vec4(0.0, 0.0, 1.0, 1.0) * vec4(realPos, 1.0);
}else{
gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
}
}