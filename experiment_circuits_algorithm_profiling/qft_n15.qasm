version 1.0

qubits 15

._qft_n15
  h q[0]
  rz q[1], 0.785398163397448
  cnot q[1], q[0]
  rz q[0], -0.785398163397448
  cnot q[1], q[0]
  rz q[0], 0.785398163397448
  h q[1]
  rz q[2], 0.392699081698724
  cnot q[2], q[0]
  rz q[0], -0.392699081698724
  cnot q[2], q[0]
  rz q[0], 0.392699081698724
  rz q[2], 0.785398163397448
  cnot q[2], q[1]
  rz q[1], -0.785398163397448
  cnot q[2], q[1]
  rz q[1], 0.785398163397448
  h q[2]
  rz q[3], 0.196349540849362
  cnot q[3], q[0]
  rz q[0], -0.196349540849362
  cnot q[3], q[0]
  rz q[0], 0.196349540849362
  rz q[3], 0.392699081698724
  cnot q[3], q[1]
  rz q[1], -0.392699081698724
  cnot q[3], q[1]
  rz q[1], 0.392699081698724
  rz q[3], 0.785398163397448
  cnot q[3], q[2]
  rz q[2], -0.785398163397448
  cnot q[3], q[2]
  rz q[2], 0.785398163397448
  h q[3]
  rz q[4], 0.0981747704246810
  cnot q[4], q[0]
  rz q[0], -0.0981747704246810
  cnot q[4], q[0]
  rz q[0], 0.0981747704246810
  rz q[4], 0.196349540849362
  cnot q[4], q[1]
  rz q[1], -0.196349540849362
  cnot q[4], q[1]
  rz q[1], 0.196349540849362
  rz q[4], 0.392699081698724
  cnot q[4], q[2]
  rz q[2], -0.392699081698724
  cnot q[4], q[2]
  rz q[2], 0.392699081698724
  rz q[4], 0.785398163397448
  cnot q[4], q[3]
  rz q[3], -0.785398163397448
  cnot q[4], q[3]
  rz q[3], 0.785398163397448
  h q[4]
  rz q[5], 0.0490873852123405
  cnot q[5], q[0]
  rz q[0], -0.0490873852123405
  cnot q[5], q[0]
  rz q[0], 0.0490873852123405
  rz q[5], 0.0981747704246810
  cnot q[5], q[1]
  rz q[1], -0.0981747704246810
  cnot q[5], q[1]
  rz q[1], 0.0981747704246810
  rz q[5], 0.196349540849362
  cnot q[5], q[2]
  rz q[2], -0.196349540849362
  cnot q[5], q[2]
  rz q[2], 0.196349540849362
  rz q[5], 0.392699081698724
  cnot q[5], q[3]
  rz q[3], -0.392699081698724
  cnot q[5], q[3]
  rz q[3], 0.392699081698724
  rz q[5], 0.785398163397448
  cnot q[5], q[4]
  rz q[4], -0.785398163397448
  cnot q[5], q[4]
  rz q[4], 0.785398163397448
  h q[5]
  rz q[6], 0.0245436926061703
  cnot q[6], q[0]
  rz q[0], -0.0245436926061703
  cnot q[6], q[0]
  rz q[0], 0.0245436926061703
  rz q[6], 0.0490873852123405
  cnot q[6], q[1]
  rz q[1], -0.0490873852123405
  cnot q[6], q[1]
  rz q[1], 0.0490873852123405
  rz q[6], 0.0981747704246810
  cnot q[6], q[2]
  rz q[2], -0.0981747704246810
  cnot q[6], q[2]
  rz q[2], 0.0981747704246810
  rz q[6], 0.196349540849362
  cnot q[6], q[3]
  rz q[3], -0.196349540849362
  cnot q[6], q[3]
  rz q[3], 0.196349540849362
  rz q[6], 0.392699081698724
  cnot q[6], q[4]
  rz q[4], -0.392699081698724
  cnot q[6], q[4]
  rz q[4], 0.392699081698724
  rz q[6], 0.785398163397448
  cnot q[6], q[5]
  rz q[5], -0.785398163397448
  cnot q[6], q[5]
  rz q[5], 0.785398163397448
  h q[6]
  rz q[7], 0.0122718463030851
  cnot q[7], q[0]
  rz q[0], -0.0122718463030851
  cnot q[7], q[0]
  rz q[0], 0.0122718463030851
  rz q[7], 0.0245436926061703
  cnot q[7], q[1]
  rz q[1], -0.0245436926061703
  cnot q[7], q[1]
  rz q[1], 0.0245436926061703
  rz q[7], 0.0490873852123405
  cnot q[7], q[2]
  rz q[2], -0.0490873852123405
  cnot q[7], q[2]
  rz q[2], 0.0490873852123405
  rz q[7], 0.0981747704246810
  cnot q[7], q[3]
  rz q[3], -0.0981747704246810
  cnot q[7], q[3]
  rz q[3], 0.0981747704246810
  rz q[7], 0.196349540849362
  cnot q[7], q[4]
  rz q[4], -0.196349540849362
  cnot q[7], q[4]
  rz q[4], 0.196349540849362
  rz q[7], 0.392699081698724
  cnot q[7], q[5]
  rz q[5], -0.392699081698724
  cnot q[7], q[5]
  rz q[5], 0.392699081698724
  rz q[7], 0.785398163397448
  cnot q[7], q[6]
  rz q[6], -0.785398163397448
  cnot q[7], q[6]
  rz q[6], 0.785398163397448
  h q[7]
  rz q[8], 0.00613592315154256
  cnot q[8], q[0]
  rz q[0], -0.00613592315154256
  cnot q[8], q[0]
  rz q[0], 0.00613592315154256
  rz q[8], 0.0122718463030851
  cnot q[8], q[1]
  rz q[1], -0.0122718463030851
  cnot q[8], q[1]
  rz q[1], 0.0122718463030851
  rz q[8], 0.0245436926061703
  cnot q[8], q[2]
  rz q[2], -0.0245436926061703
  cnot q[8], q[2]
  rz q[2], 0.0245436926061703
  rz q[8], 0.0490873852123405
  cnot q[8], q[3]
  rz q[3], -0.0490873852123405
  cnot q[8], q[3]
  rz q[3], 0.0490873852123405
  rz q[8], 0.0981747704246810
  cnot q[8], q[4]
  rz q[4], -0.0981747704246810
  cnot q[8], q[4]
  rz q[4], 0.0981747704246810
  rz q[8], 0.196349540849362
  cnot q[8], q[5]
  rz q[5], -0.196349540849362
  cnot q[8], q[5]
  rz q[5], 0.196349540849362
  rz q[8], 0.392699081698724
  cnot q[8], q[6]
  rz q[6], -0.392699081698724
  cnot q[8], q[6]
  rz q[6], 0.392699081698724
  rz q[8], 0.785398163397448
  cnot q[8], q[7]
  rz q[7], -0.785398163397448
  cnot q[8], q[7]
  rz q[7], 0.785398163397448
  h q[8]
  rz q[9], 0.00306796157577128
  cnot q[9], q[0]
  rz q[0], -0.00306796157577128
  cnot q[9], q[0]
  rz q[0], 0.00306796157577128
  rz q[9], 0.00613592315154256
  cnot q[9], q[1]
  rz q[1], -0.00613592315154256
  cnot q[9], q[1]
  rz q[1], 0.00613592315154256
  rz q[9], 0.0122718463030851
  cnot q[9], q[2]
  rz q[2], -0.0122718463030851
  cnot q[9], q[2]
  rz q[2], 0.0122718463030851
  rz q[9], 0.0245436926061703
  cnot q[9], q[3]
  rz q[3], -0.0245436926061703
  cnot q[9], q[3]
  rz q[3], 0.0245436926061703
  rz q[9], 0.0490873852123405
  cnot q[9], q[4]
  rz q[4], -0.0490873852123405
  cnot q[9], q[4]
  rz q[4], 0.0490873852123405
  rz q[9], 0.0981747704246810
  cnot q[9], q[5]
  rz q[5], -0.0981747704246810
  cnot q[9], q[5]
  rz q[5], 0.0981747704246810
  rz q[9], 0.196349540849362
  cnot q[9], q[6]
  rz q[6], -0.196349540849362
  cnot q[9], q[6]
  rz q[6], 0.196349540849362
  rz q[9], 0.392699081698724
  cnot q[9], q[7]
  rz q[7], -0.392699081698724
  cnot q[9], q[7]
  rz q[7], 0.392699081698724
  rz q[9], 0.785398163397448
  cnot q[9], q[8]
  rz q[8], -0.785398163397448
  cnot q[9], q[8]
  rz q[8], 0.785398163397448
  h q[9]
  rz q[10], 0.00153398078788564
  cnot q[10], q[0]
  rz q[0], -0.00153398078788564
  cnot q[10], q[0]
  rz q[0], 0.00153398078788564
  rz q[10], 0.00306796157577128
  cnot q[10], q[1]
  rz q[1], -0.00306796157577128
  cnot q[10], q[1]
  rz q[1], 0.00306796157577128
  rz q[10], 0.00613592315154256
  cnot q[10], q[2]
  rz q[2], -0.00613592315154256
  cnot q[10], q[2]
  rz q[2], 0.00613592315154256
  rz q[10], 0.0122718463030851
  cnot q[10], q[3]
  rz q[3], -0.0122718463030851
  cnot q[10], q[3]
  rz q[3], 0.0122718463030851
  rz q[10], 0.0245436926061703
  cnot q[10], q[4]
  rz q[4], -0.0245436926061703
  cnot q[10], q[4]
  rz q[4], 0.0245436926061703
  rz q[10], 0.0490873852123405
  cnot q[10], q[5]
  rz q[5], -0.0490873852123405
  cnot q[10], q[5]
  rz q[5], 0.0490873852123405
  rz q[10], 0.0981747704246810
  cnot q[10], q[6]
  rz q[6], -0.0981747704246810
  cnot q[10], q[6]
  rz q[6], 0.0981747704246810
  rz q[10], 0.196349540849362
  cnot q[10], q[7]
  rz q[7], -0.196349540849362
  cnot q[10], q[7]
  rz q[7], 0.196349540849362
  rz q[10], 0.392699081698724
  cnot q[10], q[8]
  rz q[8], -0.392699081698724
  cnot q[10], q[8]
  rz q[8], 0.392699081698724
  rz q[10], 0.785398163397448
  cnot q[10], q[9]
  rz q[9], -0.785398163397448
  cnot q[10], q[9]
  rz q[9], 0.785398163397448
  h q[10]
  rz q[11], 0.000766990393942821
  cnot q[11], q[0]
  rz q[0], -0.000766990393942821
  cnot q[11], q[0]
  rz q[0], 0.000766990393942821
  rz q[11], 0.00153398078788564
  cnot q[11], q[1]
  rz q[1], -0.00153398078788564
  cnot q[11], q[1]
  rz q[1], 0.00153398078788564
  rz q[11], 0.00306796157577128
  cnot q[11], q[2]
  rz q[2], -0.00306796157577128
  cnot q[11], q[2]
  rz q[2], 0.00306796157577128
  rz q[11], 0.00613592315154256
  cnot q[11], q[3]
  rz q[3], -0.00613592315154256
  cnot q[11], q[3]
  rz q[3], 0.00613592315154256
  rz q[11], 0.0122718463030851
  cnot q[11], q[4]
  rz q[4], -0.0122718463030851
  cnot q[11], q[4]
  rz q[4], 0.0122718463030851
  rz q[11], 0.0245436926061703
  cnot q[11], q[5]
  rz q[5], -0.0245436926061703
  cnot q[11], q[5]
  rz q[5], 0.0245436926061703
  rz q[11], 0.0490873852123405
  cnot q[11], q[6]
  rz q[6], -0.0490873852123405
  cnot q[11], q[6]
  rz q[6], 0.0490873852123405
  rz q[11], 0.0981747704246810
  cnot q[11], q[7]
  rz q[7], -0.0981747704246810
  cnot q[11], q[7]
  rz q[7], 0.0981747704246810
  rz q[11], 0.196349540849362
  cnot q[11], q[8]
  rz q[8], -0.196349540849362
  cnot q[11], q[8]
  rz q[8], 0.196349540849362
  rz q[11], 0.392699081698724
  cnot q[11], q[9]
  rz q[9], -0.392699081698724
  cnot q[11], q[9]
  rz q[9], 0.392699081698724
  rz q[11], 0.785398163397448
  cnot q[11], q[10]
  rz q[10], -0.785398163397448
  cnot q[11], q[10]
  rz q[10], 0.785398163397448
  h q[11]
  rz q[12], 0.000383495196971410
  cnot q[12], q[0]
  rz q[0], -0.000383495196971410
  cnot q[12], q[0]
  rz q[0], 0.000383495196971410
  rz q[12], 0.000766990393942821
  cnot q[12], q[1]
  rz q[1], -0.000766990393942821
  cnot q[12], q[1]
  rz q[1], 0.000766990393942821
  rz q[12], 0.00153398078788564
  cnot q[12], q[2]
  rz q[2], -0.00153398078788564
  cnot q[12], q[2]
  rz q[2], 0.00153398078788564
  rz q[12], 0.00306796157577128
  cnot q[12], q[3]
  rz q[3], -0.00306796157577128
  cnot q[12], q[3]
  rz q[3], 0.00306796157577128
  rz q[12], 0.00613592315154256
  cnot q[12], q[4]
  rz q[4], -0.00613592315154256
  cnot q[12], q[4]
  rz q[4], 0.00613592315154256
  rz q[12], 0.0122718463030851
  cnot q[12], q[5]
  rz q[5], -0.0122718463030851
  cnot q[12], q[5]
  rz q[5], 0.0122718463030851
  rz q[12], 0.0245436926061703
  cnot q[12], q[6]
  rz q[6], -0.0245436926061703
  cnot q[12], q[6]
  rz q[6], 0.0245436926061703
  rz q[12], 0.0490873852123405
  cnot q[12], q[7]
  rz q[7], -0.0490873852123405
  cnot q[12], q[7]
  rz q[7], 0.0490873852123405
  rz q[12], 0.0981747704246810
  cnot q[12], q[8]
  rz q[8], -0.0981747704246810
  cnot q[12], q[8]
  rz q[8], 0.0981747704246810
  rz q[12], 0.196349540849362
  cnot q[12], q[9]
  rz q[9], -0.196349540849362
  cnot q[12], q[9]
  rz q[9], 0.196349540849362
  rz q[12], 0.392699081698724
  cnot q[12], q[10]
  rz q[10], -0.392699081698724
  cnot q[12], q[10]
  rz q[10], 0.392699081698724
  rz q[12], 0.785398163397448
  cnot q[12], q[11]
  rz q[11], -0.785398163397448
  cnot q[12], q[11]
  rz q[11], 0.785398163397448
  h q[12]
  rz q[13], 0.000191747598485705
  cnot q[13], q[0]
  rz q[0], -0.000191747598485705
  cnot q[13], q[0]
  rz q[0], 0.000191747598485705
  rz q[13], 0.000383495196971410
  cnot q[13], q[1]
  rz q[1], -0.000383495196971410
  cnot q[13], q[1]
  rz q[1], 0.000383495196971410
  rz q[13], 0.000766990393942821
  cnot q[13], q[2]
  rz q[2], -0.000766990393942821
  cnot q[13], q[2]
  rz q[2], 0.000766990393942821
  rz q[13], 0.00153398078788564
  cnot q[13], q[3]
  rz q[3], -0.00153398078788564
  cnot q[13], q[3]
  rz q[3], 0.00153398078788564
  rz q[13], 0.00306796157577128
  cnot q[13], q[4]
  rz q[4], -0.00306796157577128
  cnot q[13], q[4]
  rz q[4], 0.00306796157577128
  rz q[13], 0.00613592315154256
  cnot q[13], q[5]
  rz q[5], -0.00613592315154256
  cnot q[13], q[5]
  rz q[5], 0.00613592315154256
  rz q[13], 0.0122718463030851
  cnot q[13], q[6]
  rz q[6], -0.0122718463030851
  cnot q[13], q[6]
  rz q[6], 0.0122718463030851
  rz q[13], 0.0245436926061703
  cnot q[13], q[7]
  rz q[7], -0.0245436926061703
  cnot q[13], q[7]
  rz q[7], 0.0245436926061703
  rz q[13], 0.0490873852123405
  cnot q[13], q[8]
  rz q[8], -0.0490873852123405
  cnot q[13], q[8]
  rz q[8], 0.0490873852123405
  rz q[13], 0.0981747704246810
  cnot q[13], q[9]
  rz q[9], -0.0981747704246810
  cnot q[13], q[9]
  rz q[9], 0.0981747704246810
  rz q[13], 0.196349540849362
  cnot q[13], q[10]
  rz q[10], -0.196349540849362
  cnot q[13], q[10]
  rz q[10], 0.196349540849362
  rz q[13], 0.392699081698724
  cnot q[13], q[11]
  rz q[11], -0.392699081698724
  cnot q[13], q[11]
  rz q[11], 0.392699081698724
  rz q[13], 0.785398163397448
  cnot q[13], q[12]
  rz q[12], -0.785398163397448
  cnot q[13], q[12]
  rz q[12], 0.785398163397448
  h q[13]
  rz q[14], 9.58737992428526e-5
  cnot q[14], q[0]
  rz q[0], -9.58737992428526e-5
  cnot q[14], q[0]
  rz q[0], 9.58737992428526e-5
  rz q[14], 0.000191747598485705
  cnot q[14], q[1]
  rz q[1], -0.000191747598485705
  cnot q[14], q[1]
  rz q[1], 0.000191747598485705
  rz q[14], 0.000383495196971410
  cnot q[14], q[2]
  rz q[2], -0.000383495196971410
  cnot q[14], q[2]
  rz q[2], 0.000383495196971410
  rz q[14], 0.000766990393942821
  cnot q[14], q[3]
  rz q[3], -0.000766990393942821
  cnot q[14], q[3]
  rz q[3], 0.000766990393942821
  rz q[14], 0.00153398078788564
  cnot q[14], q[4]
  rz q[4], -0.00153398078788564
  cnot q[14], q[4]
  rz q[4], 0.00153398078788564
  rz q[14], 0.00306796157577128
  cnot q[14], q[5]
  rz q[5], -0.00306796157577128
  cnot q[14], q[5]
  rz q[5], 0.00306796157577128
  rz q[14], 0.00613592315154256
  cnot q[14], q[6]
  rz q[6], -0.00613592315154256
  cnot q[14], q[6]
  rz q[6], 0.00613592315154256
  rz q[14], 0.0122718463030851
  cnot q[14], q[7]
  rz q[7], -0.0122718463030851
  cnot q[14], q[7]
  rz q[7], 0.0122718463030851
  rz q[14], 0.0245436926061703
  cnot q[14], q[8]
  rz q[8], -0.0245436926061703
  cnot q[14], q[8]
  rz q[8], 0.0245436926061703
  rz q[14], 0.0490873852123405
  cnot q[14], q[9]
  rz q[9], -0.0490873852123405
  cnot q[14], q[9]
  rz q[9], 0.0490873852123405
  rz q[14], 0.0981747704246810
  cnot q[14], q[10]
  rz q[10], -0.0981747704246810
  cnot q[14], q[10]
  rz q[10], 0.0981747704246810
  rz q[14], 0.196349540849362
  cnot q[14], q[11]
  rz q[11], -0.196349540849362
  cnot q[14], q[11]
  rz q[11], 0.196349540849362
  rz q[14], 0.392699081698724
  cnot q[14], q[12]
  rz q[12], -0.392699081698724
  cnot q[14], q[12]
  rz q[12], 0.392699081698724
  rz q[14], 0.785398163397448
  cnot q[14], q[13]
  rz q[13], -0.785398163397448
  cnot q[14], q[13]
  rz q[13], 0.785398163397448
  h q[14]
 