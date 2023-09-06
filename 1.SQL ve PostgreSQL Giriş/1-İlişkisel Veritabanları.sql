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
*/