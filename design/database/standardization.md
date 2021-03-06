### 데이터 표준화 원칙
> 참고자료: [국가상수도데이터베이스표준화지침(20210101 개정)](http://me.go.kr/home/web/policy_data/read.do;jsessionid=aUJOss+2+490XqzZVxaFg+Dv.mehome1?pagerOffset=0&maxPageItems=10&maxIndexPages=10&searchKey=&searchValue=&menuId=10276&orgCd=&condition.orderSeqId=7249&condition.rnSeq=146&condition.deleteYn=N&seq=7618)

## 1. 표준 단어 및 용어 정의 원칙
### 1.1 한글명 기본 원칙
* 행정안전부 표준 단어를 기준으로 정의하되 사회에서 관용적으로 사용하는 단어는 우선 적용할 수 있다.  
* 띄어쓰기를 하지 않으며, 단어는 10자 이내로 작성할 것을 권장한다.  
* 명사형으로 정의하며 동사, 부사, 접속사, 소유격 등의 단어 사용은 제한한다.  
(예) 예상되는금액: 되는(X), 주민번호또는사업자등록번호: 또는(X), 공고의내용: 의(X)
* 단어는 공백을 포함하여 특수문자(_, -, +, (, ) 등)는 사용하지 않는다. 단, 특수문자를 제거하면 다른 단어와 중복되거나 의미 전달에 왜곡이 발생하는 경우 허용한다.
* 동일한 의미의 단어를 한글과 영문으로 중복해서 사용하지 않는다. 단, 표현의 정확성 및 고유의 의미부여를 위한 경우는 예외로 한다.  
(예) 자료(O), 데이터(O), DATA(X)
* 축약된 단어는 의미가 모호하므로 사용을 자제한다. 단, 일반적으로 축약하여 사용되거나 용어가 지나치게 길어질 수 있는 경우에는 축약을 허용한다.  
(예) 사번 → 사원번호, 주민번호 → 주민등록번호, 상수도하수도 → 상하수도
* 용어의 주체가 불분명할 경우 가급적 주체를 포함하여 표현한다.  
(예) 주민등록번호 → 사용자주민등록번호, 등록자주민등록번호
* 숫자만으로는 단어가 될 수 없으며, 해당 의미를 나타내는 단어와 함께 사용한다.  
(예) 6개월, 1분기, 1차, 1급
* 시간 개념의 단어는 단어에 따라 물리 데이터 형식이 달라지므로 정확하게 표기한다.  
(예) 일시: DATE, 일/년도/년월 등: VARCHAR2
* 사람을 나타내는 ‘~자’, ‘~인’ 등 접미사는 관용적으로 많이 사용하는 단어에 포함하여 표준 단어로 정의한다. 하나로 통일하여 사용하고, 나머지는 유의어로 정의한다.  
(예) 감독자(X) vs 감독원(O), 기술자(O) vs 기술인(X)
* ‘~일자’, ‘~일’ 등 날짜를 의미하는 단어는 ‘~일’로 통일하여 사용한다.
* 적용일자, 유효일자 등 유사 용어는 통일하거나 의미를 명확히 하여 정의한다.  
(예) 적용일자 → 적용시작일, 적용종료일
* 접두사, 접미사 및 조사와 같이 한 자리로 구성된 단어들은 가급적 표준에서 배제하고 앞뒤에 나오는 단어와 조합하여 표준 단어로 정의한다.  
(예) 미+사용 → 미사용
* 두음 법칙은 적용하여 사용한다.  
(예외) 년도(O) vs 연도(X)

### 1.2. 한글명 외래어 사용 원칙
* 통상적으로 국어처럼 쓰이는 외래어의 경우 영문을 쓰지 않고 외래어 표기법에 따라 정의한다.  
(예) EMAIL → 이메일, FAX → 팩스, PROCESS → 프로세스
* 외래어 표기법에 따라 한글화한 단어와 의미대로 한글화한 단어가 같이 쓰이는 경우 의미로 한글화한 단어를 우선 적용한다.  
(예) 패스워드 → 비밀번호
* 한글명에는 한글 사용이 원칙이나 대체할 한글이 없거나, 범용적으로 사용되는 경우 또는 고유한 의미를 담고 있는 경우에는 영문 표기를 그대로 사용할 수 있다.  
(예) 인터넷프로토콜 → IP, 아이디 → ID
* 외래어를 사용할 경우 반드시 대문자를 사용한다.  
(예) ip → IP

### 1.3. 한글명 이음동의어/동음이의어 사용 원칙
* 이음동의어는 대표적인 단어를 표준 단어로 선정하고, 나머지 단어는 유의어로 분류하고 사용하지 않는다.  
(예) 에러 vs 오류 → 에러(유의어), 오류(표준 단어), 이름 vs 명 → 이름(유의어), 명(표준 단어)
* 동음이의어는 사용 빈도가 높은 것을 표준 단어로 사용하고 빈도가 낮은 단어는 사용을 제한한다. 단, 해당 단어 외에 사용할 수 없는 경우 제한적으로 허용한다.  
(예) 보도(Footpath) & 보도(News), 지적(Land register) & 지적(Point out). 정수(Clean water) & 정수(Integer), 시(City) & 시(Hour)

### 1.4. 영문명 사용 원칙
* 한글명을 영문으로 표기한 것을 의미한다.
* 표준 단어의 한글명을 기준으로 영문명을 생성하며, 이때 일정한 규칙을 따른다.
* Full Name, 대문자를 사용하고, 단어와 단어 사이는 띄어쓰기로 작성한다.
 
### 1.5. 영문약어명(물리명) 사용 원칙
* 테이블명, 컬럼명 등 물리데이터모델 및 데이터베이스 객체 명칭 정의에 사용한다.
* 최소 2자리부터 최대 8자리까지 등록하여 사용할 것을 권장한다.
* 대문자로 정의하되 가급적 6자 이내로 하고, 영문명 길이가 6자 이내이면 영문명을 약어로 사용할 수 있다.
* 숫자는 단어의 맨 뒤 혹은 영문으로 작성한다.(한글명에서는 맨 앞에 숫자 표기 가능)
* 약어는 다음 중 의미를 가장 잘 전달할 수 있는 규칙을 선택하여 사용한다.
  * 일반적으로 사용하는 약어는 그대로 사용할 수 있다.  
    (예) TEL, HR, IFRS, VOC, B2B
  * 가급적 자음만으로 축약하여 정의한다. 이 경우 연속되는 자음은 하나만 사용한다. 단, 필요한 경우(첫 글자가 모음인 경우 등) 모음 포함이 가능하다.  
    (예) PRICE → PRC, EVIDENCE → EVDNC, COST → CST
  * 영문명의 앞부분만 취하는 것도 가능하다.  
    (예) OBJECT → OBJ, RELATION → REL
  * 영문명의 첫 글자와 마지막 글자를 조합하여 사용 가능하다. 영문명의 길이가 긴 경우에는 첫 자음, 끝 자음 사이에 특징 있는 자음 포함이 가능하다.  
    (예) ROAD → RD, MESSAGE → MSG, PROJECT → PJT
    
## 2. 표준 도메인 정의 원칙
* 도메인은 각 속성의 일반적인 특징을 나타내는 데이터의 성격을 분류한 것으로 속성이 취할 수 있는 값의 집합이라 할 수 있다. 업무적인 용도와 사용 빈도, 데이터의 논리적/물리적 특성 등을 고려하여 추출하고 데이터 형식을 부여한다.
* 용어의 의미와 해당 속성이 가질 수 있는 데이터의 타입, 길이를 명확화하기 위하여 정의 시 도메인을 활용한다
* 용어의 마지막 단어를  ~ID, ~명, ~금액, ~내용, ~일자, ~율 등 분류단어로 용어를 정의하고 이를 도메인화 한다.
 
## 3. 표준 코드 정의 원칙
* 도메인의 한 유형으로서 용어에 허용된 데이터 값을 제한된 범위 내에서 구체적으로 열거하여 정의한 것
* 각 산업별로 법적, 제도적으로 부여하여 공통적으로 사용되는 코드와 기관이나 기업 내부에서 정의하여 사용하는 코드 존재
* 코드 통합 과정을 거쳐 전사 표준 코드를 도출한 후 관리
* 기존 코드 값과 표준 코드와의 변환 매핑 관리
* 코드의 유형은 저장되는 테이블이 독립된 테이블인지 여부에 따라 공통코드와 목록성코드로 구분할 수 있다.
  *  공통코드는 ‘코드명’, ‘코드 값’, ‘코드 값명’, ‘정렬순서’, ‘데이터타입/길이’ 등의 정보를 정의하여 사용하며 다양한 코드들을  하나의 공통된 코드 테이블에서 관리한다.
  *  목록성코드는 공통코드가 갖는 속성 이외에 공통적으로 사용할 수 없는 추가적인 속성을 필요로 하는 코드를 의미한다.
* 코드의 종류별 기준은 다음과 같다.  

|코드종류|적용기준|예시|
|:------|:-------------------------------------------------------------|:--------------------|
|코드|코드 값이 전사 관점에서 유일한 식별자의 의미를 가지며, 전사적 관점에서 주로 사용하는 상위 분류를 의미할 경우, ‘-코드’를 사용한다.  코드에 따른 개체가 존재하고, 고유한 식별자 형태로 사용되는 경우|(예) CT_심사항목코드, WR_행정동코드|
||외부 기관에서 정의한 코드 체계를 준용하는 경우|(예) 은행코드|
|분류|코드 값이 대분류, 중분류, 소분류 등의 분류체계를 가질 수 있는 경우, ‘-분류코드’를 사용한다.|(예) KDC분류코드, 간행물대분류코드|
|종류|분류코드와 유사하나 특별한 기준 없이 나열할 때 ‘-종류코드’를 사용한다. 일반적으로는 실체가 존재하는 공통적인 특성을 갖는 사물을 나누어 구분하는 경우에 사용한다.|(예) DBMS종류코드, 댐종류코드|
|유형|종류코드를 상위 수준으로 추상화 한 개념으로 구분할 때 ‘-유형코드’를 사용한다. 성질이나 특징 따위가 공통적인 것끼리 묶어서 구분하는 경우에 사용한다.|(예) DB유형코드, 게시판유형코드|
|구분|반드시 ‘분류’, ‘종류’, ‘유형’을 적용해야 하는 경우가 아니거나 코드 종류의 적용이 애매한 경우에는 기본적으로 ‘-구분코드’를 사용한다.|(예) EA기관구분코드, GIS축적구분코드|
|여부|‘이다/아니다’, ‘하다/하지 않다’와 같이 ‘참(True)/거짓(False)’의 의미로 사용하며, ‘Y’, ‘N’ 값으로 표현한다.|(예) 서약서동의여부, SAP여부|

* 코드 값 부여 규칙은 다음과 같다.
  *  코드 값의 데이터 타입은 기본적으로 고정길이 문자형으로 사용하며 알파벳과 문자형 일련번호를 조합하여 부여한다.
  *  코드 값은 기본적으로 3자리 문자열로 구성하고 최대 길이는 확장성을 고려하여 정의한다. 단, 동일한 코드 도메인의 코드 값은 동일한 길이로 구성하는 것을 기본으로 한다.
  *  ‘여부’, ‘유무’와 같이 ‘예’ 또는 ‘아니오’로 표기되는 코드는 별도의 코드를 등록하여 관리하지 않고 ‘Y’, ‘N’의 1바이트 고정문자열로 사용한다.
  *  ‘기타’, ‘해당없음’, ‘해당무’ 등 모호하거나 의미가 없는 코드 값은 가급적 사용하지 않는 것을 권장하며, 필요한 경우에는 해당 코드 값이 가질 수 있는 마지막 값 또는 최대 값을 부여하여 정의한다.(예) 알파벳형 : ‘ZZZ’, 문자형 일련번호 : ‘999’
  *  분류코드를 정의하는 경우 상위 코드와 하위 코드 간의 연관 관계에 변경이 발생할 수 있다면 하위 코드 정의 시 상위 코드의 의미를 포함하지 않고 정의한다. 하위 코드가 상위 코드를 포함하는 경우, 하위 코드만으로 상위 분류가 식별되는 장점은 있으나, 상위 코드가 변경되었으나 하위 코드의 변경은 불가능 한 경우 혼란이 발생할 수 있다.
  *  숫자로만 이루어진 코드 값보다는 문자로 시작하거나 최대 코드 길이만큼 문자형 숫자 ‘0’을 앞에 채워서 코드를 부여하는 방식을 권장한다.  
    (예) 처리상태코드 : 신청(1), 승인(2), …, 결재완료(10) → 신청(01), 승인(02), …, 결재완료(10)
  *  코드 값은 가능한 연속적으로 부여한다.
  
## 4. 예시
### 4.1. 표준용어정의서 명세 지침
|항목|항목 정의 및 작성 지침|예시|
|:----|:----|:----|
|표준용어명|○ 엔터티, 속성 등 데이터 요소의 명명에 사용될 용어를 기재 (동음이의어와 약어는 중복을 허용하나 사용 또는 작성을 최소화)||
|         |○ 한글을 원칙으로 하며,  특수 문자와 공백은 사용 불가 (- 숫자의 사용은 가능하나, 표준용어의 직관적 의미 파악이 가능하도록 사용을 최소화)||
|         |○ 관용적으로 널리 알려진 영문약어에 한하여 표준용어로 사용 가능|URL, IP 등|
|영문명    |○ 표준용어의 영문명으로, 대문자를 사용하여 Full Name으로 기재|표준용어명 “가공식품”의 경우, 영문명은 “PROCESS FOOD”로 기재|
|영문약어명|○ 해당 표준용어에 대한 영문약어명을 기재||
|         |○ 대문자로 작성하고, 불가피한 경우를 제외하고는 특수문자는 사용하지 않도록 유의||
|         |○ “용어구분”이 동의어인 경우 해당 용어의 표준어와 동일한 영문약어를 기재||
|         |○ 아래 예시를 참조하여 자체적인 영문약어 명명규칙을 작성하여 약어명을 정의할 것을 권고|모음을 제외한 자음의 결합으로 영문 약어 작성 (PRICE → PRC)|
|         ||(예시) 같은 자음이 2개 이상 연속되면 1개만 선택하여 작성 (MAPPING → MPNG)|
|         ||(예시) 용어 영문명의 앞부분만 사용하여 작성 (ADDRESS → ADDR)|
|         ||(예시) 용어 영문명의 첫 글자와 마지막 글자를 조합하여 작성 (YARD → YD) |
|         ||(예시) 용어 영문명이 긴 경우는 첫 자음과 마지막 자음 사이에 특징 있는 자음들을 조합하여 작성 (NETWORK → NW, SOFTWARE → SW, MESSAGE → MSG)|
|용어구분|○ 이음동의어의 관리를 위해 정의된 표준용어의 구분을 ‘표준어’ 또는 ‘동의어’ 중에서 선택||
|       |- 이음동의어 중 해당 의미를 업무적으로 가장 적합하게 표현하는 대표적 용어로 선정된 경우 ‘표준어’로 기재||
|       |- 이음동의어 중 ‘표준어’로 선정된 용어는 아니나 법적 근거(법정서식 등)에 따라 표준어 사용이 어려운 경우 ‘동의어’로 기재||
|용어설명|○ 표준용어의 의미나 내용을 상세히 서술||
||○ 표준어, 동의어 이외에 금칙어를 제공할 경우 금칙어 목록을 포함하여 기재할 수 있으며, 1개 용어에 대하여 다수의 금칙어가 존재할 수 있으므로 별도의 관리항목으로 정의하여 사용 가능|(예시) ‘휴대폰’이 표준어로 정의된 경우, ‘핸드폰’, ‘모바일폰’ 등을 금칙어로 규정하여 표준용어로 사용하지 못하도록 할 수 있음  |
|연관어|○ 표준용어명과 연관 있는 등록되어 있는 표준용어명들을 기술 (동의어, 관련 용어명 작성)||
|도메인명|○ 도메인정의서에 정의된 용어의 경우, 해당 도메인 명을 기술 ||
|업무분야|○ 사전의 분야를 나누어 용어의 명확성을 높이기 위해 사전의 분류를 정함. ||
||○ 해당 테이블의 내용과 관련된 BRM 분류체계 기재||
||○ 용어가 많은 업무분야에서 일상적으로 사용되는 경우 ”공통영역“으로 기재, 그 외는 정부업무분류체계(BRM) 1단계 수준으로 분류하여 기재||

### 4.3 코드 정의서 명세 지침
|항목|항목 정의 및 작성 지침|예시|
|:----|:----|:----|
|코드그룹|○ 코드 표준을 정의한 그룹(시스템)|예) 공통, 수질, 조사 등|
|코드명|○ 코드 데이터의 한글명(논리명)||
|코드구조|○ 코드 값의 구조 체계(문자/숫자의 조합방법, 자리수, 자리위치별 의미)||
|코드설명|○ 코드 의미를 잘 이해할 수 있도록 관련 업무를 모르는 사용자 입장에서 기술||
|사용부서(기관)|○ 코드를 활용하는 부서 또는 기관|○ 코드를 활용하는 부서 또는 기관|
|코드값|○ 데이터베이스 내 실제 데이터 값|예) 지방코드 코드 값 : 44230|
|코드의미|○ 코드 값에 대한 의미|예) 지방코드 코드 값 44230의 코드 의미 : 논산시|
```
코드구조 예시
     A         00        000
  구분(1)  대분류(2)   중분류(3)
  
  A: 건축
  B: 토목
```

