# SQL Eğitim Programı

Bu program aşağıdaki yetkinlikleri kazandırmayı hedeflemektedir:

* İlişkisel veri tabanlarına bağlanma
* Farklı formatlarda bulunan dosyalardan ilişkisel yapılandırılmış veri tabanları oluşturma
* Veri manipülasyonu: farklı veri tiplerini analiz edilebilir hale getirme
* Temel tablo sorgulama yaklaşımları
* İleri seviye tablo sorgulama yaklaşımları
* Veri analitiği sorguları
* Veri analitiği için sanal tablolar oluşturma
* Sanal tabloları bir BI platformuna bağlama ve interaktif dashboard oluşturma

Konular, uygulamalarıyla birlikte senaryolar üzerinden aktarılacaktır. Bu kapsamda, aşağıdaki araçlar kullanılacaktır:

# 1) VSCode

<center><img src="imgs/0.vscode.png" style="width:50%;height:250px;"></center>

Buradan işletim sistemimize uygun VSCode entegre geliştirme ortamımızı indirebiliriz 👉 [İndirme linki](https://code.visualstudio.com/download)

Varsayılan ayarlarla VSCode yüklememizi yapabiliriz. İlgili yükleme tamamlandıktan sonra VSCode masaüstü uygulamamızı açıp aşağıdaki gibi ana ekran görüntüsünü görebiliyorsak, VSCode kullanımına hazırız demektir 👇🏻

![Alt text](imgs/1.vscode-anaekran.png)

# 2) PostgreSQL

<center><img src="imgs/2.postgre.png" style="width:50%;height:300px;"></center>

Buradan işletim sistemimize uygun en güncel PostgreSQL veri tabanı yönetimi sisteminizi indirebiliriz 👉 [İndirme linki](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads)

İndirme bittikten sonra kurulumu aşağıdaki adımları uygulayarak gerçekleştirebiliriz 👇🏻

* İndirmiş olduğumuz kurulumu yapacak olan uygulamayı açalım
* Next butonuna tıklayalım
  
![Alt text](imgs/3.postgre-next.png)

* Kurulumun yapılacağı konumu özellikle değiştirmek istemiyorsak "Next" butonuna tıkalyalım

![Alt text](imgs/4.postgre-path.png)

* Eğitim programımız için gerekli olmasa da, ileride bir aplikasyon ya da proje geliştirilmek istedendiğinde yardımcı bileşen uygulamalara ihtiyaç olabilir. Her ihtimale karşı bileşen uygulamaları da indirmek için hepsini seçip "Next" butonuna tıklayalım

![Alt text](imgs/5.postgre-components.png)

* Verilerin depolanacağı konumu özellikle değiştirmek istemiyorsak "Next" butonuna tıklayalım

![Alt text](imgs/6.postgre-data-path.png)

* En yetkili kullanıcı (Superuser)(postgres) olarak bir şifre belirleyip "Next" butonuna tıklayalım (**Not**: Bu şifreyi unutmamanız oldukça önemlidir.)

![Alt text](imgs/7.postgres-superuser-pw.png)

* Veri tabanları bir nevi veri alışverişi yapabilen sunucular olduklarından, ağ üzerinden veri tabanlarına bağlantı sağlayabilmek için bir Port numarası belirlemek gerekir. PostgreSQL 5432 Port numarasını dinleyen bir veri tabanı sistemi olduğundan bu numarayı varsayılan olarak bırakıp "Next" butonuna tıklayabiliriz

![Alt text](imgs/8.postgres-port.png)

* Zaman dilimi ve bilgisayarımızın bulunduğu varsayılan bölgeyi belirleyebilmek için bir sonraki sayfada varsayılan ayarda bırakıp "Next" butonuna tıklayabiliriz

![Alt text](imgs/9.postgres-locale.png)

* Kurulum özetini inceleyip "Next" butonuna tıklayalım

![Alt text](imgs/10.postgres-summary.png)

* Yine "Next" butonuna tıklayara kurulumumuzu başlatalım

![Alt text](imgs/11.postgres-install-start.png)

* Şimdilik "Stack Builder" uygulamasını açmamız gerekmediğinden tiki kaldırıp "Finish" butonuna tıklayarak, kurulumumuzu tamamlayalım

![Alt text](imgs/12.postgres-finish.png)

* Bilgisayarımıza PostgreSQL veri tabanı yönetimi sunucusunu doğru bir şekilde yüklediğimizi test etmek için kurulumla birlikte yüklenen "SQL Shell (psql)" uygulamasını açalım. Bu bir komut istemi/terminal açacaktır.

![Alt text](imgs/13.postgres-psql.png)

* Açılan komut istemi/terminal ekranında, Superuser için oluşturduğumuz şifreyi girme kısmı gelene kadar "Enter" tuşuna basalım. Kurulum sırasında belirlediğiniz şifreyi girip "Enter" tuşuna baştıktan sonra aşağıdaki durum ile karşılaşacaksınız

![Alt text](imgs/14.postgres-check.png)

* Kurulumu doğru bir şekilde yapmışız gibi gözüküyor. Tam emin olmak adına bir psql komut istemi/terminal komutu deneyelim. Mevcut ekranda "\l" komutunu yazıp "Enter" tuşlayalım. Aşağıdaki gibi mevcut veri tabanları ve bilgilerini gösteren bir çıktı göreceksiniz.

![Alt text](imgs/15.postgres-psql-check.png)

PostgreSQL veri tabanı sunucusu kurulumumuz hazır. VSCode içerisinde PostreSQL ile ilgili eklentileri yükleme kısmına geçelim.

# 3) VSCode Eklentisi: Database Client

* VSCode masaüstü uygulamamızı açıp, eklentiler bölümüne tıklayalım

![Alt text](imgs/16.vscode-ext.png)

* Arama yerine "Database Client" yazıp, ilk eklentiyi indirelim

![Alt text](imgs/17.db-client.png)

* İndirdiğimiz eklenti navigasyon barımıza eklenecektir. "Database client" eklentimiz doğru bir şekilde çalışıyor mu test edelim. Öncelikle eklentiye tıkladıktan sonra "Create Connection" butonuna tıklayalım

![Alt text](imgs/18.db-client-click.png)

* PostgreSQL sekmesini seçip, kurulum yaparken "postgres" Superuser için belirlediğimiz şifreyi "Password" alanına girdikten sonra "Connect" butonuna tıklayalım

![Alt text](imgs/19.db-client-connect.png)

* Aşağıdaki görseldeki gibi sol üstte "postgres" veri tabanını görebiliyorsak. Eklenti kurulumunu doğru bir şekilde yapıp, bağlantıyı doğru bir şekilde sağlayabilmişiz demektir

![Alt text](imgs/20.db-client-postgres.png)

# 4) VSCode Eklentisi: SQL Notebook

SQL Notebook eklentisi, içerisine "Markdown" kodu ile birlikte "SQL" sorguları da yazabildiğimiz bir yapı sağlar. Böylelikle sorguların çıktılarını hemen sorgu altında görebilir, "Markdown" kodu yazabilmemiz sayesinde ise çıktılarımızı bir rapora dönüştürebiliriz.

* VSCode masaüstü uygulamamızı açıp, eklentiler bölümüne tıklayalım

![Alt text](imgs/16.vscode-ext.png)

* Arama yerine "SQL Notebook" yazıp, ilk eklentiyi indirelim

![Alt text](imgs/21.sql-notebook.png)

* Eklentimiz hatasız çalışıyor mu test edelim. Eklentiye gidip, PostgreSQL sunucumuza bağlanalım. İlgili bilgilerimizi girdikten sonra, "Create" butonuna tıklayalım

![Alt text](imgs/22.sql-notebook-config.png)

* "SQL CONNECTIONS" sekmesine tıklayalım

![Alt text](imgs/23.sql-connections-sekme.png)

* postgres sekmesine sağ tıklayıp "Connect to Database" butonuna tıklayalım. postgres yazısı yanında "Connected" yazısını görüyorsak bağlantı başarılı bir şekilde sağlanmış demektir.

![Alt text](imgs/24.sql-connections-connect.png)

* Eklentimizin gerektiği gibi çalışıp çalışmadığını test edelim. Explorer sekmesinden yeni bir script dosyası oluşturalım. Dosyamızın ismi "deneme.sql" olsun. Burada "SQL Notebook" eklentisini kullanabilmemiz için script isimlerinin ".sql" uzantısıyla bitmesi önemlidir. 

![Alt text](imgs/25.vscode-create-file.png)

![Alt text](imgs/26.vscode-deneme-sql.png)

* Oluşturduğumuz script dosyasına sağ tıkladıktan sonra "Open With..." butonuna tıklayalım

![Alt text](imgs/27.vscode-open-with.png)

* Çıkan listede "SQL Notebook" seçelim

![Alt text](imgs/28.vscode-sql-notebook-select.png)

* İlgili scripte "Markdown" kod bloğu ekleyip, herhangi bir yazı yazalım

![Alt text](imgs/29.vscode-sql-notebook-markdown.png)

* İlgili scripte "SQL" kod bloğu ekleyip, bağlı olduğumuz sunucuyla ilgili bir SQL kodu yazalım

![Alt text](imgs/30.vscode-sql-notebook-code.png)
---

Artık eğitime hazırız 🚀





