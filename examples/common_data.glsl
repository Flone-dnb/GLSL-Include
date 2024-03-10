//########################
//### common_data.glsl ###
//########################

//#include "subdir\common_functions.glsl"

// Circular dependency avoided
//#include "example_shader.glsl"
// Circular dependency avoided

struct Material {
    sampler2D diffuse;
    sampler2D specular;
    float     shininess;
};  

struct DirLight {
    vec3 direction;
    vec3 ambient;
    vec3 diffuse;
    vec3 specular;
};
//######################