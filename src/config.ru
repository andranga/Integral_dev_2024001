#config.ru
require 'rack'

class MyFirstWebApp
	def call(env)
		@path = env['REQUEST_PATH']
		if @path == '/index.html'
			[200, {'Content-Type' => 'text/html'}, [File.read("/Users/andres/Proyectos/Integral/dev/ver2024001/index.html")]]
		else
			[404, {'Content-Type' => 'text/html'}, ['<h1> Página no encontrada </h1>']]
		end
		#[200, {'Content-Type' => 'text/plain'}, ['<h1> Hola </h1>']]
	end
end

run MyFirstWebApp.new
