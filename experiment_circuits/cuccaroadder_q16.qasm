# Generated by OpenQL 0.10.0 for program cuccaroadder_q16
version 1.0

qubits 16


.cuccaroadder_q16
    x q[0]
    x q[15]
    x q[0]
    x q[1]
    x q[2]
    x q[3]
    x q[4]
    x q[5]
    x q[6]
    x q[0]
    x q[1]
    x q[2]
    x q[3]
    x q[4]
    x q[5]
    x q[6]
    cnot q[1], q[8]
    cnot q[1], q[0]
    x q[1]
    ym90 q[1]
    cnot q[8], q[1]
    tdag q[1]
    cnot q[0], q[1]
    t q[1]
    cnot q[8], q[1]
    tdag q[1]
    cnot q[0], q[1]
    t q[8]
    t q[1]
    x q[1]
    ym90 q[1]
    cnot q[0], q[8]
    tdag q[8]
    t q[0]
    cnot q[0], q[8]
    cnot q[2], q[9]
    cnot q[2], q[1]
    x q[2]
    ym90 q[2]
    cnot q[9], q[2]
    tdag q[2]
    cnot q[1], q[2]
    t q[2]
    cnot q[9], q[2]
    tdag q[2]
    cnot q[1], q[2]
    t q[9]
    t q[2]
    x q[2]
    ym90 q[2]
    cnot q[1], q[9]
    tdag q[9]
    t q[1]
    cnot q[1], q[9]
    cnot q[3], q[10]
    cnot q[3], q[2]
    x q[3]
    ym90 q[3]
    cnot q[10], q[3]
    tdag q[3]
    cnot q[2], q[3]
    t q[3]
    cnot q[10], q[3]
    tdag q[3]
    cnot q[2], q[3]
    t q[10]
    t q[3]
    x q[3]
    ym90 q[3]
    cnot q[2], q[10]
    tdag q[10]
    t q[2]
    cnot q[2], q[10]
    cnot q[4], q[11]
    cnot q[4], q[3]
    x q[4]
    ym90 q[4]
    cnot q[11], q[4]
    tdag q[4]
    cnot q[3], q[4]
    t q[4]
    cnot q[11], q[4]
    tdag q[4]
    cnot q[3], q[4]
    t q[11]
    t q[4]
    x q[4]
    ym90 q[4]
    cnot q[3], q[11]
    tdag q[11]
    t q[3]
    cnot q[3], q[11]
    cnot q[5], q[12]
    cnot q[5], q[4]
    x q[5]
    ym90 q[5]
    cnot q[12], q[5]
    tdag q[5]
    cnot q[4], q[5]
    t q[5]
    cnot q[12], q[5]
    tdag q[5]
    cnot q[4], q[5]
    t q[12]
    t q[5]
    x q[5]
    ym90 q[5]
    cnot q[4], q[12]
    tdag q[12]
    t q[4]
    cnot q[4], q[12]
    cnot q[6], q[13]
    cnot q[6], q[5]
    x q[6]
    ym90 q[6]
    cnot q[13], q[6]
    tdag q[6]
    cnot q[5], q[6]
    t q[6]
    cnot q[13], q[6]
    tdag q[6]
    cnot q[5], q[6]
    t q[13]
    t q[6]
    x q[6]
    ym90 q[6]
    cnot q[5], q[13]
    tdag q[13]
    t q[5]
    cnot q[5], q[13]
    cnot q[7], q[15]
    x q[13]
    cnot q[5], q[13]
    x q[6]
    ym90 q[6]
    cnot q[13], q[6]
    tdag q[6]
    cnot q[5], q[6]
    t q[6]
    cnot q[13], q[6]
    tdag q[6]
    cnot q[5], q[6]
    t q[13]
    t q[6]
    x q[6]
    ym90 q[6]
    cnot q[5], q[13]
    tdag q[13]
    t q[5]
    cnot q[5], q[13]
    x q[13]
    cnot q[6], q[5]
    cnot q[6], q[13]
    x q[12]
    cnot q[4], q[12]
    x q[5]
    ym90 q[5]
    cnot q[12], q[5]
    tdag q[5]
    cnot q[4], q[5]
    t q[5]
    cnot q[12], q[5]
    tdag q[5]
    cnot q[4], q[5]
    t q[12]
    t q[5]
    x q[5]
    ym90 q[5]
    cnot q[4], q[12]
    tdag q[12]
    t q[4]
    cnot q[4], q[12]
    x q[12]
    cnot q[5], q[4]
    cnot q[5], q[12]
    x q[11]
    cnot q[3], q[11]
    x q[4]
    ym90 q[4]
    cnot q[11], q[4]
    tdag q[4]
    cnot q[3], q[4]
    t q[4]
    cnot q[11], q[4]
    tdag q[4]
    cnot q[3], q[4]
    t q[11]
    t q[4]
    x q[4]
    ym90 q[4]
    cnot q[3], q[11]
    tdag q[11]
    t q[3]
    cnot q[3], q[11]
    x q[11]
    cnot q[4], q[3]
    cnot q[4], q[11]
    x q[10]
    cnot q[2], q[10]
    x q[3]
    ym90 q[3]
    cnot q[10], q[3]
    tdag q[3]
    cnot q[2], q[3]
    t q[3]
    cnot q[10], q[3]
    tdag q[3]
    cnot q[2], q[3]
    t q[10]
    t q[3]
    x q[3]
    ym90 q[3]
    cnot q[2], q[10]
    tdag q[10]
    t q[2]
    cnot q[2], q[10]
    x q[10]
    cnot q[3], q[2]
    cnot q[3], q[10]
    x q[9]
    cnot q[1], q[9]
    x q[2]
    ym90 q[2]
    cnot q[9], q[2]
    tdag q[2]
    cnot q[1], q[2]
    t q[2]
    cnot q[9], q[2]
    tdag q[2]
    cnot q[1], q[2]
    t q[9]
    t q[2]
    x q[2]
    ym90 q[2]
    cnot q[1], q[9]
    tdag q[9]
    t q[1]
    cnot q[1], q[9]
    x q[9]
    cnot q[2], q[1]
    cnot q[2], q[9]
    x q[8]
    cnot q[0], q[8]
    x q[1]
    ym90 q[1]
    cnot q[8], q[1]
    tdag q[1]
    cnot q[0], q[1]
    t q[1]
    cnot q[8], q[1]
    tdag q[1]
    cnot q[0], q[1]
    t q[8]
    t q[1]
    x q[1]
    ym90 q[1]
    cnot q[0], q[8]
    tdag q[8]
    t q[0]
    cnot q[0], q[8]
    x q[8]
    cnot q[1], q[0]
    cnot q[1], q[8]
