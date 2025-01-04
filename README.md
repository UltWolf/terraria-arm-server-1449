# terraria-arm-server-1449
1. Build and run dockerfile
2. Go to container (maybe in future will update the dockerfile for autocreation, etc)
3. Delete files in the server folder, for our sitation it will be in "/terraria/1449/Linux/":
rm System*
rm Mono*
rm monoconfig
rm mscorlib.dll 
4. Run server by command:  mono --server --gc=sgen -O=all /terraria/1449/Linux/TerrariaServer.exe
5. ??????
6. Profit
