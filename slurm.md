## SLURM
Slurm 은 여러 컴퓨터에 효율적으로 작업을 조절하는 프로그램이다.

`sbatch <job script file>`

`scancel <job-id>` job-id에 해당되는 작업을 취소한다.

`scancel --user <username>` username에 해당하는 모든 작업을 취소한다.

`squeue` 현재 진행되는 작업들을 알 수 있다.

`slurmtop` slurm 전체 상황을 알 수 있다. 종료는 `q`이다.

`sinfo` slurm 노드들의 상태를 확인한다.

`chkgpu` GPU 사용 정보를 알 수 있다.

