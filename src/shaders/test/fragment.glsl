precision mediump float;

uniform vec3 uColor;
uniform sampler2D uTexture;

// varying float vRandom;
varying vec2 vUv;
varying float vElevation;

void main() {
  vec4 textureColor = texture2D(uTexture, vUv);
  textureColor.rgb += vElevation * 2.0 + 0.1;

  // gl_FragColor = vec4(0.69, vRandom, 0.21, 1.0);
  gl_FragColor = textureColor;
}