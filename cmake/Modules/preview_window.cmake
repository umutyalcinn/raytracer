option(CG_USE_PREVIEW_WINDOW "creates an OpenGL preview window." OFF)
set(PREVIEW_WINDOW_POSSIBLE 1)
if (${CG_USE_PREVIEW_WINDOW})
  set(OpenGL_GL_PREFERENCE "GLVND")
  find_package(OpenGL REQUIRED COMPONENTS OpenGL)
  if (NOT ${OpenGL_FOUND})
    message(STATUS "OpenGL is required for preview window")
    set(PREVIEW_WINDOW_POSSIBLE 0)
  endif()
  find_package(Threads QUIET)
  if (NOT ${Threads_FOUND})
    message(STATUS "Threads are required for preview")
    set(PREVIEW_WINDOW_POSSIBLE 0)
  endif()
  
  if (${PREVIEW_WINDOW_POSSIBLE})
    include(add_glfw)
  endif()
endif()
