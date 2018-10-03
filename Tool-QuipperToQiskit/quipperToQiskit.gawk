BEGIN {FS = "[/(//), /]";  RS = "\n"; OFS=" \n "; p=0; g[p] = "_";
		circuit="qc";
		quantum_r="qr";
		classic_r="cr";}
/"not"\]\([0-9]*\) with nocontrol$/ {gateT = $2;
			 gateI = circuit ".x(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}
/"X\]\([0-9]*\) with nocontrol$/	{gateT = $2;
			 gateI = circuit ".x(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}
/"Y"\]\([0-9]*\) with nocontrol$/	{gateT = $2;
			 gateI = circuit ".y(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}
/"Z"\]\([0-9]*\) with nocontrol$/	{gateT = $2;
			 gateI = circuit ".z(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}
/"H"\]\([0-9]*\) with nocontrol$/	{gateT = $2;
			 gateI = circuit ".h(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}
/"S"\]\([0-9]*\) with nocontrol$/	{gateT = $2;
			 gateI = circuit ".s(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}
/"T"\]\([0-9]*\) with nocontrol$/	{gateT = $2;
			 gateI = circuit ".t(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}
/"S"\]\*\([0-9]*\) with nocontrol$/ {gateT = $2;
			 gateI = circuit ".sdg(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}
/"T"\]\*\([0-9]*\) with nocontrol$/ {gateT = $2;
			 gateI = circuit ".tdg(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}


/"not"\]\([0-9]*\)$/	{gateT = $2;
			 gateI = circuit ".x(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}
/"X"\]\([0-9]*\)$/	{gateT = $2;
			 gateI = circuit ".x(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}
/"Y"\]\([0-9]*\)$/	{gateT = $2;
			 gateI = circuit ".y(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}
/"Z"\]\([0-9]*\)$/	{gateT = $2;
			 gateI = circuit ".z(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}
/"H"\]\([0-9]*\)$/	{gateT = $2;
			 gateI = circuit ".h(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}
/"S"\]\([0-9]*\)$/	{gateT = $2;
			 gateI = circuit ".s(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}
/"T"\]\([0-9]*\)$/	{gateT = $2;
			 gateI = circuit ".t(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}
/"S"]\*\([0-9]*\)$/ {gateT = $2;
			 gateI = circuit ".sdg(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}
/"T"]\*\([0-9]*\)$/ {gateT = $2;
			 gateI = circuit ".tdg(" quantum_r "[" gateT;
			 gateF = "])";
			 gate = gateI gateF
			 print gate;}

/"not"\]\([0-9]*\) with control$/ {gateT = $2;
			   gateC = substr($6, 1, length($6)-1);
			   gateI = circuit ".cx(" quantum_r "[" gateC;
                           gateM = "]," quantum_r "[" gateT ;
			   gateF = "])";
			   gate = gateI gateM gateF;
			   print gate;}
/"X"\]\([0-9]*\) with control$/   {gateT = $2;
			   gateC = substr($6, 1, length($6)-1);
			   gateI = circuit ".cx(" quantum_r "[" gateC;
                           gateM = "]," quantum_r "[" gateT ;
			   gateF = "])";
			   gate = gateI gateM gateF;
			   print gate;}

/"not"\]\([0-9]*\) with controls=\[(\+|\-)[0-9]*\]$/ {gateT = $2;
			   gateC = substr($5, 12, length($5)-12); 
			   gateI = circuit ".cx(" quantum_r "[" gateC;
                           gateM = "]," quantum_r "[" gateT ;
			   gateF = "])";
			   gate = gateI gateM gateF;
			   print gate;}
/"X"\]\([0-9]*\) with controls=\[(\+|\-)[0-9]*\]$/   {gateT = $2;
			   gateC = substr($5, 12, length($5)-12);
			   gateI = circuit ".cx(" quantum_r "[" gateC;
                           gateM = "]," quantum_r "[" gateT ;
			   gateF = "])";
			   gate = gateI gateM gateF;
			   print gate;}

/"not"\]\([0-9]*\) with controls=\[(\+|\-)[0-9]*\] with nocontrol$/ {gateT = $2;
			   gateC = substr($5, 12, length($5)-12);
			   gateI = circuit ".cx(" quantum_r "[" gateC;
                           gateM = "]," quantum_r "[" gateT ;
			   gateF = "])";
			   gate = gateI gateM gateF;
			   print gate;}
/"X"\]\([0-9]*\) with controls=\[(\+|\-)[0-9]*\] with nocontrol$/   {gateT = $2;
			   gateC = substr($5, 12, length($5)-12);
			   gateI = circuit ".cx(" quantum_r "[" gateC;
                           gateM = "]," quantum_r "[" gateT ;
			   gateF = "])";
			   gate = gateI gateM gateF;
			   print gate;}

