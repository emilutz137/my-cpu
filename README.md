# Proiectul Meu 


## Descriere
Proiectul este un circuit ce urmeaza un model Von Neumann.

## Design
Pentru implementarea circuitului de mai jos, se vor implementa in fisiere separate modulele Counter, ROM, RegFile, MUX si ALU, apoi se vor instantia intr-un modul TOP, conform schemei de mai jos.

![Imagine Proiect](my-cpu/Picture1.png)

### Counter
Numarator pe 32 biti, cu reset sincron activ in 1. Numaratorul va numara doar daca enable este 1.


### RegFile
Set de 4 registre pe 4 biti implementat ca o memorie RAM 4x4b. Scrierea datei data_write la adresa addr_write se va face sincron, doar atunci cand write_en este 1. Citirea celor doi operanzi, op1 si op2, se va face asincron, de la adresele addr_read1, respectiv addr_read2.

### MUX
Multiplexor cu patru intrari pe 4 biti.


### ALU
Unitate aritmetico-logica ce realizeaza urmatoarele operatii:
(carry, result) = in0+ in1 cand opcode este 2'b00;
result = in0 - inl cand opcode este 2'b01;
result = in0 & in1 cand opcode este 2'b10;
result = 0 cand opcode este 2'b11;


### ROM
Memorie ROM 4x15b ce contine instructiunile pentru a comanda intregul circuit. La cele 4 adrese ale sale va contine urmatoarea secventa de instructiuni:
La adresa 0: Instructiune pe 15 biti ce comanda RO = 4'd10 (scrierea la adresa 0 a RegFile a datei 4'd10).
La adresa 1: Instructiune pe 15 biti ce comanda R1 = data_in (scrierea la adresa 1 a RegFile a datei de intrare de pe data_in).
La adresa 2: Instructiune pe 15 biti ce comanda R2 = R0+ R1 (scrierea la adresa 2 a RegFile a rezultatului operatiei RO+ R1).
La adresa 3: Instructiune pe 15 biti ce comanda R3 = RO & R1 (scrierea la adresa 3 a RegFile a rezultatului operatiei RO & R1).


### TOP
Modul in care sunt instantiate si conectate toate celelelalte module conform schemei.

---
© 2024 Numele Tău
