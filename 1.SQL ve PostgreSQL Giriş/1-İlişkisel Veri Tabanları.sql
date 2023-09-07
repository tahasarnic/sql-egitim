/*markdown
<img src="../imgs/31.sql.png">
*/

/*markdown
# İlişkisel Veri Tabanları
*/

/*markdown
Günümüzde ilişkisel veri tabanları, veri odaklı alanlar başta olmak üzere web sitesi ve mobil/web aplikasyonları geliştirme gibi alanlarda da önemli ve kritik bir rol oynamaktadır. Veri tabanları başlıca aşağıdaki yaklaşımları sunarlar:
*/

/*markdown
* Verileri yapısallaştırma
* Verileri depolama
* Verileri yönetme
*/

/*markdown
İlişkisel veri tabanlarının veri analitiğindeki önemli noktaları ise aşağıda listelenmiştir:
*/

/*markdown
1. **Veri Yapısının Korunması**: İlişkisel veri tabanları, verilerin belirli bir yapıya sahip olmasını sağlar. Bu yapı, verilerin düzenli ve tutarlı olmasını garanti eder. Bu, veri analitiği süreçlerinde verilerin doğru ve güvenilir olmasını sağlar.
2. **Veri Bütünlüğü**: İlişkisel veri tabanları, veri bütünlüğünü korumak için bir dizi kısıtlama ve ilişki sağlar. Bu, veri analitiği sırasında veriler arasındaki ilişkileri doğru bir şekilde yorumlayabilmeyi ve veri bütünlüğünü sürdürebilmeyi kolaylaştırır.
3. **Performans ve Ölçeklenebilirlik**: İlişkisel veri tabanları, büyük veri kümelerini hızlı bir şekilde sorgulayabilir ve analiz edebilir. Bu, veri analitiği uygulamalarının performansını artırır ve işletmelerin büyüdükçe veritabanlarını kolayca ölçeklendirmelerine olanak tanır.
4. **Veri Güvenliği**: İlişkisel veri tabanları, verilerin güvenliğini sağlamak için gelişmiş erişim kontrolü ve yetkilendirme özellikleri sunar. Bu da hassas verilerin korunmasını ve veri analitiği sırasında gizliliğin sağlanmasını destekler.
5. **Veri İşleme ve Analiz İçin Araçlar**: Birçok analitik ve iş zekası aracı, ilişkisel veri tabanlarına doğrudan erişim sağlar. Bu, veri analitiği projelerini hızlandırır ve veri bilimcilerinin ve analistlerinin verileri daha etkili bir şekilde incelemelerine yardımcı olur.
6. **SQL Dili**: İlişkisel veri tabanlarını yönetmek ve verileri sorgulamak için SQL (Structured Query Language) kullanılır. Bu dil, veri analitiği uzmanlarının verilere erişmelerini, sorgulamalarını ve analiz etmelerini sağlayan güçlü bir araçtır.
*/

/*markdown
Yukarıda belirtilen **ilk 4 madde,  uzman veri tabanı yöneticilerinin** daha çok alanına giren başlıklar olurken, **5. ve 6. maddeyi kapsayan SQL dilini kullanarak verileri işleme ve analiz etme ise veri odaklı çalışan veri analistleri, veri bilimcileri ve veri mühendislerini** ilgilendirmektedir. 
*/

/*markdown
Günümüzde veriler birçok farklı formatta üretilip karşımıza çıkmaktadır. İlişkisel veri tabanlarında verileri tutmanın en büyük avantajı, verilerin analiz edilebilir bir formatta tablolar halinde "ilişkisel" bir şekilde saklanabilmesidir 👇🏻
*/

/*markdown
<img src="../imgs/33.relational.png">
*/

/*markdown
Farklı veri depolama dosyalarından direkt olarak verilerin analiz edilebilmesi bazı dosya türleri için mümkünken (.xlsx formatındaki excel dosyası) dosyalar arasında ilişkisellik kurabilmek oldukça zaman alıcı ve meşakkatli bir iştir. Diğer yandan verileri birbirleriyle ilişkili olacak şekilde tablolar halinde veri tabanlarında saklamak, analitik ve veri odaklı çalışmaların daha efektif bir şekilde yapılabilmesini sağlamaktadır. 
*/

/*markdown
Farklı kaynaklardan üretilip farklı formatlarda bulunan verileri analiz edilebilir bir formata getiren alana günümüzde **"Veri Mühendisliği/Data Engineering"** denilmektedir. Yukarıda resmedilen sürece bu alanda **"ETL (Extract-Transform-Load)"** denilip, ilgili konu bu eğitim kapsamı dışındadır.
*/

