#include "../src/glsl_include.hpp"

int main() {
    glsl_include::ShaderLoader shader_loader = glsl_include::ShaderLoader("//#include");
    std::string source = shader_loader.load_shader("example_shader.glsl");
    std::cout << source << std::endl;
    return 0;
}