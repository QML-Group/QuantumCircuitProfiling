# Generated by OpenQL 0.11.1 for program grover_q32_1
version 1.0

qubits 32


.grover_q32_1
    x q[16]
    x q[0]
    ym90 q[0]
    x q[1]
    ym90 q[1]
    x q[2]
    ym90 q[2]
    x q[3]
    ym90 q[3]
    x q[4]
    ym90 q[4]
    x q[5]
    ym90 q[5]
    x q[6]
    ym90 q[6]
    x q[7]
    ym90 q[7]
    x q[8]
    ym90 q[8]
    x q[9]
    ym90 q[9]
    x q[10]
    ym90 q[10]
    x q[11]
    ym90 q[11]
    x q[12]
    ym90 q[12]
    x q[13]
    ym90 q[13]
    x q[14]
    ym90 q[14]
    x q[15]
    ym90 q[15]
    x q[16]
    ym90 q[16]
    x q[0]
    x q[1]
    x q[2]
    x q[3]
    x q[4]
    x q[5]
    x q[6]
    x q[7]
    x q[8]
    x q[9]
    x q[10]
    x q[11]
    x q[12]
    x q[13]
    x q[14]
    x q[15]
    x q[17]
    ym90 q[17]
    cnot q[1], q[17]
    tdag q[17]
    cnot q[0], q[17]
    t q[17]
    cnot q[1], q[17]
    tdag q[17]
    cnot q[0], q[17]
    t q[1]
    t q[17]
    x q[17]
    ym90 q[17]
    cnot q[0], q[1]
    tdag q[1]
    t q[0]
    cnot q[0], q[1]
    x q[18]
    ym90 q[18]
    cnot q[17], q[18]
    tdag q[18]
    cnot q[2], q[18]
    t q[18]
    cnot q[17], q[18]
    tdag q[18]
    cnot q[2], q[18]
    t q[17]
    t q[18]
    x q[18]
    ym90 q[18]
    cnot q[2], q[17]
    tdag q[17]
    t q[2]
    cnot q[2], q[17]
    x q[19]
    ym90 q[19]
    cnot q[18], q[19]
    tdag q[19]
    cnot q[3], q[19]
    t q[19]
    cnot q[18], q[19]
    tdag q[19]
    cnot q[3], q[19]
    t q[18]
    t q[19]
    x q[19]
    ym90 q[19]
    cnot q[3], q[18]
    tdag q[18]
    t q[3]
    cnot q[3], q[18]
    x q[20]
    ym90 q[20]
    cnot q[19], q[20]
    tdag q[20]
    cnot q[4], q[20]
    t q[20]
    cnot q[19], q[20]
    tdag q[20]
    cnot q[4], q[20]
    t q[19]
    t q[20]
    x q[20]
    ym90 q[20]
    cnot q[4], q[19]
    tdag q[19]
    t q[4]
    cnot q[4], q[19]
    x q[21]
    ym90 q[21]
    cnot q[20], q[21]
    tdag q[21]
    cnot q[5], q[21]
    t q[21]
    cnot q[20], q[21]
    tdag q[21]
    cnot q[5], q[21]
    t q[20]
    t q[21]
    x q[21]
    ym90 q[21]
    cnot q[5], q[20]
    tdag q[20]
    t q[5]
    cnot q[5], q[20]
    x q[22]
    ym90 q[22]
    cnot q[21], q[22]
    tdag q[22]
    cnot q[6], q[22]
    t q[22]
    cnot q[21], q[22]
    tdag q[22]
    cnot q[6], q[22]
    t q[21]
    t q[22]
    x q[22]
    ym90 q[22]
    cnot q[6], q[21]
    tdag q[21]
    t q[6]
    cnot q[6], q[21]
    x q[23]
    ym90 q[23]
    cnot q[22], q[23]
    tdag q[23]
    cnot q[7], q[23]
    t q[23]
    cnot q[22], q[23]
    tdag q[23]
    cnot q[7], q[23]
    t q[22]
    t q[23]
    x q[23]
    ym90 q[23]
    cnot q[7], q[22]
    tdag q[22]
    t q[7]
    cnot q[7], q[22]
    x q[24]
    ym90 q[24]
    cnot q[23], q[24]
    tdag q[24]
    cnot q[8], q[24]
    t q[24]
    cnot q[23], q[24]
    tdag q[24]
    cnot q[8], q[24]
    t q[23]
    t q[24]
    x q[24]
    ym90 q[24]
    cnot q[8], q[23]
    tdag q[23]
    t q[8]
    cnot q[8], q[23]
    x q[25]
    ym90 q[25]
    cnot q[24], q[25]
    tdag q[25]
    cnot q[9], q[25]
    t q[25]
    cnot q[24], q[25]
    tdag q[25]
    cnot q[9], q[25]
    t q[24]
    t q[25]
    x q[25]
    ym90 q[25]
    cnot q[9], q[24]
    tdag q[24]
    t q[9]
    cnot q[9], q[24]
    x q[26]
    ym90 q[26]
    cnot q[25], q[26]
    tdag q[26]
    cnot q[10], q[26]
    t q[26]
    cnot q[25], q[26]
    tdag q[26]
    cnot q[10], q[26]
    t q[25]
    t q[26]
    x q[26]
    ym90 q[26]
    cnot q[10], q[25]
    tdag q[25]
    t q[10]
    cnot q[10], q[25]
    x q[27]
    ym90 q[27]
    cnot q[26], q[27]
    tdag q[27]
    cnot q[11], q[27]
    t q[27]
    cnot q[26], q[27]
    tdag q[27]
    cnot q[11], q[27]
    t q[26]
    t q[27]
    x q[27]
    ym90 q[27]
    cnot q[11], q[26]
    tdag q[26]
    t q[11]
    cnot q[11], q[26]
    x q[28]
    ym90 q[28]
    cnot q[27], q[28]
    tdag q[28]
    cnot q[12], q[28]
    t q[28]
    cnot q[27], q[28]
    tdag q[28]
    cnot q[12], q[28]
    t q[27]
    t q[28]
    x q[28]
    ym90 q[28]
    cnot q[12], q[27]
    tdag q[27]
    t q[12]
    cnot q[12], q[27]
    x q[29]
    ym90 q[29]
    cnot q[28], q[29]
    tdag q[29]
    cnot q[13], q[29]
    t q[29]
    cnot q[28], q[29]
    tdag q[29]
    cnot q[13], q[29]
    t q[28]
    t q[29]
    x q[29]
    ym90 q[29]
    cnot q[13], q[28]
    tdag q[28]
    t q[13]
    cnot q[13], q[28]
    x q[30]
    ym90 q[30]
    cnot q[29], q[30]
    tdag q[30]
    cnot q[14], q[30]
    t q[30]
    cnot q[29], q[30]
    tdag q[30]
    cnot q[14], q[30]
    t q[29]
    t q[30]
    x q[30]
    ym90 q[30]
    cnot q[14], q[29]
    tdag q[29]
    t q[14]
    cnot q[14], q[29]
    x q[16]
    ym90 q[16]
    cnot q[15], q[16]
    tdag q[16]
    cnot q[30], q[16]
    t q[16]
    cnot q[15], q[16]
    tdag q[16]
    cnot q[30], q[16]
    t q[15]
    t q[16]
    x q[16]
    ym90 q[16]
    cnot q[30], q[15]
    tdag q[15]
    t q[30]
    cnot q[30], q[15]
    x q[30]
    ym90 q[30]
    cnot q[29], q[30]
    tdag q[30]
    cnot q[14], q[30]
    t q[30]
    cnot q[29], q[30]
    tdag q[30]
    cnot q[14], q[30]
    t q[29]
    t q[30]
    x q[30]
    ym90 q[30]
    cnot q[14], q[29]
    tdag q[29]
    t q[14]
    cnot q[14], q[29]
    x q[29]
    ym90 q[29]
    cnot q[28], q[29]
    tdag q[29]
    cnot q[13], q[29]
    t q[29]
    cnot q[28], q[29]
    tdag q[29]
    cnot q[13], q[29]
    t q[28]
    t q[29]
    x q[29]
    ym90 q[29]
    cnot q[13], q[28]
    tdag q[28]
    t q[13]
    cnot q[13], q[28]
    x q[28]
    ym90 q[28]
    cnot q[27], q[28]
    tdag q[28]
    cnot q[12], q[28]
    t q[28]
    cnot q[27], q[28]
    tdag q[28]
    cnot q[12], q[28]
    t q[27]
    t q[28]
    x q[28]
    ym90 q[28]
    cnot q[12], q[27]
    tdag q[27]
    t q[12]
    cnot q[12], q[27]
    x q[27]
    ym90 q[27]
    cnot q[26], q[27]
    tdag q[27]
    cnot q[11], q[27]
    t q[27]
    cnot q[26], q[27]
    tdag q[27]
    cnot q[11], q[27]
    t q[26]
    t q[27]
    x q[27]
    ym90 q[27]
    cnot q[11], q[26]
    tdag q[26]
    t q[11]
    cnot q[11], q[26]
    x q[26]
    ym90 q[26]
    cnot q[25], q[26]
    tdag q[26]
    cnot q[10], q[26]
    t q[26]
    cnot q[25], q[26]
    tdag q[26]
    cnot q[10], q[26]
    t q[25]
    t q[26]
    x q[26]
    ym90 q[26]
    cnot q[10], q[25]
    tdag q[25]
    t q[10]
    cnot q[10], q[25]
    x q[25]
    ym90 q[25]
    cnot q[24], q[25]
    tdag q[25]
    cnot q[9], q[25]
    t q[25]
    cnot q[24], q[25]
    tdag q[25]
    cnot q[9], q[25]
    t q[24]
    t q[25]
    x q[25]
    ym90 q[25]
    cnot q[9], q[24]
    tdag q[24]
    t q[9]
    cnot q[9], q[24]
    x q[24]
    ym90 q[24]
    cnot q[23], q[24]
    tdag q[24]
    cnot q[8], q[24]
    t q[24]
    cnot q[23], q[24]
    tdag q[24]
    cnot q[8], q[24]
    t q[23]
    t q[24]
    x q[24]
    ym90 q[24]
    cnot q[8], q[23]
    tdag q[23]
    t q[8]
    cnot q[8], q[23]
    x q[23]
    ym90 q[23]
    cnot q[22], q[23]
    tdag q[23]
    cnot q[7], q[23]
    t q[23]
    cnot q[22], q[23]
    tdag q[23]
    cnot q[7], q[23]
    t q[22]
    t q[23]
    x q[23]
    ym90 q[23]
    cnot q[7], q[22]
    tdag q[22]
    t q[7]
    cnot q[7], q[22]
    x q[22]
    ym90 q[22]
    cnot q[21], q[22]
    tdag q[22]
    cnot q[6], q[22]
    t q[22]
    cnot q[21], q[22]
    tdag q[22]
    cnot q[6], q[22]
    t q[21]
    t q[22]
    x q[22]
    ym90 q[22]
    cnot q[6], q[21]
    tdag q[21]
    t q[6]
    cnot q[6], q[21]
    x q[21]
    ym90 q[21]
    cnot q[20], q[21]
    tdag q[21]
    cnot q[5], q[21]
    t q[21]
    cnot q[20], q[21]
    tdag q[21]
    cnot q[5], q[21]
    t q[20]
    t q[21]
    x q[21]
    ym90 q[21]
    cnot q[5], q[20]
    tdag q[20]
    t q[5]
    cnot q[5], q[20]
    x q[20]
    ym90 q[20]
    cnot q[19], q[20]
    tdag q[20]
    cnot q[4], q[20]
    t q[20]
    cnot q[19], q[20]
    tdag q[20]
    cnot q[4], q[20]
    t q[19]
    t q[20]
    x q[20]
    ym90 q[20]
    cnot q[4], q[19]
    tdag q[19]
    t q[4]
    cnot q[4], q[19]
    x q[19]
    ym90 q[19]
    cnot q[18], q[19]
    tdag q[19]
    cnot q[3], q[19]
    t q[19]
    cnot q[18], q[19]
    tdag q[19]
    cnot q[3], q[19]
    t q[18]
    t q[19]
    x q[19]
    ym90 q[19]
    cnot q[3], q[18]
    tdag q[18]
    t q[3]
    cnot q[3], q[18]
    x q[18]
    ym90 q[18]
    cnot q[17], q[18]
    tdag q[18]
    cnot q[2], q[18]
    t q[18]
    cnot q[17], q[18]
    tdag q[18]
    cnot q[2], q[18]
    t q[17]
    t q[18]
    x q[18]
    ym90 q[18]
    cnot q[2], q[17]
    tdag q[17]
    t q[2]
    cnot q[2], q[17]
    x q[17]
    ym90 q[17]
    cnot q[1], q[17]
    tdag q[17]
    cnot q[0], q[17]
    t q[17]
    cnot q[1], q[17]
    tdag q[17]
    cnot q[0], q[17]
    t q[1]
    t q[17]
    x q[17]
    ym90 q[17]
    cnot q[0], q[1]
    tdag q[1]
    t q[0]
    cnot q[0], q[1]
    x q[0]
    x q[1]
    x q[2]
    x q[3]
    x q[4]
    x q[5]
    x q[6]
    x q[7]
    x q[8]
    x q[9]
    x q[10]
    x q[11]
    x q[12]
    x q[13]
    x q[14]
    x q[15]
    x q[0]
    ym90 q[0]
    x q[1]
    ym90 q[1]
    x q[2]
    ym90 q[2]
    x q[3]
    ym90 q[3]
    x q[4]
    ym90 q[4]
    x q[5]
    ym90 q[5]
    x q[6]
    ym90 q[6]
    x q[7]
    ym90 q[7]
    x q[8]
    ym90 q[8]
    x q[9]
    ym90 q[9]
    x q[10]
    ym90 q[10]
    x q[11]
    ym90 q[11]
    x q[12]
    ym90 q[12]
    x q[13]
    ym90 q[13]
    x q[14]
    ym90 q[14]
    x q[15]
    ym90 q[15]
    x q[0]
    x q[1]
    x q[2]
    x q[3]
    x q[4]
    x q[5]
    x q[6]
    x q[7]
    x q[8]
    x q[9]
    x q[10]
    x q[11]
    x q[12]
    x q[13]
    x q[14]
    x q[15]
    x q[15]
    ym90 q[15]
    x q[17]
    ym90 q[17]
    cnot q[1], q[17]
    tdag q[17]
    cnot q[0], q[17]
    t q[17]
    cnot q[1], q[17]
    tdag q[17]
    cnot q[0], q[17]
    t q[1]
    t q[17]
    x q[17]
    ym90 q[17]
    cnot q[0], q[1]
    tdag q[1]
    t q[0]
    cnot q[0], q[1]
    x q[18]
    ym90 q[18]
    cnot q[17], q[18]
    tdag q[18]
    cnot q[2], q[18]
    t q[18]
    cnot q[17], q[18]
    tdag q[18]
    cnot q[2], q[18]
    t q[17]
    t q[18]
    x q[18]
    ym90 q[18]
    cnot q[2], q[17]
    tdag q[17]
    t q[2]
    cnot q[2], q[17]
    x q[19]
    ym90 q[19]
    cnot q[18], q[19]
    tdag q[19]
    cnot q[3], q[19]
    t q[19]
    cnot q[18], q[19]
    tdag q[19]
    cnot q[3], q[19]
    t q[18]
    t q[19]
    x q[19]
    ym90 q[19]
    cnot q[3], q[18]
    tdag q[18]
    t q[3]
    cnot q[3], q[18]
    x q[20]
    ym90 q[20]
    cnot q[19], q[20]
    tdag q[20]
    cnot q[4], q[20]
    t q[20]
    cnot q[19], q[20]
    tdag q[20]
    cnot q[4], q[20]
    t q[19]
    t q[20]
    x q[20]
    ym90 q[20]
    cnot q[4], q[19]
    tdag q[19]
    t q[4]
    cnot q[4], q[19]
    x q[21]
    ym90 q[21]
    cnot q[20], q[21]
    tdag q[21]
    cnot q[5], q[21]
    t q[21]
    cnot q[20], q[21]
    tdag q[21]
    cnot q[5], q[21]
    t q[20]
    t q[21]
    x q[21]
    ym90 q[21]
    cnot q[5], q[20]
    tdag q[20]
    t q[5]
    cnot q[5], q[20]
    x q[22]
    ym90 q[22]
    cnot q[21], q[22]
    tdag q[22]
    cnot q[6], q[22]
    t q[22]
    cnot q[21], q[22]
    tdag q[22]
    cnot q[6], q[22]
    t q[21]
    t q[22]
    x q[22]
    ym90 q[22]
    cnot q[6], q[21]
    tdag q[21]
    t q[6]
    cnot q[6], q[21]
    x q[23]
    ym90 q[23]
    cnot q[22], q[23]
    tdag q[23]
    cnot q[7], q[23]
    t q[23]
    cnot q[22], q[23]
    tdag q[23]
    cnot q[7], q[23]
    t q[22]
    t q[23]
    x q[23]
    ym90 q[23]
    cnot q[7], q[22]
    tdag q[22]
    t q[7]
    cnot q[7], q[22]
    x q[24]
    ym90 q[24]
    cnot q[23], q[24]
    tdag q[24]
    cnot q[8], q[24]
    t q[24]
    cnot q[23], q[24]
    tdag q[24]
    cnot q[8], q[24]
    t q[23]
    t q[24]
    x q[24]
    ym90 q[24]
    cnot q[8], q[23]
    tdag q[23]
    t q[8]
    cnot q[8], q[23]
    x q[25]
    ym90 q[25]
    cnot q[24], q[25]
    tdag q[25]
    cnot q[9], q[25]
    t q[25]
    cnot q[24], q[25]
    tdag q[25]
    cnot q[9], q[25]
    t q[24]
    t q[25]
    x q[25]
    ym90 q[25]
    cnot q[9], q[24]
    tdag q[24]
    t q[9]
    cnot q[9], q[24]
    x q[26]
    ym90 q[26]
    cnot q[25], q[26]
    tdag q[26]
    cnot q[10], q[26]
    t q[26]
    cnot q[25], q[26]
    tdag q[26]
    cnot q[10], q[26]
    t q[25]
    t q[26]
    x q[26]
    ym90 q[26]
    cnot q[10], q[25]
    tdag q[25]
    t q[10]
    cnot q[10], q[25]
    x q[27]
    ym90 q[27]
    cnot q[26], q[27]
    tdag q[27]
    cnot q[11], q[27]
    t q[27]
    cnot q[26], q[27]
    tdag q[27]
    cnot q[11], q[27]
    t q[26]
    t q[27]
    x q[27]
    ym90 q[27]
    cnot q[11], q[26]
    tdag q[26]
    t q[11]
    cnot q[11], q[26]
    x q[28]
    ym90 q[28]
    cnot q[27], q[28]
    tdag q[28]
    cnot q[12], q[28]
    t q[28]
    cnot q[27], q[28]
    tdag q[28]
    cnot q[12], q[28]
    t q[27]
    t q[28]
    x q[28]
    ym90 q[28]
    cnot q[12], q[27]
    tdag q[27]
    t q[12]
    cnot q[12], q[27]
    x q[29]
    ym90 q[29]
    cnot q[28], q[29]
    tdag q[29]
    cnot q[13], q[29]
    t q[29]
    cnot q[28], q[29]
    tdag q[29]
    cnot q[13], q[29]
    t q[28]
    t q[29]
    x q[29]
    ym90 q[29]
    cnot q[13], q[28]
    tdag q[28]
    t q[13]
    cnot q[13], q[28]
    x q[15]
    ym90 q[15]
    cnot q[14], q[15]
    tdag q[15]
    cnot q[29], q[15]
    t q[15]
    cnot q[14], q[15]
    tdag q[15]
    cnot q[29], q[15]
    t q[14]
    t q[15]
    x q[15]
    ym90 q[15]
    cnot q[29], q[14]
    tdag q[14]
    t q[29]
    cnot q[29], q[14]
    x q[29]
    ym90 q[29]
    cnot q[28], q[29]
    tdag q[29]
    cnot q[13], q[29]
    t q[29]
    cnot q[28], q[29]
    tdag q[29]
    cnot q[13], q[29]
    t q[28]
    t q[29]
    x q[29]
    ym90 q[29]
    cnot q[13], q[28]
    tdag q[28]
    t q[13]
    cnot q[13], q[28]
    x q[28]
    ym90 q[28]
    cnot q[27], q[28]
    tdag q[28]
    cnot q[12], q[28]
    t q[28]
    cnot q[27], q[28]
    tdag q[28]
    cnot q[12], q[28]
    t q[27]
    t q[28]
    x q[28]
    ym90 q[28]
    cnot q[12], q[27]
    tdag q[27]
    t q[12]
    cnot q[12], q[27]
    x q[27]
    ym90 q[27]
    cnot q[26], q[27]
    tdag q[27]
    cnot q[11], q[27]
    t q[27]
    cnot q[26], q[27]
    tdag q[27]
    cnot q[11], q[27]
    t q[26]
    t q[27]
    x q[27]
    ym90 q[27]
    cnot q[11], q[26]
    tdag q[26]
    t q[11]
    cnot q[11], q[26]
    x q[26]
    ym90 q[26]
    cnot q[25], q[26]
    tdag q[26]
    cnot q[10], q[26]
    t q[26]
    cnot q[25], q[26]
    tdag q[26]
    cnot q[10], q[26]
    t q[25]
    t q[26]
    x q[26]
    ym90 q[26]
    cnot q[10], q[25]
    tdag q[25]
    t q[10]
    cnot q[10], q[25]
    x q[25]
    ym90 q[25]
    cnot q[24], q[25]
    tdag q[25]
    cnot q[9], q[25]
    t q[25]
    cnot q[24], q[25]
    tdag q[25]
    cnot q[9], q[25]
    t q[24]
    t q[25]
    x q[25]
    ym90 q[25]
    cnot q[9], q[24]
    tdag q[24]
    t q[9]
    cnot q[9], q[24]
    x q[24]
    ym90 q[24]
    cnot q[23], q[24]
    tdag q[24]
    cnot q[8], q[24]
    t q[24]
    cnot q[23], q[24]
    tdag q[24]
    cnot q[8], q[24]
    t q[23]
    t q[24]
    x q[24]
    ym90 q[24]
    cnot q[8], q[23]
    tdag q[23]
    t q[8]
    cnot q[8], q[23]
    x q[23]
    ym90 q[23]
    cnot q[22], q[23]
    tdag q[23]
    cnot q[7], q[23]
    t q[23]
    cnot q[22], q[23]
    tdag q[23]
    cnot q[7], q[23]
    t q[22]
    t q[23]
    x q[23]
    ym90 q[23]
    cnot q[7], q[22]
    tdag q[22]
    t q[7]
    cnot q[7], q[22]
    x q[22]
    ym90 q[22]
    cnot q[21], q[22]
    tdag q[22]
    cnot q[6], q[22]
    t q[22]
    cnot q[21], q[22]
    tdag q[22]
    cnot q[6], q[22]
    t q[21]
    t q[22]
    x q[22]
    ym90 q[22]
    cnot q[6], q[21]
    tdag q[21]
    t q[6]
    cnot q[6], q[21]
    x q[21]
    ym90 q[21]
    cnot q[20], q[21]
    tdag q[21]
    cnot q[5], q[21]
    t q[21]
    cnot q[20], q[21]
    tdag q[21]
    cnot q[5], q[21]
    t q[20]
    t q[21]
    x q[21]
    ym90 q[21]
    cnot q[5], q[20]
    tdag q[20]
    t q[5]
    cnot q[5], q[20]
    x q[20]
    ym90 q[20]
    cnot q[19], q[20]
    tdag q[20]
    cnot q[4], q[20]
    t q[20]
    cnot q[19], q[20]
    tdag q[20]
    cnot q[4], q[20]
    t q[19]
    t q[20]
    x q[20]
    ym90 q[20]
    cnot q[4], q[19]
    tdag q[19]
    t q[4]
    cnot q[4], q[19]
    x q[19]
    ym90 q[19]
    cnot q[18], q[19]
    tdag q[19]
    cnot q[3], q[19]
    t q[19]
    cnot q[18], q[19]
    tdag q[19]
    cnot q[3], q[19]
    t q[18]
    t q[19]
    x q[19]
    ym90 q[19]
    cnot q[3], q[18]
    tdag q[18]
    t q[3]
    cnot q[3], q[18]
    x q[18]
    ym90 q[18]
    cnot q[17], q[18]
    tdag q[18]
    cnot q[2], q[18]
    t q[18]
    cnot q[17], q[18]
    tdag q[18]
    cnot q[2], q[18]
    t q[17]
    t q[18]
    x q[18]
    ym90 q[18]
    cnot q[2], q[17]
    tdag q[17]
    t q[2]
    cnot q[2], q[17]
    x q[17]
    ym90 q[17]
    cnot q[1], q[17]
    tdag q[17]
    cnot q[0], q[17]
    t q[17]
    cnot q[1], q[17]
    tdag q[17]
    cnot q[0], q[17]
    t q[1]
    t q[17]
    x q[17]
    ym90 q[17]
    cnot q[0], q[1]
    tdag q[1]
    t q[0]
    cnot q[0], q[1]
    x q[15]
    ym90 q[15]
    x q[0]
    x q[1]
    x q[2]
    x q[3]
    x q[4]
    x q[5]
    x q[6]
    x q[7]
    x q[8]
    x q[9]
    x q[10]
    x q[11]
    x q[12]
    x q[13]
    x q[14]
    x q[15]
    x q[0]
    ym90 q[0]
    x q[1]
    ym90 q[1]
    x q[2]
    ym90 q[2]
    x q[3]
    ym90 q[3]
    x q[4]
    ym90 q[4]
    x q[5]
    ym90 q[5]
    x q[6]
    ym90 q[6]
    x q[7]
    ym90 q[7]
    x q[8]
    ym90 q[8]
    x q[9]
    ym90 q[9]
    x q[10]
    ym90 q[10]
    x q[11]
    ym90 q[11]
    x q[12]
    ym90 q[12]
    x q[13]
    ym90 q[13]
    x q[14]
    ym90 q[14]
    x q[15]
    ym90 q[15]
 
