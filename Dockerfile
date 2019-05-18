FROM ubuntu

RUN apt update

RUN apt install -y git

RUN apt install gcc

RUN apt install libjudy-dev

RUN git clone https://github.com/MNA2406/chasm_proj.git

RUN cd chasm_proj

RUN apt install make

RUN gcc -o chasm chasm.c

RUN ./chasm -l 30 -k 0 out/chasm < dictionary.txt
