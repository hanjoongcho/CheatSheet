# Unicode
Reference: [https://ko.wikipedia.org/wiki/%EC%9C%A0%EB%8B%88%EC%BD%94%EB%93%9C_%EC%98%81%EC%97%AD](https://ko.wikipedia.org/wiki/%EC%9C%A0%EB%8B%88%EC%BD%94%EB%93%9C_%EC%98%81%EC%97%AD)

## Code Block
| 영역범위 | 영역이름 |코드 포인트 | 할당된 문자 | Define |
|----------|-------|------------|----------------|-----|
| U+3040..U+309F| [Hiragana](#Hiragana) | 96         | 93               | O |
| U+30A0..U+30FF | [Katakana](#Katakana) | 96         | 96               | O |
| U+31F0..U+31FF | [Katakana Phonetic Extensions](#Katakana-Phonetic-Extensions) | 16         | 16               | O |
| U+3200..U+32FF | [Enclosed CJK Letters and Months](#Enclosed-CJK-Letters-and-Months) | 256         | 254               |
| U+3300..U+33FF | [CJK Compatibility](#CJK-Compatibility) | 256         | 256               |
| U+FF00..U+FFEF | [Halfwidth and Fullwidth Forms](#Halfwidth-and-Fullwidth-Forms) | 240         | 225               | O |
| U+1B000..U+1B0FF | [Kana Supplement](#Kana-Supplement) | 256         | 256               |

## Hiragana
> 히라가나 (89자), 일반 (2자), 상속 (2자) 
 
| 영역범위 | 영역이름 |코드 포인트 | 할당된 문자 |
|----------|-------|------------|----------------|
| U+3040..U+309F| Hiragana | 96         | 93               |

```javascript
let markdown = '|No|Code Point|Character|\r\n'
markdown +=  '|--|---|--|\r\n'
let sequence = 1
for (let i = 0x3040; i <= 0x309F; i++) { 
    markdown += '|' +  (sequence++) + '|U+' + i.toString(16).padStart(2, '0') + '| ' + String.fromCharCode(i) + '|\r\n' 
}
console.log(markdown)
```
|No|Code Point|Character|
|--|---|--|
|1|U+3040| ぀|
|2|U+3041| ぁ|
|3|U+3042| あ|
|4|U+3043| ぃ|
|5|U+3044| い|
|6|U+3045| ぅ|
|7|U+3046| う|
|8|U+3047| ぇ|
|9|U+3048| え|
|10|U+3049| ぉ|
|11|U+304a| お|
|12|U+304b| か|
|13|U+304c| が|
|14|U+304d| き|
|15|U+304e| ぎ|
|16|U+304f| く|
|17|U+3050| ぐ|
|18|U+3051| け|
|19|U+3052| げ|
|20|U+3053| こ|
|21|U+3054| ご|
|22|U+3055| さ|
|23|U+3056| ざ|
|24|U+3057| し|
|25|U+3058| じ|
|26|U+3059| す|
|27|U+305a| ず|
|28|U+305b| せ|
|29|U+305c| ぜ|
|30|U+305d| そ|
|31|U+305e| ぞ|
|32|U+305f| た|
|33|U+3060| だ|
|34|U+3061| ち|
|35|U+3062| ぢ|
|36|U+3063| っ|
|37|U+3064| つ|
|38|U+3065| づ|
|39|U+3066| て|
|40|U+3067| で|
|41|U+3068| と|
|42|U+3069| ど|
|43|U+306a| な|
|44|U+306b| に|
|45|U+306c| ぬ|
|46|U+306d| ね|
|47|U+306e| の|
|48|U+306f| は|
|49|U+3070| ば|
|50|U+3071| ぱ|
|51|U+3072| ひ|
|52|U+3073| び|
|53|U+3074| ぴ|
|54|U+3075| ふ|
|55|U+3076| ぶ|
|56|U+3077| ぷ|
|57|U+3078| へ|
|58|U+3079| べ|
|59|U+307a| ぺ|
|60|U+307b| ほ|
|61|U+307c| ぼ|
|62|U+307d| ぽ|
|63|U+307e| ま|
|64|U+307f| み|
|65|U+3080| む|
|66|U+3081| め|
|67|U+3082| も|
|68|U+3083| ゃ|
|69|U+3084| や|
|70|U+3085| ゅ|
|71|U+3086| ゆ|
|72|U+3087| ょ|
|73|U+3088| よ|
|74|U+3089| ら|
|75|U+308a| り|
|76|U+308b| る|
|77|U+308c| れ|
|78|U+308d| ろ|
|79|U+308e| ゎ|
|80|U+308f| わ|
|81|U+3090| ゐ|
|82|U+3091| ゑ|
|83|U+3092| を|
|84|U+3093| ん|
|85|U+3094| ゔ|
|86|U+3095| ゕ|
|87|U+3096| ゖ|
|88|U+3097| ゗|
|89|U+3098| ゘|
|90|U+3099| ゙|
|91|U+309a| ゚|
|92|U+309b| ゛|
|93|U+309c| ゜|
|94|U+309d| ゝ|
|95|U+309e| ゞ|
|96|U+309f| ゟ|


## Katakana
> 가타카나 (93자), 상속 (3자)  
| 영역범위 | 영역이름 |코드 포인트 | 할당된 문자 |
|----------|-------|------------|----------------|
| U+30A0..U+30FF | Katakana | 96         | 96               |

```javascript
let markdown = '|No|Code Point|Character|\r\n'
markdown +=  '|--|---|--|\r\n'
let sequence = 1
for (let i = 0x30A0; i <= 0x30FF; i++) { 
    markdown += '|' +  (sequence++) + '|U+' + i.toString(16).padStart(2, '0') + '| ' + String.fromCharCode(i) + '|\r\n' 
}
console.log(markdown)
```
|No|Code Point|Character|
|--|---|--|
|1|U+30a0| ゠|
|2|U+30a1| ァ|
|3|U+30a2| ア|
|4|U+30a3| ィ|
|5|U+30a4| イ|
|6|U+30a5| ゥ|
|7|U+30a6| ウ|
|8|U+30a7| ェ|
|9|U+30a8| エ|
|10|U+30a9| ォ|
|11|U+30aa| オ|
|12|U+30ab| カ|
|13|U+30ac| ガ|
|14|U+30ad| キ|
|15|U+30ae| ギ|
|16|U+30af| ク|
|17|U+30b0| グ|
|18|U+30b1| ケ|
|19|U+30b2| ゲ|
|20|U+30b3| コ|
|21|U+30b4| ゴ|
|22|U+30b5| サ|
|23|U+30b6| ザ|
|24|U+30b7| シ|
|25|U+30b8| ジ|
|26|U+30b9| ス|
|27|U+30ba| ズ|
|28|U+30bb| セ|
|29|U+30bc| ゼ|
|30|U+30bd| ソ|
|31|U+30be| ゾ|
|32|U+30bf| タ|
|33|U+30c0| ダ|
|34|U+30c1| チ|
|35|U+30c2| ヂ|
|36|U+30c3| ッ|
|37|U+30c4| ツ|
|38|U+30c5| ヅ|
|39|U+30c6| テ|
|40|U+30c7| デ|
|41|U+30c8| ト|
|42|U+30c9| ド|
|43|U+30ca| ナ|
|44|U+30cb| ニ|
|45|U+30cc| ヌ|
|46|U+30cd| ネ|
|47|U+30ce| ノ|
|48|U+30cf| ハ|
|49|U+30d0| バ|
|50|U+30d1| パ|
|51|U+30d2| ヒ|
|52|U+30d3| ビ|
|53|U+30d4| ピ|
|54|U+30d5| フ|
|55|U+30d6| ブ|
|56|U+30d7| プ|
|57|U+30d8| ヘ|
|58|U+30d9| ベ|
|59|U+30da| ペ|
|60|U+30db| ホ|
|61|U+30dc| ボ|
|62|U+30dd| ポ|
|63|U+30de| マ|
|64|U+30df| ミ|
|65|U+30e0| ム|
|66|U+30e1| メ|
|67|U+30e2| モ|
|68|U+30e3| ャ|
|69|U+30e4| ヤ|
|70|U+30e5| ュ|
|71|U+30e6| ユ|
|72|U+30e7| ョ|
|73|U+30e8| ヨ|
|74|U+30e9| ラ|
|75|U+30ea| リ|
|76|U+30eb| ル|
|77|U+30ec| レ|
|78|U+30ed| ロ|
|79|U+30ee| ヮ|
|80|U+30ef| ワ|
|81|U+30f0| ヰ|
|82|U+30f1| ヱ|
|83|U+30f2| ヲ|
|84|U+30f3| ン|
|85|U+30f4| ヴ|
|86|U+30f5| ヵ|
|87|U+30f6| ヶ|
|88|U+30f7| ヷ|
|89|U+30f8| ヸ|
|90|U+30f9| ヹ|
|91|U+30fa| ヺ|
|92|U+30fb| ・|
|93|U+30fc| ー|
|94|U+30fd| ヽ|
|95|U+30fe| ヾ|
|96|U+30ff| ヿ|

## Katakana Phonetic Extensions
> 가타카나 

| 영역범위 | 영역이름 |코드 포인트 | 할당된 문자 |
|----------|-------|------------|----------------|
| U+31F0..U+31FF | Katakana Phonetic Extensions | 16         | 16               |

```javascript
let markdown = '|No|Code Point|Character|\r\n'
markdown +=  '|--|---|--|\r\n'
let sequence = 1
for (let i = 0x31F0; i <= 0x31FF; i++) { 
    markdown += '|' +  (sequence++) + '|U+' + i.toString(16).padStart(2, '0') + '| ' + String.fromCharCode(i) + '|\r\n' 
}
console.log(markdown)
```

|No|Code Point|Character|
|--|---|--|
|1|U+31f0| ㇰ|
|2|U+31f1| ㇱ|
|3|U+31f2| ㇲ|
|4|U+31f3| ㇳ|
|5|U+31f4| ㇴ|
|6|U+31f5| ㇵ|
|7|U+31f6| ㇶ|
|8|U+31f7| ㇷ|
|9|U+31f8| ㇸ|
|10|U+31f9| ㇹ|
|11|U+31fa| ㇺ|
|12|U+31fb| ㇻ|
|13|U+31fc| ㇼ|
|14|U+31fd| ㇽ|
|15|U+31fe| ㇾ|
|16|U+31ff| ㇿ|

## Halfwidth and Fullwidth Forms
> 한글 (52자), 가타카나 (55자), 로마자 (52자), 일반 (66자)

| 영역범위 | 영역이름 |코드 포인트 | 할당된 문자 |
|----------|-------|------------|----------------|
| U+FF00..U+FFEF | [Halfwidth and Fullwidth Forms](#Halfwidth-and-Fullwidth-Forms) | 240         | 225               |

```javascript
let markdown = '|No|Code Point|Character|\r\n'
markdown +=  '|--|---|--|\r\n'
let sequence = 1
for (let i = 0xFF00; i <= 0xFFEF; i++) { 
    markdown += '|' +  (sequence++) + '|U+' + i.toString(16).padStart(2, '0') + '| ' + String.fromCharCode(i) + '|\r\n' 
}
console.log(markdown)
```
|No|Code Point|Character|
|--|---|--|
|1|U+ff00| ＀|
|2|U+ff01| ！|
|3|U+ff02| ＂|
|4|U+ff03| ＃|
|5|U+ff04| ＄|
|6|U+ff05| ％|
|7|U+ff06| ＆|
|8|U+ff07| ＇|
|9|U+ff08| （|
|10|U+ff09| ）|
|11|U+ff0a| ＊|
|12|U+ff0b| ＋|
|13|U+ff0c| ，|
|14|U+ff0d| －|
|15|U+ff0e| ．|
|16|U+ff0f| ／|
|17|U+ff10| ０|
|18|U+ff11| １|
|19|U+ff12| ２|
|20|U+ff13| ３|
|21|U+ff14| ４|
|22|U+ff15| ５|
|23|U+ff16| ６|
|24|U+ff17| ７|
|25|U+ff18| ８|
|26|U+ff19| ９|
|27|U+ff1a| ：|
|28|U+ff1b| ；|
|29|U+ff1c| ＜|
|30|U+ff1d| ＝|
|31|U+ff1e| ＞|
|32|U+ff1f| ？|
|33|U+ff20| ＠|
|34|U+ff21| Ａ|
|35|U+ff22| Ｂ|
|36|U+ff23| Ｃ|
|37|U+ff24| Ｄ|
|38|U+ff25| Ｅ|
|39|U+ff26| Ｆ|
|40|U+ff27| Ｇ|
|41|U+ff28| Ｈ|
|42|U+ff29| Ｉ|
|43|U+ff2a| Ｊ|
|44|U+ff2b| Ｋ|
|45|U+ff2c| Ｌ|
|46|U+ff2d| Ｍ|
|47|U+ff2e| Ｎ|
|48|U+ff2f| Ｏ|
|49|U+ff30| Ｐ|
|50|U+ff31| Ｑ|
|51|U+ff32| Ｒ|
|52|U+ff33| Ｓ|
|53|U+ff34| Ｔ|
|54|U+ff35| Ｕ|
|55|U+ff36| Ｖ|
|56|U+ff37| Ｗ|
|57|U+ff38| Ｘ|
|58|U+ff39| Ｙ|
|59|U+ff3a| Ｚ|
|60|U+ff3b| ［|
|61|U+ff3c| ＼|
|62|U+ff3d| ］|
|63|U+ff3e| ＾|
|64|U+ff3f| ＿|
|65|U+ff40| ｀|
|66|U+ff41| ａ|
|67|U+ff42| ｂ|
|68|U+ff43| ｃ|
|69|U+ff44| ｄ|
|70|U+ff45| ｅ|
|71|U+ff46| ｆ|
|72|U+ff47| ｇ|
|73|U+ff48| ｈ|
|74|U+ff49| ｉ|
|75|U+ff4a| ｊ|
|76|U+ff4b| ｋ|
|77|U+ff4c| ｌ|
|78|U+ff4d| ｍ|
|79|U+ff4e| ｎ|
|80|U+ff4f| ｏ|
|81|U+ff50| ｐ|
|82|U+ff51| ｑ|
|83|U+ff52| ｒ|
|84|U+ff53| ｓ|
|85|U+ff54| ｔ|
|86|U+ff55| ｕ|
|87|U+ff56| ｖ|
|88|U+ff57| ｗ|
|89|U+ff58| ｘ|
|90|U+ff59| ｙ|
|91|U+ff5a| ｚ|
|92|U+ff5b| ｛|
|93|U+ff5c| ｜|
|94|U+ff5d| ｝|
|95|U+ff5e| ～|
|96|U+ff5f| ｟|
|97|U+ff60| ｠|
|98|U+ff61| ｡|
|99|U+ff62| ｢|
|100|U+ff63| ｣|
|101|U+ff64| ､|
|102|U+ff65| ･|
|103|U+ff66| ｦ|
|104|U+ff67| ｧ|
|105|U+ff68| ｨ|
|106|U+ff69| ｩ|
|107|U+ff6a| ｪ|
|108|U+ff6b| ｫ|
|109|U+ff6c| ｬ|
|110|U+ff6d| ｭ|
|111|U+ff6e| ｮ|
|112|U+ff6f| ｯ|
|113|U+ff70| ｰ|
|114|U+ff71| ｱ|
|115|U+ff72| ｲ|
|116|U+ff73| ｳ|
|117|U+ff74| ｴ|
|118|U+ff75| ｵ|
|119|U+ff76| ｶ|
|120|U+ff77| ｷ|
|121|U+ff78| ｸ|
|122|U+ff79| ｹ|
|123|U+ff7a| ｺ|
|124|U+ff7b| ｻ|
|125|U+ff7c| ｼ|
|126|U+ff7d| ｽ|
|127|U+ff7e| ｾ|
|128|U+ff7f| ｿ|
|129|U+ff80| ﾀ|
|130|U+ff81| ﾁ|
|131|U+ff82| ﾂ|
|132|U+ff83| ﾃ|
|133|U+ff84| ﾄ|
|134|U+ff85| ﾅ|
|135|U+ff86| ﾆ|
|136|U+ff87| ﾇ|
|137|U+ff88| ﾈ|
|138|U+ff89| ﾉ|
|139|U+ff8a| ﾊ|
|140|U+ff8b| ﾋ|
|141|U+ff8c| ﾌ|
|142|U+ff8d| ﾍ|
|143|U+ff8e| ﾎ|
|144|U+ff8f| ﾏ|
|145|U+ff90| ﾐ|
|146|U+ff91| ﾑ|
|147|U+ff92| ﾒ|
|148|U+ff93| ﾓ|
|149|U+ff94| ﾔ|
|150|U+ff95| ﾕ|
|151|U+ff96| ﾖ|
|152|U+ff97| ﾗ|
|153|U+ff98| ﾘ|
|154|U+ff99| ﾙ|
|155|U+ff9a| ﾚ|
|156|U+ff9b| ﾛ|
|157|U+ff9c| ﾜ|
|158|U+ff9d| ﾝ|
|159|U+ff9e| ﾞ|
|160|U+ff9f| ﾟ|
|161|U+ffa0| ﾠ|
|162|U+ffa1| ﾡ|
|163|U+ffa2| ﾢ|
|164|U+ffa3| ﾣ|
|165|U+ffa4| ﾤ|
|166|U+ffa5| ﾥ|
|167|U+ffa6| ﾦ|
|168|U+ffa7| ﾧ|
|169|U+ffa8| ﾨ|
|170|U+ffa9| ﾩ|
|171|U+ffaa| ﾪ|
|172|U+ffab| ﾫ|
|173|U+ffac| ﾬ|
|174|U+ffad| ﾭ|
|175|U+ffae| ﾮ|
|176|U+ffaf| ﾯ|
|177|U+ffb0| ﾰ|
|178|U+ffb1| ﾱ|
|179|U+ffb2| ﾲ|
|180|U+ffb3| ﾳ|
|181|U+ffb4| ﾴ|
|182|U+ffb5| ﾵ|
|183|U+ffb6| ﾶ|
|184|U+ffb7| ﾷ|
|185|U+ffb8| ﾸ|
|186|U+ffb9| ﾹ|
|187|U+ffba| ﾺ|
|188|U+ffbb| ﾻ|
|189|U+ffbc| ﾼ|
|190|U+ffbd| ﾽ|
|191|U+ffbe| ﾾ|
|192|U+ffbf| ﾿|
|193|U+ffc0| ￀|
|194|U+ffc1| ￁|
|195|U+ffc2| ￂ|
|196|U+ffc3| ￃ|
|197|U+ffc4| ￄ|
|198|U+ffc5| ￅ|
|199|U+ffc6| ￆ|
|200|U+ffc7| ￇ|
|201|U+ffc8| ￈|
|202|U+ffc9| ￉|
|203|U+ffca| ￊ|
|204|U+ffcb| ￋ|
|205|U+ffcc| ￌ|
|206|U+ffcd| ￍ|
|207|U+ffce| ￎ|
|208|U+ffcf| ￏ|
|209|U+ffd0| ￐|
|210|U+ffd1| ￑|
|211|U+ffd2| ￒ|
|212|U+ffd3| ￓ|
|213|U+ffd4| ￔ|
|214|U+ffd5| ￕ|
|215|U+ffd6| ￖ|
|216|U+ffd7| ￗ|
|217|U+ffd8| ￘|
|218|U+ffd9| ￙|
|219|U+ffda| ￚ|
|220|U+ffdb| ￛ|
|221|U+ffdc| ￜ|
|222|U+ffdd| ￝|
|223|U+ffde| ￞|
|224|U+ffdf| ￟|
|225|U+ffe0| ￠|
|226|U+ffe1| ￡|
|227|U+ffe2| ￢|
|228|U+ffe3| ￣|
|229|U+ffe4| ￤|
|230|U+ffe5| ￥|
|231|U+ffe6| ￦|
|232|U+ffe7| ￧|
|233|U+ffe8| ￨|
|234|U+ffe9| ￩|
|235|U+ffea| ￪|
|236|U+ffeb| ￫|
|237|U+ffec| ￬|
|238|U+ffed| ￭|
|239|U+ffee| ￮|
|240|U+ffef| ￯|
