var fs = require("fs");
var prototypePlanetShader = new THREE.ShaderMaterial({
  uniforms: {
    viewerPosition: {
      type: "v3",
      value: new THREE.Vector3(0.0, 0.0, 3.0)
    },
    location: {
      type: "v3",
      value: new THREE.Vector3(0.0, 0.0, 0.0)
    },
    radius: {
      type: "f",
      value: 0.5
    },
    color: {
      type: "v4",
      value: new THREE.Vector4(0.5, 0.3, 0.6, 1.0)
    }
  },
  vertexShader: fs.readFileSync("../shaders/simplePlanetVertexShader.glsl", {
    encoding: "utf-8"
  }),
  fragmentShader: fs.readFileSync("../shaders/simplePlanetFragmentShader.glsl", {
    encoding: "utf-8"
  })
});
