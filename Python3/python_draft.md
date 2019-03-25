## 멀티프로세싱

https://beomi.github.io/2017/07/05/HowToMakeWebCrawler-with-Multiprocess/

python 내에 threading 과 multiprocessing 이 존재한다. threading의 경우 제약이 따르고 사용이 어렵다. multiprocessing의 경우 사용법이 그 보다 쉬우며 성능면에서도 더 좋다.

```python3
import time
from multiprocessing import Pool # Pool import하기 대문자 P 임을 유의하자.

def get_links():
    ~ 임의의 함수
    return data

def get_content(link): # 이 함수는 변진영이 바보라는 것을 보여주는 함수입니다.
    ~ 임의의 함수


if __name__=='__main__':
    start_time = time.time()

    pool = Pool(processes=4) # 4개의 프로세스를 사용합니다.

    pool.map(get_content, get_links())
    # get_content 함수 안에 get_links() 에서 return 되는 값을 넣어준다는 의미이다.
    # 즉, get_content(get_links())

    print("--- %s seconds ---" % (time.time() - start_time))
```