### 4.4 도메인 정의서 명세 지침
|항목|항목 정의 및 작성 지침|예시|
|:----|:----|:----|
|도메인명|○ 명명된 데이터 도메인의 이름||
|도메인 설명|○ 도메인에 의미에 대한 설명||
|데이터 타입|○ KS X ISO/IEC 9075-2:2011에 근거하여 제시된 아래 예시를 참조하여, 데이터 도메인을 표현하기 위한 데이터 타입을 기재|(예시) 문자형(고정길이)은 CHARACTER, CHAR 등으로 기재|
|||(예시) 문자형(가변길이)은 VARYING CHARACTER, VARCHAR 등으로 기재|
|||(예시) 문자형(대규모객체)은 CLOB, BLOB 등으로 기재|
|||(예시) 숫자형(정수)은 NUMERIC(또는 NUM), DECIMAL(또는 DEC), INTEGER(또는 INT), SMALLINT(또는 SINT) 등으로 기재|
|||(예시) 숫자형(실수)은 FLOAT, REAL, DOUBLE PRECISION 등으로 기재|
|||(예시) 시간형/날짜형은 DATE, TIME, DATETIME, TIMESTAMP 등으로 기재|
|데이터 길이|○ 도메인 값을 표현하기 위한 데이터의 최대 길이를 숫자로 표현||
||○ 모든 요구사항을 수용할 수 있도록 충분히 커야 하며, 정확성을 보장할 수 있을 만큼 정밀해야 함(최대 길이 지정이 의미 없는 도메인인 경우 생략 가능)||
||○ 데이터 값을 모두 수용할 수 있도록 최대 길이를 정의|(예: 10자리)|
||○ 날짜, 시각처럼 길이가 정해져 있는 경우, 최대 길이를 알 수 없거나, 최대 길이가 의미가 없는 경우 생략 가능||
|데이터 값|○ 해당 도메인이 가질 수 있는 허용 가능한 값의 집합이나 범위 ||
||- 기본(Default) 값 : 값이 입력되지 않는 경우에 적용되는 기본값||
||- 허용(Valid) 값 : 해당 도메인이 허용하는 값들의 종류|(예시) 1:남자, 2:여자|
||- 허용 범위(Range) 값 : 해당 도메인에 포함될 수 있는 범위값을 시작(from)과 종료(to)로 정의한 값|(예시) 10~20|
||- 최댓값/최솟값 : 해당 도메인이 허용하는 최솟값/최댓값|(예시) 최소:0/최대:100|
|측정단위|○ 값을 측정하는 단위의 이름을 기술 (예: m, kg, A, K, mol 등)||
|       |○ 도메인의 명확한 의미 이해를 위해 측정단위를 명시해야 하는 경우 반드시 기술||
|도메인 분류|○ 도메인 분류 (공공데이터 개방 표준)를 참조하여 도메인 분류를 기재 ||

