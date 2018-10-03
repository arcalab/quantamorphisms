# Quipper To QISKit


This project answer the need to translate the large circuits deloped in Quipper to the Python code that describes the QISKit circuit. 



### Prerequisites


To run this tool you will need to install gawk (https://www.gnu.org/software/gawk/):

*** Linux **  (https://www.gnu.org/software/gawk/manual/html_node/Quick-Installation.html)

*** Windows ** (http://gnuwin32.sourceforge.net/packages/gawk.htm) 

*** Mac OS ** (http://macappstore.org/gawk/)



## Running the tests


This version is only prepared to translate standard gates. 
If our Quipper circuit includes nonstandard gates it may be best to decompose the circuit (see https://www.mathstat.dal.ca/~selinger/quipper/doc/QuipperLib-Decompose.html for more information about circuit decomposition).


After securing this, you can print the text circuit using 


```
print_generic ASCII (circuit) 
```


Using this function you can save the printed quipper circuit in a file, let's call it: 'quipper_circuit.txt'.


Finally to run our tool you only need to do:


```
gawk -f quipperToQiskit.gawk quipper_circuit.txt > qiskit_circuit.txt
```


The output is a text file with the translated circuit.



## Deployment

This version is prepared to translate:

* Pauli gates (X, Y and Z)

* Hadamard gate

* CNOT

* Toffoli (CCNOT)

* S, S^{\dagger}, T and T^{\dagger}



## Contributing

?


Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.



## Versioning



Version 1.0.0 - September 2018



## Authors



***Ana Neri** - [AnaNeri](https://github.com/AnaNeri)

***Afonso Rodrigues** 



## License


?

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
