creativevpn — XRay (VLESS over WebSocket) for Railway

How to deploy:
1) Push this repo to GitHub (you already created 'creativevpn').
2) Go to https://railway.app and sign up / login (connect GitHub).
3) Click "New Project" -> "Deploy from GitHub" -> choose this repo.
   - Railway will detect Dockerfile.
   - Set the service port to 8080 (if asked).
4) Choose free plan and Deploy.

After deploy you'll get a public URL like:
https://<service-name>.up.railway.app

Client config (VLESS over WS + TLS):
- Address: <service-host> (replace with your Railway host)
- Port: 443
- ID/UUID: b3d2f6e4-9a1c-4f2b-8c3d-7e6a5b4c3d2e
- Network: ws
- Path: /_hidden_api
- TLS: ON (use TLS)
- Encryption: none

VLESS URI example:
vless://b3d2f6e4-9a1c-4f2b-8c3d-7e6a5b4c3d2e@<service-host>:443?path=%2F_hidden_api&security=tls&type=ws&encryption=none#creativevpn

If deploy fails, open Railway build logs and copy the error; I will help debug.

