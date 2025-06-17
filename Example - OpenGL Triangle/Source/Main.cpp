#include <iostream>
#include <cmath>
#include <glad/glad.h>
#include <GLFW/glfw3.h>

const char* VertexShaderSource = "#version 330 core\n"
"layout (location = 0) in vec3 aPos;\n"
"void main() { gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0); }\n\0";

const char* FragmentShaderSource = "#version 330 core\n"
"out vec4 FragColor;\n"
"void main() { FragColor = vec4(0.8f, 0.3f, 0.02f, 1.0f); }\n\0";

int main() {

	//Initializes GLFW so We Can Use It
	glfwInit();

	//Tells GLFW The Version of OpenGL we want to Use
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);

	//Tells GLFW what OpenGL Profile We Want to Use
	glfwWindowHint(GLFW_OPENGL_API, GLFW_OPENGL_CORE_PROFILE);

	GLfloat Vertices[] = {
		-0.5f, -0.5f, 0.0f,
		0.5, -0.5f, 0.0f,
		0.0f, 0.5f, 0.0f
	};

	//Constants for The window width and Height because we do Want to use them as Parameters in other functions
	const unsigned int WIDTH = 1000;
	const unsigned int HEIGHT = 650;

	//Creates a window and stores it in Memory
	GLFWwindow* Window = NULL;
	Window = glfwCreateWindow(WIDTH, HEIGHT, "The Game Sucks Cuz Its By a Beginner", NULL, NULL);
	
	//Checks If GLFW Failed to Create an Window
	if (Window == NULL) {
		std::cout << "GLFW Failed To Create A Window" << std::endl;
		glfwTerminate();
		return -1;
	}

	//Tells GLFW That We Want to Use This Window
	glfwMakeContextCurrent(Window);

	//Makes Glad Load in OpenGL Functions and Lets Us Use Them
	gladLoadGL();

	//Tells OpenGL How Much Of The Window We Want to use For Rendering, In Which Case I All.
	glViewport(0, 0, WIDTH, HEIGHT);

	//Making OpenGL Create a Shader And Store It Into A Variable
	GLuint VertexShader = glCreateShader(GL_VERTEX_SHADER);
	//Specify The GLSL (OpenGL Shader Language) code stored in a Character Pointer (char*) and binding it to its shader
	glShaderSource(VertexShader, 1, &VertexShaderSource, NULL);
	//Compiling That GLSL code
	glCompileShader(VertexShader);

	//Same Thing Here But for Fragment Shaders Instead
	GLuint FragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
	glShaderSource(FragmentShader, 1, &FragmentShaderSource, NULL);
	glCompileShader(FragmentShader);

	//Making OpenGL Create a program That contains all shader details and store it in a variable
	GLuint TheShader = glCreateProgram();

	//Putting The Shader Info Into The Shader Program
	glAttachShader(TheShader, VertexShader);
	glAttachShader(TheShader, FragmentShader);
	//Making The Program Connect With OpenGL
	glLinkProgram(TheShader);

	//Deleteing And Cleaning the Data form The Shaders as We Stored Them In The Shader Program
	glDeleteShader(VertexShader);
	glDeleteShader(FragmentShader);

	//Making a Vertex Array (VAO) and Vertex Buffer (VBO)
	GLuint TheVAO, TheVBO;

	//Generating A Vertex Array and Storing it int the ROOT value of the VAO Variable
	glGenVertexArrays(1, &TheVAO);

	//Generating a Buffer Which Bundles Up Data To Be Sent To the CPU to The GPU (Its slow so we bundle it up and do it once)
    glGenBuffers(1, &TheVBO);
	
	//Making The VAO The Main Vertex Array of the OpenGL (The Entire Game)
	glBindVertexArray(TheVAO);

	//Making The VBO Become One With THe Array Buffer
	glBindBuffer(GL_ARRAY_BUFFER, TheVBO);

	//Adding Data To The Buffer So It Can Be Bunndled And Sent
	glBufferData(GL_ARRAY_BUFFER, sizeof(Vertices), Vertices, GL_STATIC_DRAW);

	//Specifying How The Vertex Data is Structured so It May Be Understood By OpenGL
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);

	//Enabling a Generic Vertex Attribute Array
	glEnableVertexAttribArray(0);

	//Binding The Array Buffer To Zero (Maybe Switching it off?)
	glBindBuffer(GL_ARRAY_BUFFER, 0);

	//Also Switching Off The Vertex Array
	glBindVertexArray(0);

	//Specifies The Color To Make A Buffer Once That Buffer Clears
	glClearColor(0.086275f, 0.152941f, 0.431373f, 1.0f);

	//Clears The Buffer And Hence Makes It the Clear Color
	glClear(GL_COLOR_BUFFER_BIT);

	//Swaps The Back Buffer With the Front Buffer
	glfwSwapBuffers(Window);

	//Checks For Input For As Long As GLFW Is not told to close
	while (!glfwWindowShouldClose(Window)) {

		//Does Everyting For As Long As The Program Is Running
		glClearColor(1.1f, 0.152941f, 0.431373f, 1.0f);
		glClear(GL_COLOR_BUFFER_BIT);

		//Telling OpenGL What Program To Use
		glUseProgram(TheShader);

		//Binding The Vertex Array to The VAO and Switching it back on?
		glBindVertexArray(TheVAO);

		//Telling OpenGL How To Draw
		glDrawArrays(GL_TRIANGLES, 0, 3);

		glfwSwapBuffers(Window);

		glfwPollEvents();
	}

	//CleanUp Time.
	glDeleteVertexArrays(1, &TheVAO);
	glDeleteBuffers(1, &TheVBO);
	glDeleteProgram(TheShader);

	//Clears The Window Pointer (Cleans Memory) and Terminates GLFW
	glfwDestroyWindow(Window);
	glfwTerminate();
	return 0;
}
