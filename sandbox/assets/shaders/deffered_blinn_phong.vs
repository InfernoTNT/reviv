#version 330 core

layout (location = 0) in vec3 a_Position;
layout (location = 2) in vec2 a_TexCoords;

out vec2 v_TexCoords;

void main()
{
    v_TexCoords = a_TexCoords;
    gl_Position = vec4(a_Position, 1);
}
