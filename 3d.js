var r = new THREE.WebGLRenderer();
var contentDiv = document.getElementById("content");
r.setSize(contentDiv.clientWidth, contentDiv.clientHeight);
contentDiv.appendChild(r.domElement);

var s = new THREE.Scene();
var c = new THREE.PerspectiveCamera(80, contentDiv.clientWidth / contentDiv.clientHeight, 0.1, 10.0);
c.position.z = 5.0;

r.setClearColor(0, 0);

var pTransMat = new THREE.Matrix4();
pTransMat.makeRotationY(Math.PI);
var pGeo = new THREE.PlaneBufferGeometry(1, 1, 1);
//pGeo.applyMatrix(pTransMat);
var surface = new THREE.Mesh(pGeo, new THREE.LineBasicMaterial({}));

s.add(surface);
surface.position.x = 1.0;
surface.position.y = 2.0;
surface.position.z = -0.0;
var planetRadius = 2;
var planetDistance = surface.position.distanceTo(c.position);
surface.scale.x = surface.scale.y = surface.scale.z = Math.tan(Math.asin(planetRadius / planetDistance)) * planetDistance;
s.overrideMaterial = prototypePlanetShader;
surface.lookAt(c.position);

r.autoClear = false;
r.render(s, c);
