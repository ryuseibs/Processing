//[実装検証]
//1:時間を取得する（とりあえず、リアルタイム時間で）
//2:時間を出力させる（出力形式は、年：月：日：時：分：秒：ミリ秒）

//[補足]
//Voidは必要であること→繰り返しの処理を行うために必要なこと。
//Voidなければ、１つのデータの取得で終わる。
//textメソッドはデフォルトでは左詰めに表示されるので、textAlignメソッドで左右中央詰めとして変更できる
//※textAlignはx、y座標両方対応できる。片方でもOK

void setup() {
size(1000,100);
background(0);
textSize(50);
fill(255);
}

void draw(){
background(0);

//[補足]
//    Processingの millis() はプログラム開始からの経過時間。
//    システム全体のリアルタイム時刻（1970/01/01からの経過ミリ秒）は
//    Javaの System.currentTimeMillis() で取得します。

long realTimeMillis = System.currentTimeMillis();

//[補足]
//    一般的な時刻表示で「ミリ秒」は秒の小数点以下3桁（000-999）を指します。
//    System.currentTimeMillis() を1000で割った余りを取得し、3桁でゼロ埋めします。
//    もし秒の100分の1の位（00-99）を表示したい場合は、100で割った余りを使います。
//    ただし、これは一般的な時刻表示のミリ秒とは異なる場合があるので注意が必要です。
//    Processingの nf() 関数は long 型の数値に直接は対応していません。
//    System.currentTimeMillis() のような大きな long 値を整形するには、
//    Javaの String.format() を使用するのが適切です。
//    ミリ秒を含めた日付や時刻全体を特定の形式で表示したい場合は、
//    Javaの SimpleDateFormat クラスを使うのが最も柔軟で強力です。
//    例: new SimpleDateFormat("yyyy/MM/dd HH:mm:ss.SSS").format(new Date(realTimeMillis));

String timeString = nf(year(),2) + ":" + nf(month(),2) + ":" + nf(day(),2) + ":" +nf(hour(),2) + ":" + nf(minute(),2) + ":" + nf(second(),2) + ":" + String.format("%02d", realTimeMillis % 100);

textAlign(CENTER,CENTER);
text(timeString, width/2, height/2);
}
