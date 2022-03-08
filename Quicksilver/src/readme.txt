# the input file has a set of parameters already
# domain size: lx, ly, lz: 16x16x16
# mesh elements: 16x16x16
# nParticles: 163,840
# try to 10x particles
srun -N1 -pmi50 ./qs -i ../Examples/CORAL2_Benchmark/Problem1/Coral2_P1_1.inp --nParticles  1638400

srun -N1 -pmi50 ./qs -i ../Examples/CORAL2_Benchmark/Problem1/Coral2_P1_1.inp

# to avoid long waiting time, just get a dedicated node and run things interactively!!

srun -pmi50 --pty bash
