import http.server
import socketserver
from http import HTTPStatus
from mod1 import getResponse

class Handler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        self.send_response(HTTPStatus.OK)
        self.end_headers()
        self.wfile.write(getResponse())


httpd = socketserver.TCPServer(('', 8000), Handler)
httpd.serve_forever()