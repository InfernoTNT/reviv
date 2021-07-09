#version 460 core

layout (location = 0) in vec3 a_Pos;
layout (location = 1) in vec2 a_TexCoord;

out vec2 v_TexCoord;

uniform mat4 u_Model;
uniform mat4 u_View;
uniform mat4 u_Projection;

void main(){
	
	vec4 rez = (u_Projection * u_View * u_Model * vec4(a_Pos, 1));
	gl_Position = rez;
	
	v_TexCoord = a_TexCoord;
}
