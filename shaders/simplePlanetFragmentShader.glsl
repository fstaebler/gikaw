uniform vec3 location;
uniform float radius;
uniform vec4 color;

varying vec2 screenPos;

void main(){

gl_FragColor = vec4(0.0, screenPos, 1.0);

vec3 viewPos;
vec3 c;
float radius;
vec3 o;
float distance;
vec3 l;
//Hier den Richtungsvektor normalisieren (Länge berechnen und durch Länge teilen)
l = normalize(l);
/*Ab hier sei gegeben:
  Kugel durch ||x - c||² = r² mit
    c = center
    r = radius
    x = einzusetzender Punkt
  Linie durch x = o + dl mit
    o = origin
    d = distance
    l = Richtung als Einheitsvektor mit Länge 1
*/
//Calculate solutions
float subsquirt = pow((l * (o - c)),2) - pow(abs(o - c), 2) + pow(r,2);
if(subsquirt < 0){
  //No solution
}else if (subsquirt == 0){
  //Edge
}else{
  float d1 = - (l * (o -c)) + sqrt(subsquirt);
  float d2 = - (l * (o -c)) - sqrt(subsquirt);
  vec p1 = o + d1 * l;
  vec p2 = o + d2 * l;
  if(distance(viewPos, p1) < distance(viewPos))
}

}
