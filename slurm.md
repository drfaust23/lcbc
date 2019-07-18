## SLURM
Slurm 은 여러 컴퓨터에 효율적으로 작업을 조절하는 프로그램이다.

`sbatch <job script file>`

`scancel <job-id>` job-id에 해당되는 작업을 취소한다.

`scancel --user <username>` username에 해당하는 모든 작업을 취소한다.

`squeue` 현재 진행되는 작업들을 알 수 있다.

`slurmtop` slurm 전체 상황을 알 수 있다. 종료는 `q`이다.

`sinfo` slurm 노드들의 상태를 확인한다.

`chkgpu` GPU 사용 정보를 알 수 있다.

`scontrol update nodename=gpu1 state=resume`

slurm은 마지막 상태를 기억하기 때문에 특이한 변화(하드웨어 변화)가 있는 경우. 그 상태를 clear 시켜주어야 한다.
모든 slurm 관련 데몬을 멈추고,  `slurmd -D -vvv -c` 및 `slurmctld -D -vvv -c` 로 연결되는 것을 확인 후.
slurm 데몬을 재실행 시킨다.

