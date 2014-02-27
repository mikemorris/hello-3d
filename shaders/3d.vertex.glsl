attribute vec4 a_position;
attribute vec4 a_color;

uniform mat4 u_matrix;
uniform float u_fudge;

varying vec4 v_color;

void main() {
  vec4 position = u_matrix * a_position;
  float zToDivideBy = 1.0 + position.z * u_fudge;
  gl_Position = vec4(position.xy / zToDivideBy, position.zw);
  v_color = a_color;
}
