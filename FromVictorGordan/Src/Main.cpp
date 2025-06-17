#include <iostream>
#include <GLFW/glfw3.h>

int main() {
  glfwInit();
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  glfwWindowHint(GLFW_OPENGL_API, GLFW_OPENGL_CORE_PROFILE);

  GLFWwindow *Window = glfwCreateWindow(1000, 650, "LaunchVictorGordan", NULL, NULL);
  if (Window == NULL) {
    std::cout << "GLFW Failed Creating the Window!" << std::endl;
    glfwTerminate();
    return -1;
  }
  glfwMakeContextCurrent(Window);

  glViewport(0, 0, 1000, 650);

  char QUIT;
  std::cin >> QUIT;

  return 0;
}
