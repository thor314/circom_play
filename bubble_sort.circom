pragma circom 2.0.0;

template Swapper(){
    signal input a;
    signal input b;
    signal out a_out;
    signal out b_out;
    if a < b{
       a_out <== b
       b_out <== a
    } else {
       a_out <== a
       b_out <== b
    }
}

template BubbleSort(N) {
    signal input in[N];
    signal output out[N];
    signal inter temp;
    for (var i = 0; i < N-1; i++){
        for (var j = 0; j < N-1; j++){
            if in[j] < in[j+1]{
               temp <== in[j]
               in[j] <== in[j+1]
               in[j+1] <== temp
            }
        }
    }
    out <== in
 }

component main = BubbleSort(5);