### 4.5. 도메인 분류 예시
|도메인분류|NO|도메인명|설명|예시|
|:----:|:----:|:----:|:----|:----|
|시간|1|년   |일정한 기간으로서의 어느 한 해를 의미. YYYY로 표기   |2016   |
|시간|2|년월   |일정한 기간으로서의 어느 한 해와 달을 의미. YYYY-MM으로 표기   |2016-04   |
|시간|3|일자   |일정한 기간으로서의 어느 한 해와 달의 하루를 의미. YYYY-MM-DD로 표기   |2016-04-05   |
|시간|4|일시   |일자와 시간. YYYY-MM-DD HH24:MI로 표기   |2016-04-05 13:23  |
|..|..|..|..|..|
|주소|11|도로명주소|도로명과 건물번호로 표기한 주소|경상남도 창원시 의창구 대산면 주남로 575-10|
|주소|12|지번주소|토지의 번호로 표기한 주소|경상남도 창원시 의창구 대산면 가술리 323-4|
|..|..|..|..|..|
|연락처|15|전화번호|통신망을 통한 상호접속을 위하여 이용자에게 부여된 식별번호|02-111-2222, 1566-0025|
|연락처|16|이메일|인터넷에서 메일을 보낼 때 수신자의 주소||
|수량|17|수|셀 수 있는 사물을 세어서 나타낸 값 (개수, 대수, 인원수, 나이 등이 있으며 아라비아 숫자로 표기)|1|
|수량|18|빈도|어떤 일이 되풀이되어 일어나는 정도 (회수로 나타내며 아라비아 숫자로 표기)|5|
|..|..|..|..|..|
|금액|20|요금|서비스, 시설 등을 이용함에 따라 지불되는 금액. 콤마(,)없는 아라비아 숫자로 표기하며, 단위는 원 (사용료, 입장료, 주차요금 등)|3000|
|금액|21|수수료|어떤 일을 맡아 처리해 준 대가로 지불하는 금액, 단위는 원 (카드수수료, 부동산중개수수료 등)|4000|
|금액|22|비용|물건을 사거나 어떤 일을 하는 데 드는 금액, 단위는 원|20000|
|금액|23|가격|물건이 지니고 있는 교환 가치를 화폐의 단위로 나타낸 금액. 단위는 원|5000|
|..|..|..|..|..|


