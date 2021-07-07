class Application 
    def call(env) 
        resp = Rack::Response.new 
        hour = Time.now.hour 
        if hour < 12 
            greet = "Good Morning!" 
        else 
            greet = "Good Afternoon!"
        end
        resp.write(greet) 
        resp.finish
    end 
end 