var r = new THREE.WebGLRenderer();
var contentDiv = document.getElementById("content");
r.setSize(contentDiv.clientWidth, contentDiv.clientHeight);
contentDiv.appendChild(r.domElement);

var s = new THREE.Scene();
var c = new THREE.PerspectiveCamera(80, contentDiv.clientWidth / contentDiv.clientHeight, 0.1, 10.0);
c.position.z = 5.0;

r.setClearColor(0, 0);

var surface = new THREE.Mesh(new THREE.PlaneBufferGeometry(1, 1, 1, 1), new THREE.MeshNormalMaterial({}));

s.add(surface);

s.overrideMaterial = prototypePlanetShader;

r.autoClear = false;

r.render(s, c);
