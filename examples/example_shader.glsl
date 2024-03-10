#version 330 core
layout (location = 0) in vec3 aPos;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

// Including myself by accident
//#include "example_shader.glsl"
// Including myself by accident

//#include "common_data.glsl"

// Duplicate include avoided
//#include "subdir/common_functions.glsl"
// Duplicate include avoided

// Missing include
//#include "missing_file.glsl"
// Missing include

void main()
{
    gl_Position = projection * view * model * vec4(aPos, 1.0);
}