/"X"\]\([0-9]*\) with controls=\[(\+|\-)[0-9]*, (\+|\-)[0-9]*\]$/   {
			   simb1 = substr($5, 11, 1);
			   simb2 = substr($7, 1, length($7)-2);
				if (simb1 == "+" && simb2 == "+") {
				   gateT = $2;
				   gateC1 = substr($5, 12);
				   gateC2 = substr($7, 2, length($7)-2);
				   gateI = circuit ".cx(" quantum_r "[" gateC1;
        	                   gateM = "]," quantum_r "[" gateC2 ;
				   gateF = "],quantum_r[" gateT "])";
				   gate = gateI gateM gateF;
				   print gate; print "++";}
				else if (simb1 == "+" && simb2 == "-") {
				   gateT = $2;
				   gateC1 = substr($5, 12);
				   gateC2 = substr($7, 2, length($7)-2);
				   gateAux = circuit ".x(" quantum_r "[" gateC2 "])";
				   gateI = circuit ".cx(" quantum_r "[" gateC1;
        	                   gateM = "]," quantum_r "[" gateC2 ;
				   gateF = "]," quantum_r "[" gateT "])";
				   gate = gateI gateM gateF;
				   print gateAux;
				   print gate;
                                   print gateAux; print "+-";}
				else if (simb1 == "-" && simb2 == "+") {
				   gateT = $2;
				   gateC1 = substr($5, 12);
				   gateC2 = substr($7, 2, length($7)-2);
				   gateAux = circuit ".x(" quantum_r "[" gateC1 "])";
				   gateI = circuit ".cx( "quantum_r "[" gateC1;
        	                   gateM = "]," quantum_r "[" gateC2 ;
				   gateF = "]," quantum_r "[" gateT "])";
				   gate = gateI gateM gateF;
				   print gateAux;
				   print gate;
				   print gateAux; print "-+";}
				else if (simb1 == "-" && simb2 == "-") {
				   gateT = $2;
				   gateC1 = substr($5, 12);
				   gateC2 = substr($7, 2, length($7)-2);
				   gateAux1 = circuit ".x(" quantum_r "[" gateC1 "])";
				   gateAux2 = circuit ".x(" quantum_r "[" gateC2 "])";
				   gateI = circuit ".cx(" quantum_r "[" gateC1;
        	                   gateM = "]," quantum_r "[" gateC2 ;
				   gateF = "]," quantum_r "[" gateT "])";
				   gate = gateI gateM gateF;
				   print gateAux1;
				   print gateAux2;
				   print gate;
				   print gateAux1;
				   print gateAux2;}
			}

/"not"\]\([0-9]*\) with controls=\[(\+|\-)[0-9]*, (\+|\-)[0-9]*\]$/   {
			   simb1 = substr($5, 11, 1);
			   simb2 = substr($7, 1, length($7)-2);
				if (simb1 == "+" && simb2 == "+") {
				   gateT = $2;
				   gateC1 = substr($5, 12);
				   gateC2 = substr($7, 2, length($7)-2);
				   gateI = circuit ".cx(" quantum_r "[" gateC1;
        	                   gateM = "]," quantum_r "[" gateC2 ;
				   gateF = "]," quantum_r "[" gateT "])";
				   gate = gateI gateM gateF;
				   print gate; print "++";}
				else if (simb1 == "+" && simb2 == "-") {
				   gateT = $2;
				   gateC1 = substr($5, 12);
				   gateC2 = substr($7, 2, length($7)-2);
				   gateAux = circuit ".x(" quantum_r "[" gateC2 "])";
				   gateI = circuit ".cx(" quantum_r "[" gateC1;
        	                   gateM = "]," quantum_r "[" gateC2 ;
				   gateF = "]," quantum_r "[" gateT "])";
				   gate = gateI gateM gateF;
				   print gateAux;
				   print gate;
                                   print gateAux; print "+-";}
				else if (simb1 == "-" && simb2 == "+") {
				   gateT = $2;
				   gateC1 = substr($5, 12);
				   gateC2 = substr($7, 2, length($7)-2);
				   gateAux = circuit ".x(" quantum_r "[" gateC1 "])";
				   gateI = circuit".cx(" quantum_r "[" gateC1;
        	                   gateM = "]," quantum_r "[" gateC2 ;
				   gateF = "]," quantum_r "[" gateT "])";
				   gate = gateI gateM gateF;
				   print gateAux;
				   print gate;
				   print gateAux; print "-+";}
				else if (simb1 == "-" && simb2 == "-") {
				   gateT = $2;
				   gateC1 = substr($5, 12);
				   gateC2 = substr($7, 2, length($7)-2);
				   gateAux1 = circuit ".x(" quantum_r "[" gateC1 "])";
				   gateAux2 = circuit ".x(" quantum_r "[" gateC2 "])";
				   gateI = circuit ".cx(" quantum_r "[" gateC1;
        	                   gateM = "]," quantum_r "[" gateC2 ;
				   gateF = "]," quantum_r "[" gateT "])";
				   gate = gateI gateM gateF;
				   print gateAux1;
				   print gateAux2;
				   print gate;
				   print gateAux1;
				   print gateAux2;}
			}


/QTerm0/ { g[p]= $2;
	   p ++ ; 	   
	   }
/QInit0/ { gateB[0] = $2;	   
	   for (i in gateB){ 
		for (j in g){ 
			if (gateB[i] == g[j]){ 
				print circuit ".barrier(" quantum_r "[" gateB[i] "])";
				delete g[j];
			}
		}	   
	   }	   	
	  }

/QMeas/ { gateT = $2;
	  gateI = circuit ".measure(" quantum_r "[" gateT;
          gateF = "]," classical_r "[" gateT "])";
	  gate = gateI gateF;
	  print gate; }


/V"\]\*\([0-9]*/ {print "# the gate is not allowed"}
/V"\]\([0-9]*/	{print "# the gate is not allowed"}
/W"\]\*\([0-9]*/ {print "# the gate is not allowed"}
/W"\]\([0-9]*/	{print "# the gate is not allowed"}

END   {print "# don't forget update the number of qubits and bits registered"}
