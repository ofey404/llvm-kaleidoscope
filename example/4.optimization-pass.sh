EXPECTED=$(cat <<-EOF
ready> ; ModuleID = 'my cool jit'
source_filename = "my cool jit"

define double @test(double %x) {
entry:
  %addtmp = fadd double %x, 3.000000e+00
  %multmp = fmul double %addtmp, %addtmp
  ret double %multmp
}
EOF
)

printf "def test(x) (1+2+x)*(x+(1+2))" | ./main

printf "======================================================================\n"
printf "EXPECTED:\n"
printf "$EXPECTED\n"