/*markdown
Konuyla ilgili detaylı bilgi için 👉 https://www.ibm.com/topics/etl
*/

/*markdown
Tavsiye edilen kurslar:
*/

/*markdown
* https://www.coursera.org/professional-certificates/ibm-data-engineer
* https://www.datacamp.com/data-courses/data-engineering-courses
*/

/*markdown
# Nedir Bu Veri Tabanları?
*/

/*markdown
Excel dosyaları ile çalışabilecekken neden verileri veri tabanlarında depoluyoruz?
*/

/*markdown
<img src="../imgs/35.sql-vs-excel.png">
*/

/*markdown
/*markdown
Verileri depolamada ve yönetmede en etkili yöntemin veri tabanları olduğunu yukarıdaki resimde görebiliyoruz. Diğer taraftan Excel ise küçük ve ilişkisel olmayan veri setlerinde veri analitiği yapmak için oldukça güçlü araçlardan biridir.
*/

/*markdown
Peki veri tabanları oluşturmak için hangi aracı kullanmalıyız?
*/
*/

/*markdown
<img src="../imgs/36.rdbms.png">
*/

/*markdown
/*markdown
Yukarıdaki görselde belirtilen popüler veri tabanı yönetim sistemleri haricinde birçok farklı veri tabanı yönetim sistemi mevcuttur. Fakat hepsinin temel amacı verilerin depolanması ve yönetilmesi olarak aynıdır. Aynı zamanda hepsi ortak bir sorgulama dili olan SQL kullanır. Sorgulama dilinde çok küçük farklılıklar olsa da, temel sentaks yapısı (kod yapısı) ve çalışma mantığı aynıdır.
*/

/*markdown
Hangi RDBMS kullanmamız gerektiği ise:
*/

/*markdown
* Açık kaynak/ücretli
* Geliştirilen uygulama/web sitesi ile optimize çalışma 
* İşletim sistemi
* Donanım
* Kişisel tercih
*/

/*markdown
gibi birçok farklı faktöre dayanmaktadır. Detaylı bilgi için 👇🏻
* https://www.g2.com/categories/relational-databases
* https://www.integrate.io/blog/which-database/
*/

/*markdown

Bu eğitim kapsamında ise en popüler **açık kaynak ilişkisel veri tabanı yönetim sistemlerinden** biri olan **PostgreSQL** kullanacağız.
*/
*/

/*markdown
# Elimde Çok Büyük Bir Veri Var Ne Yapmalıyım?
*/

/*markdown
/*markdown
Bir önceki görselde veri tabanlarının, aynı anda birden fazla kullanıcının verilere erişebilmesini desteklediğinden bahsetmiştik. Bu durumda veri tabanının kurulu olduğu bilgisayarın (makinenin) başka kullanıcılar için de bir sunucu (server) görevi görebildiğini söyleyebiliriz. Böylece depolanacak veri boyutunun ve sorguların dönme hızının ilgili veri tabanının kurulu olduğu makineye bağlı olduğunu da söyleyebiliriz.
*/

/*markdown
Eğer büyük verilerle çalışıyorsak ve çalıştığımız bilgisayarın donanımsal kapasitesi verilerin depolanmasına yetmiyorsa ve sorgular yavaş çalışıyorsa, bir makine kiralamayı deneyebiliriz. Peki bu makineyi nereden mi kiralayacağız? Bulut-tabanlı teknolojiler bu konuda bizlere destek olabilir. Popüler bazı bulut-tabanlı ilişkisel veri tabanı yönetim sistemleri 👇🏻
*/
*/

/*markdown
<img src="../imgs/37.cloud.png">
*/

/*markdown
/*markdown
Büyük verilerin işlenmesi, depolanması ve yönetilmesi ise **"Büyük Veri Mühendisliği"** alanına girmektedir. 
*/

/*markdown
Tavsiye edilen kurslar:
*/

/*markdown
* https://www.coursera.org/specializations/big-data
* https://www.coursera.org/specializations/gcp-data-machine-learning#courses
*/
*/

/*markdown
***
*/

/*markdown
<img src="../imgs/34.relational-ozet.png">
*/

/*markdown
Veri tabanları oluşturma, veri tabanları içerisinde yapılandırılmış tablolar saklama ve bu tablolarda sorgulamalar yapabilmemizi sağlayacak dil olan SQL (Structured Query Language) ile devam edelim 🚀
*/