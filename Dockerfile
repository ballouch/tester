FROM mono
EXPOSE 4321
ADD . /src
WORKDIR /src
RUN xbuild /p:Configuration=Release
CMD [ "mono", "/src/HelloWorld/bin/Release/HelloWorld.exe" ]
