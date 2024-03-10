## [Back](./../README.md)

### Examples

Complie `/examples/main.cpp` with your choosen complier, for example:

Using `MinGW` on `Windows`:
```
g++ .\examples\main.cpp -o main.exe
```

Running `main.exe` should result the following output:

*Warnings and Errors*
```
WARNING [ ShaderLoader::load_shader ]: 'example_shader.glsl' tried to include itself
ERROR [ ShaderLoader::load_shader ]: Failed to start fstream, check if 'missing_file.glsl' exists
```

*String returned from load_shader()*
```glsl
#version 330 core
layout (location = 0) in vec3 aPos;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

// Including myself by accident
// Including myself by accident

//########################
//### common_data.glsl ###
//########################

//#############################
//### common_functions.glsl ###
//#############################

vec3 my_funcion1(in vec3) {
    //...
}

vec3 my_funcion2(in vec3) {
    //...
}

vec3 my_funcion3(in vec3) {
    //...
}
//######################


// Circular dependency avoided
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


// Duplicate include avoided
// Duplicate include avoided

// Missing include

// Missing include

void main()
{
    gl_Position = projection * view * model * vec4(aPos, 1.0);
}
```