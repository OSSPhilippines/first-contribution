import http.server
import socketserver

# Set the port number for the server
PORT = 8000

# Specify the request handler. SimpleHTTPRequestHandler is the default one
# that serves files from the current directory.
Handler = http.server.SimpleHTTPRequestHandler

# Create a TCP server with the address (empty string means all interfaces)
# and the specified Handler
with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"Serving at port {PORT}.")
    
    # Start the server and keep it running indefinitely until interrupted (e.g., Ctrl+C)
    httpd.serve_forever()