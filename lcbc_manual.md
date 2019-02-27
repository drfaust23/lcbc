# LCBC 메뉴얼
*Lab of Computational Biology and Chemistry*

## Linux
현재 우리 연구실에서 사용하는 운영체제(OS)는 ubuntu 이다.


`cd <옮기고자 하는 위치>` 현재 위치를 옮길 수 있다.
  `.` 현재 위치, `..` 상위 디렉토리, `~` 기본 위치, `~username` 해당 유저의 기본 위치


`pwd` 현재 위치 나타내기


`mkdir <directory name>` 디렉토리 생성


`mv <옮기고자 하는 대상> <옮기고자 하는 위치>`


`cp [ -r ] <옮기고자 하는 대상> <옮기고자 하는 위치>`
  -r 옵션은 폴더를 옮길 때 사용. (주로 -r 은 강제적인 의미로 사용된다)



`rm [ -r ] <지우고자 하는 대상>` 해당 파일 혹은 폴더를 지울 수 있다.



`ps` 해당 터미널에서 실행되는 PID를 알 수 있다.

`jobs` ps와 유사하며 job number를 알 수 있다.


`kill [ -9 ] < pid | %Job number>`
  `-9` 옵션을 사용하면 강제적으로 죽이게 된다. ( 잘못된 사용에 대한 risk가 있다 )


`top` 시스템 사용 정보를 알 수 있다.


`sudo apt update` ; `sudo apt upgrade` 시스템을 업데이트, 업그레이드 할 수 있다.


`ssh <username>@<hostname>` username : 사용자 이름, hostname : 컴퓨터 이름
> `username`이 같다면 생략이 가능하다.

`scp [ -r ] <옮기고자 하는 대상> <username>@<hostname>:<해당 컴퓨터의 옮기고자 하는 위치>`



## Python3

### 가상환경 만들기
가상 환경의 장점은
* 가상환경은 다양한 버전의 Python 및 Python package 설치가 가능하다.
* Package 꼬임을 방지 및 관리 용이성.


1. 가상환경 설치법
```
sudo apt update
sudo apt install python3-dev python3-pip
sudo pip3 install -U virtualenv
```

2. 가상환경 생성
`virtualenv --system-site-packages -p python3.<version> ~/<venv_dir_name>` 을 이용해서 가상환경을 생성할 수 있다.
> 예로 python3.7을 사용해 tensorflow를 사용한다고 하면 `virtualenv --system-site-packages -p python3.7 ~/venv_tf-1.13.1`으로 실행


3. 가상환경 이용
`source ~/<venv_dir_name>/bin/activate`을 통해 가상환경을 활성화 할 수 있다.
> 아까의 예를 사용한다면 `source ~/venv_tf-1.13.1/bin/activate`를 통해 가능하다.
> 가상환경 상에서 `pip --version ; python --version`을 확인하면 설정했던 python version으로 실행이 된다.


4. 가상환경 탈출(?)
가상환경을 벋어나고자 한다면 `deactivate`를 command 창에 치면 나갈 수 있다.



### 터미널 창   

`ctrl + shift + n` 새창 열기

`ctrl + shift + t` 새탭 열기

`alt + #(1,2,3,...)` 생성된 탭 중에 몇번째의 탭으로 갈지 선택할 수 있다.


## SLURM
Slurm 은 여러 컴퓨터에 효율적으로 작업을 조절하는 프로그램이다.

~~직업을 던져보자(?)~~

`sbatch <job script file>`


`scancel <job-id>` job-id에 해당되는 작업을 취소한다.

`scancel --user <username>` username에 해당하는 모든 작업을 취소한다.


`squeue` 현재 진행되는 작업들을 알 수 있다.


`slurmtop` slurm 전체 상황을 알 수 있다.


`sinfo` slurm 노드들의 상태를 확인한다.

