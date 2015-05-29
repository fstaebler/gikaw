var fs = require("fs");
var prototypePlanetShader = new THREE.ShaderMaterial({
  uniforms: {
    bilboard: {
      type: "m4",
      value: null
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
