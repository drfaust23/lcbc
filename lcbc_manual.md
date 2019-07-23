# LCBC 메뉴얼
*Lab of Computational Biology and Chemistry*

## Linux
현재 우리 연구실에서 사용하는 운영체제(OS)는 ubuntu 이다.


`cd <옮기고자 하는 위치>` 현재 위치를 옮길 수 있다.
> `.` 현재 위치, `..` 상위 디렉토리, `~` 기본 위치, `~username` 해당 유저의 기본 위치, `/` 기저 위치

*Quiz* USER : LCBC\
`~/ABC/DC/SALE/.././../` 의 위치는 어디인가?


`pwd` 현재 위치 나타내기


`mkdir <directory name>` 디렉토리 생성


`mv <옮기고자 하는 대상> <옮기고자 하는 위치>` - `mv`의 경우 -r 옵션이 필요가 없다. 기본적으로 폴더를 옮길 수 있다.


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
`username`이 같다면 생략이 가능하다.

`scp [ -r ] <옮기고자 하는 대상> <username>@<hostname>:<해당 컴퓨터의 옮기고자 하는 위치>`



## Python3

### 가상환경 만들기
가상 환경의 장점은
* 가상환경은 다양한 버전의 Python 및 Python package 설치가 가능하다.
* Package 꼬임을 방지 및 관리 용이성.


1. 가상환경 설치법
```
sudo apt update
sudo apt install python3.<version> python3.<version>-venv
```

2. 가상환경 생성
`python3.<version> -m venv ~/<venv_dir_name>` 을 이용해서 가상환경을 생성할 수 있다.
> 예로 python3.7을 사용해 가상환경을 생성 한다고 하면 `python3.7 -m venv ~/venv_py37`으로 실행


3. 가상환경 이용
`source ~/<venv_dir_name>/bin/activate`을 통해 가상환경을 활성화 할 수 있다.
> 아까의 예를 사용한다면 `source ~/venv_py37/bin/activate`를 통해 가능하다.\
> 가상환경 상에서 `pip --version ; python --version`을 확인하면 설정했던 python version으로 실행이 된다.\
> 가상환경을 좀 더 편히 사용하기 위해 ~/.bashrc에 `alias <nickname>='source /home/yongbeom/venv_py37/bin/activate'`를 추가한다. 그리고 `source ~/.bashrc`로 .bashrc 를 현재 환경에 업데이트 한 후, `<nickname>`을 사용하면 쉽게 가상환경을 사용할 수 있다.

4. 가상환경 탈출(?)\
가상환경을 벋어나고자 한다면 `deactivate`를 command 창에 치면 나갈 수 있다.

### Jupyter notebook SSH를 통해 실행하기 !

1. SSH로 사용하려는 컴퓨터에 접속을 한다.

2. SSH로 접속한 컴퓨터의 터미널 창에 `jupyter notebook --no-browser --port=8080`를 입력한다.

3. 그리고 현재 사용하는 컴퓨터의 새로운 터미널 창에 `ssh -N -L 8080:localhost:8080 <remote_user>@<remote_host>`를 입력한다.
> 입력한 후 새로운 명령 입력 줄이 안 뜨는 것이 정상이다.

4. 2번에 실행시킨 주피터 노트북의 토큰 주소를 복사하여 브라우저에 복사한다.



### 터미널 창   

`ctrl + alt + t` 터미널 단축키

`ctrl + shift + n` 새창 열기

`ctrl + shift + t` 새탭 열기

`alt + #(1,2,3,...)` 생성된 탭 중에 몇번째의 탭으로 갈지 선택할 수 있다.


## HARDWARE
`nvidia-smi` 현재 장착된 GPU 정보를 알 수 있다.
> -i,   --id=                 Target a specific GPU or Unit.\
> -pm,  --persistence-mode=   Set persistence mode: 0/DISABLED, 1/ENABLED\
> -pl   --power-limit=        Specifies maximum power management limit in watts\

`lscpu` CPU 정보를 알 수 있다.

`lspci` 메인보드 정보를 알 수 있다.

`arch` 아키텍처 확인.
> x86_64 : x86을 지원하는 64-bit 환경.\
> x86 : 32-bit 환경.

`cat /etc/lsb-release` OS version 확인.

## ETC

Ubuntu에서 문서 작성 후 프린트를 했을 때 문자가 정상적으로 나오지 않는다면,
* 프린트 드라이버가 정상적으로 설치돼있는지 확인한다.
* 지원되는 폰트인지 확인한다.



~~정답은 `/home/LCBC/ABC` 이다.~~

## 파티션 설정
`fdisk -l` 로 생성하려는 파티션을 확인한다.
sdb를 파티션 설정 하려는 경우 `sudo fdisk /dev/sdb`로 설정 시작.
Command : `n`
Select : `p or e` 목적에 따라.
Partition number : ``
Sector 설정

Command : `p`
설정된 파티션 확인.

Command : `w`
저장 및 종료.

`sudo mkfs.xfs -f /dev/sdb1`

`sudo mount -t xfs /dev/sdb1 <target_dir>` xfs 포맷 이용.
> `/etc/fstab`에서 설정 후 `sudo mount -a`를 이용하여도 된다.

