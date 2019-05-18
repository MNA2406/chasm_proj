FROM ubuntu

RUN apt update

RUN apt install -y git libjudy-dev make 
RUN apt install build-essential -y 

RUN apt update
RUN git clone https://github.com/MNA2406/chasm_proj.git
WORKDIR chasm_proj
#RUN cd chasm_proj


#RUN gcc -o chasm chasm.c
RUN gcc -o chasm chasm.c -fomit-frame-pointer -O3 -lJudy

RUN mkdir out

RUN ./chasm -l 30 -k 0 out/chasm < dictionary.txt
