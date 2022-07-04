class JwtMiddleware
  def initialize app
    @app = app
  end

  def call env

    #return [401, {'Content-Type' => 'text/plain'}, ['Unauthorized']]
    puts("JWT")
    @status, @headers, @response = @app.call(env)
    puts(@headers)
    puts(@status)
    puts("/JWT")
    
    [@status, @headers, @response]
  end
end