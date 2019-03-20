# CUDA 설치

CUDA를 설치하기 위해서는 해당 OS 및 아키텍쳐의 버전에 맞는 CUDA 드라이버를 다운을 받아 설치한다.

이 디렉토리에 첨부된 Shell 파일들은 local 설치를 활용한 방법이다.

먼저 맞는 deb 파일을 다운로드 한 후

1. `sudo bash install_cuda.sh`
2. `sudo reboot`
3. `sudo bash install_cudnn_nccl.sh`

를 차례대로 입력을한다.

그러면 설치 끝.
